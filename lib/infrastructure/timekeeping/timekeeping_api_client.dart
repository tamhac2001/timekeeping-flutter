import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:timekeeping/infrastructure/timekeeping/i_timekeeping_api_client.dart';

import '../../constants.dart';
import 'dto/qr_code_dto.dart';
import 'dto/timekeeping_dto.dart';

class TimekeepingApiClient implements ITimekeepingApiClient {
  // static const _uri = 'https://lazy-taxis-rhyme-115-75-181-199.loca.lt/timekeepings';
  static const _uri = '$apiEndPoint/timekeepings';

  final httpClient = http.Client();

  @override
  Future<TimekeepingDto> fetchDataToday({required String accessToken, required String employeeId}) async {
    final today = DateTime.now();
    final url = Uri.parse('$_uri/$employeeId?y=${today.year}&m=${today.month}&d=${today.day}');
    final response = await httpClient.get(
      url,
      headers: {
        'Authorization': 'Bearer $accessToken',
      },
    ).timeout(const Duration(seconds: 3), onTimeout: () => throw TimekeepingException.serverError());
    if (response.statusCode == HttpStatus.internalServerError || response.statusCode == HttpStatus.notFound) {
      throw TimekeepingException.serverError();
    } else if (response.statusCode == HttpStatus.unauthorized) {
      throw TimekeepingException.unauthenticated();
    } else if (response.statusCode == HttpStatus.forbidden && response.reasonPhrase == 'no-timekeeping-found') {
      throw TimekeepingException.timekeepingNotFound();
    }
    return TimekeepingDto.fromJson(jsonDecode(response.body));
  }

  @override
  Future<List<TimekeepingDto>> fetchDataByMonth(
      {required String accessToken, required String employeeId, required int year, required int month}) async {
    final url = Uri.parse('$_uri/$employeeId?y=$year&m=$month');
    final response = await httpClient.get(
      url,
      headers: {
        'Authorization': 'Bearer $accessToken',
      },
    ).timeout(const Duration(seconds: 3), onTimeout: () => throw TimekeepingException.serverError());
    if (response.statusCode == HttpStatus.internalServerError || response.statusCode == HttpStatus.notFound) {
      throw TimekeepingException.serverError();
    } else if (response.statusCode == HttpStatus.unauthorized) {
      throw TimekeepingException.unauthenticated();
    } else if (response.statusCode == HttpStatus.forbidden && response.reasonPhrase == 'no-timekeeping-found') {
      throw TimekeepingException.timekeepingNotFound();
    }
    List<TimekeepingDto> timekeepingByMonth =
        (jsonDecode(response.body) as List<dynamic>).map((json) => TimekeepingDto.fromJson(json)).toList();
    return timekeepingByMonth;
  }

  @override
  Future<void> qrCheck({
    required String accessToken,
    required String employeeId,
    required QrCodeDto qrCodeDto,
  }) async {
    final url = Uri.parse('$_uri/$employeeId');
    debugPrint(qrCodeDto.toString());
    final response = await httpClient
        .post(
          url,
          headers: {
            'Authorization': 'Bearer $accessToken',
          },
          body: qrCodeDto.toJson(),
        )
        .timeout(const Duration(seconds: 3), onTimeout: () => throw TimekeepingException.serverError());
    if (response.statusCode == HttpStatus.internalServerError || response.statusCode == HttpStatus.notFound) {
      throw TimekeepingException.serverError();
    }
    if (response.statusCode == HttpStatus.unauthorized) {
      throw TimekeepingException.unauthenticated();
    }
    if (response.statusCode == HttpStatus.forbidden || response.reasonPhrase == 'qrcode-not-matched') {
      throw TimekeepingException.qrCodeNotMatched();
    }
  }
}

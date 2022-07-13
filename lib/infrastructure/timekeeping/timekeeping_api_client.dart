import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../constants.dart';
import '../../domain/timekeeping/timekeeping_failure.dart';
import 'dto/qr_code_dto.dart';
import 'dto/timekeeping_dto.dart';
import 'i_timekeeping_api_client.dart';

class TimekeepingApiClient implements ITimekeepingApiClient {
  static const _uri = '$apiEndPoint/timekeepings';

  final httpClient = http.Client();

  @override
  Future<TimekeepingDto> fetchTimekeepingToday({required String accessToken, required String employeeId}) async {
    final today = DateTime.now();
    final url = Uri.parse('$_uri/$employeeId?y=${today.year}&m=${today.month}&d=${today.day}');
    try {
      final response = await httpClient.get(
        url,
        headers: {
          'Authorization': 'Bearer $accessToken',
        },
      ).timeout(const Duration(seconds: 3), onTimeout: () => throw const TimekeepingFailure.serverError());
      if (response.statusCode == HttpStatus.internalServerError || response.statusCode == HttpStatus.notFound) {
        throw const TimekeepingFailure.serverError();
      } else if (response.statusCode == HttpStatus.unauthorized) {
        throw const TimekeepingFailure.unAuthenticated();
      } else if (response.statusCode == HttpStatus.forbidden) {
        throw const TimekeepingFailure.timekeepingNotFound();
      }
      return TimekeepingDto.fromJson(jsonDecode(response.body));
    } on SocketException catch (e) {
      throw const TimekeepingFailure.noInternetAccess();
    }
  }

  @override
  Future<List<TimekeepingDto>> fetchTimekeepingByMonth(
      {required String accessToken, required String employeeId, required int year, required int month}) async {
    final url = Uri.parse('$_uri/$employeeId?y=$year&m=$month');
    try {
      final response = await httpClient.get(
        url,
        headers: {
          'Authorization': 'Bearer $accessToken',
        },
      ).timeout(const Duration(seconds: 3), onTimeout: () => throw const TimekeepingFailure.serverError());
      if (response.statusCode == HttpStatus.internalServerError || response.statusCode == HttpStatus.notFound) {
        throw const TimekeepingFailure.serverError();
      } else if (response.statusCode == HttpStatus.unauthorized) {
        throw const TimekeepingFailure.unAuthenticated();
      } else if (response.statusCode == HttpStatus.forbidden && response.reasonPhrase == 'no-timekeeping-found') {
        throw const TimekeepingFailure.timekeepingNotFound();
      }
      List<TimekeepingDto> timekeepingByMonth =
          (jsonDecode(response.body) as List<dynamic>).map((json) => TimekeepingDto.fromJson(json)).toList();
      return timekeepingByMonth;
    } on SocketException catch (e) {
      throw const TimekeepingFailure.noInternetAccess();
    }
  }

  @override
  Future<void> qrCheck({
    required String accessToken,
    required String employeeId,
    required QrCodeDto qrCodeDto,
  }) async {
    final url = Uri.parse('$_uri/$employeeId/check');
    debugPrint(qrCodeDto.toString());
    httpClient
        .post(
          url,
          headers: {
            'Authorization': 'Bearer $accessToken',
          },
          body: qrCodeDto.toJson(),
        )
        .timeout(const Duration(seconds: 3), onTimeout: () => throw const TimekeepingFailure.serverError())
        .then((response) {
      if (response.statusCode == HttpStatus.internalServerError || response.statusCode == HttpStatus.notFound) {
        throw const TimekeepingFailure.serverError();
      }
      if (response.statusCode == HttpStatus.unauthorized) {
        throw const TimekeepingFailure.unAuthenticated();
      }
      if (response.statusCode == HttpStatus.forbidden || response.reasonPhrase == 'qrcode-not-matched') {
        throw const TimekeepingFailure.qrCodeNotMatch();
      }
    }).catchError((e) {
      throw const TimekeepingFailure.noInternetAccess();
    }, test: (e) => e is SocketException);
  }
}

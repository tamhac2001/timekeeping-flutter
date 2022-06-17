import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:timekeeping/infrastructure/timekeeping/i_timekeeping_api_client.dart';

import 'dto/timekeeping_dto.dart';

class TimekeepingApiClient implements ITimekeepingApiClient {
  static const _uri =
      'https://lazy-taxis-rhyme-115-75-181-199.loca.lt/timekeepings';

  final httpClient = http.Client();

  @override
  Future<void> qrCheck({
    required String accessToken,
    required String employeeId,
    required TimekeepingDto dto,
  }) async {
    final url = Uri.parse('$_uri/$employeeId');
    debugPrint(dto.toString());
    final response = await httpClient
        .post(
          url,
          headers: {
            'Authorization': 'Bearer $accessToken',
          },
          body: dto.toJson(),
        )
        .timeout(const Duration(seconds: 3),
            onTimeout: () => throw TimekeepingException.serverError());
    if (response.statusCode == HttpStatus.internalServerError ||
        response.statusCode == HttpStatus.notFound) {
      throw TimekeepingException.serverError();
    }
    if (response.statusCode == HttpStatus.unauthorized) {
      throw TimekeepingException.unauthenticated();
    }
    if (response.statusCode == HttpStatus.forbidden ||
        response.reasonPhrase == 'qrcode-not-matched') {
      throw TimekeepingException.qrCodeNotMatched();
    }
  }
}

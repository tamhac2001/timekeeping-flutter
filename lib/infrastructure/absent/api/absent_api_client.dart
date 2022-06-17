import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:timekeeping/infrastructure/absent/api/i_absent_api_client.dart';
import 'package:timekeeping/infrastructure/absent/dto/absent_form_dto.dart';

class AbsentApiClient extends IAbsentApiClient {
  static const _uri = 'https://curvy-guests-sit-115-75-181-199.loca.lt/absents';

  final httpClient = http.Client();

  @override
  Future<void> createAbsentForm({
    required String accessToken,
    required String employeeId,
    required AbsentFormDto dto,
  }) async {
    final url = Uri.parse('$_uri/$employeeId/create');
    debugPrint(
        '${dto.startDate.toIso8601String()} ${dto.endDate.toIso8601String()}');
    final response = await httpClient
        .post(
      url,
      headers: {
        'Authorization': 'Bearer $accessToken',
      },
      body: dto.toJson(),
    )
        .timeout(const Duration(seconds: 3), onTimeout: () {
      throw AbsentFormException.serverError();
    });
    if (response.statusCode == HttpStatus.internalServerError ||
        response.statusCode == HttpStatus.notFound) {
      throw AbsentFormException.serverError();
    } else if (response.statusCode == HttpStatus.unauthorized) {
      throw AbsentFormException.unAuthenticated();
    }
  }
}

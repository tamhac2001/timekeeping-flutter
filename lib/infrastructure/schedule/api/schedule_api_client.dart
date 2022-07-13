import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:timekeeping/constants.dart';
import 'package:timekeeping/domain/schedule/schedule_failure.dart';

import '../dto/schedule_dto.dart';
import 'i_schedule_api_client.dart';

class ScheduleApiClient implements IScheduleApiClient {
  static const _uri = '$apiEndPoint/schedules';

  final _httpClient = http.Client();

  @override
  Future<ScheduleDto> fetchSchedule({required String accessToken, required String employeeId}) async {
    final url = Uri.parse('$_uri/$employeeId');
    try {
      final response = await _httpClient.get(
        url,
        headers: {
          'Authorization': 'Bearer $accessToken',
        },
      ).timeout(const Duration(seconds: 3), onTimeout: () => throw const ScheduleFailure.serverError());
      if (response.statusCode == HttpStatus.internalServerError || response.statusCode == HttpStatus.notFound) {
        throw const ScheduleFailure.serverError();
      } else if (response.statusCode == HttpStatus.unauthorized) {
        throw const ScheduleFailure.unAuthenticated();
      } else if (response.statusCode == HttpStatus.forbidden) {
        throw const ScheduleFailure.noScheduleStored();
      }
      final scheduleDTO = ScheduleDto.fromJson(jsonDecode(response.body));
      return scheduleDTO;
    } on SocketException catch (e) {
      throw const ScheduleFailure.noInternetAccess();
    }
  }

  @override
  Future<void> createSchedule(
      {required String accessToken, required String employeeId, required ScheduleDto scheduleDTO}) async {
    debugPrint('${scheduleDTO.toJson()}');
    final url = Uri.parse('$_uri/$employeeId/create');
    _httpClient
        .post(
          url,
          headers: {
            'Authorization': 'Bearer $accessToken',
          },
          body: scheduleDTO.toJson(),
        )
        .timeout(const Duration(seconds: 3), onTimeout: () => throw const ScheduleFailure.serverError())
        .then((response) {
      if (response.statusCode == HttpStatus.internalServerError || response.statusCode == HttpStatus.notFound) {
        throw const ScheduleFailure.serverError();
      } else if (response.statusCode == HttpStatus.unauthorized) {
        throw const ScheduleFailure.unAuthenticated();
      }
    }).catchError((e) {
      throw const ScheduleFailure.noInternetAccess();
    }, test: (e) => e is SocketException);
  }
}

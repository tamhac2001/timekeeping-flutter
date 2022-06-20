import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dto/schedule_dto.dart';
import 'i_schedule_api_client.dart';

class ScheduleApiClient implements IScheduleApiClient {
  // static const _uri = 'https://lazy-taxis-rhyme-115-75-181-199.loca.lt/schedules';
  static const _uri = 'http://10.0.2.2:3000/schedules';

  final httpClient = http.Client();

  @override
  Future<ScheduleDto?> fetchData({required String accessToken, required String employeeId}) async {
    final url = Uri.parse('$_uri/$employeeId');
    final response = await httpClient.get(
      url,
      headers: {
        'Authorization': 'Bearer $accessToken',
      },
    ).timeout(const Duration(seconds: 3), onTimeout: () => throw ScheduleException.serverError());
    if (response.statusCode == HttpStatus.internalServerError || response.statusCode == HttpStatus.notFound) {
      throw ScheduleException.serverError();
    }
    try {
      final scheduleDTO = ScheduleDto.fromJson(jsonDecode(response.body));
      return scheduleDTO;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> createSchedule(
      {required String accessToken, required String employeeId, required ScheduleDto scheduleDTO}) async {
    debugPrint('createSchedule:$scheduleDTO');
    debugPrint('${scheduleDTO.toJson()}');
    final url = Uri.parse('$_uri/$employeeId/create');
    final response = await http.Client()
        .post(
          url,
          headers: {
            'Authorization': 'Bearer $accessToken',
          },
          body: scheduleDTO.toJson(),
        )
        .timeout(const Duration(seconds: 3), onTimeout: () => throw ScheduleException.serverError());
    if (response.statusCode == HttpStatus.internalServerError) {
      throw ScheduleException.serverError();
    }
  }
}

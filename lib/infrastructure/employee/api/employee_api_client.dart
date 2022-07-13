import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:timekeeping/constants.dart' as constant;
import 'package:timekeeping/domain/employee/employee_failure.dart';

import '../dto/employee_dto.dart';
import 'i_employee_api_client.dart';

class EmployeeApiClient implements IEmployeeApiClient {
  static const _uri = '${constant.apiEndPoint}/employees';

  const EmployeeApiClient();

  @override
  Future<EmployeeDto> fetchEmployeeData({required String accessToken}) async {
    final url = Uri.parse('$_uri/me');
    try {
      final response = await http.get(
        url,
        headers: {
          'Authorization': 'Bearer $accessToken',
        },
      ).timeout(constant.timeOutDuration, onTimeout: () => throw const EmployeeFailure.timeOutError());
      if (response.statusCode == HttpStatus.internalServerError || response.statusCode == HttpStatus.notFound) {
        throw const EmployeeFailure.serverError();
      } else if (response.statusCode == HttpStatus.unauthorized) {
        throw const EmployeeFailure.unAuthenticated();
      } else if (response.statusCode == HttpStatus.forbidden) {
        throw const EmployeeFailure.noEmployeeFound();
      }
      final employeeDto = EmployeeDto.fromJson(jsonDecode(response.body));
      return employeeDto;
    } on SocketException catch (e) {
      throw const EmployeeFailure.noInternetAccess();
    }
  }

  @override
  Future<void> updateAvatar({required String accessToken, required String avatar}) async {
    final url = Uri.parse('$_uri/me/avatar');
    try {
      final response = await http.post(url, headers: {
        'Authorization': 'Bearer $accessToken',
      }, body: {
        'avatar': avatar,
      }).timeout(const Duration(seconds: 3), onTimeout: () => throw const EmployeeFailure.serverError());
      if (response.statusCode == HttpStatus.internalServerError || response.statusCode == HttpStatus.notFound) {
        throw const EmployeeFailure.serverError();
      } else if (response.statusCode == HttpStatus.unauthorized) {
        throw const EmployeeFailure.unAuthenticated();
      } else if (response.statusCode == HttpStatus.forbidden) {
        throw const EmployeeFailure.noEmployeeFound();
      }
    } on SocketException catch (e) {
      throw const EmployeeFailure.noInternetAccess();
    }
  }
}

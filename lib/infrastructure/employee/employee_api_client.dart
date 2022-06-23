import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:timekeeping/constants.dart';

import './dto/employee_dto.dart';
import 'i_employee_api_client.dart';

class EmployeeApiClient implements IEmployeeApiClient {
  // static const _uri = 'https://lazy-taxis-rhyme-115-75-181-199.loca.lt/employees';
  static const _uri = '$apiEndPoint/employees';

  const EmployeeApiClient();

  @override
  Future<EmployeeDto> fetchData({required String accessToken}) async {
    final url = Uri.parse('$_uri/me');
    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer $accessToken',
      },
    ).timeout(const Duration(seconds: 3), onTimeout: () => throw EmployeeException.serverError());
    if (response.statusCode == HttpStatus.internalServerError || response.statusCode == HttpStatus.notFound) {
      throw EmployeeException.serverError();
    } else if (response.statusCode == HttpStatus.forbidden) {
      throw EmployeeException.noEmployeeFound();
    }
    final employeeDto = EmployeeDto.fromJson(jsonDecode(response.body));
    return employeeDto;
  }
}
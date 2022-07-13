import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../../../constants.dart';
import '../../../domain/absent/absent_failure.dart';
import '../dto/absent_form_dto.dart';
import 'i_absent_api_client.dart';

class AbsentApiClient extends IAbsentApiClient {
  static const _uri = '$apiEndPoint/absents';
  final httpClient = http.Client();

  @override
  Future<List<AbsentFormDto>> fetchAllAbsentForm({
    required String accessToken,
    required String employeeId,
  }) async {
    final url = Uri.parse('$_uri/$employeeId');
    try {
      final response = await httpClient.get(
        url,
        headers: {
          'Authorization': 'Bearer $accessToken',
        },
      ).timeout(timeOutDuration, onTimeout: () {
        throw const AbsentFailure.serverError();
      });
      if (response.statusCode == HttpStatus.internalServerError || response.statusCode == HttpStatus.notFound) {
        throw const AbsentFailure.serverError();
      } else if (response.statusCode == HttpStatus.unauthorized) {
        throw const AbsentFailure.unAuthenticated();
      }
      final absentFormDtoList =
          (jsonDecode(response.body) as List<dynamic>).map((json) => AbsentFormDto.fromJson(json)).toList();
      return absentFormDtoList;
    } on SocketException catch (e) {
      throw const AbsentFailure.noInternetAccess();
    }
  }

  @override
  Future<void> createAbsentForm({
    required String accessToken,
    required String employeeId,
    required AbsentFormDto dto,
  }) async {
    final url = Uri.parse('$_uri/$employeeId/create');
    try {
      final response = await httpClient
          .post(
        url,
        headers: {
          'Authorization': 'Bearer $accessToken',
        },
        body: dto.toJson(),
      )
          .timeout(timeOutDuration, onTimeout: () {
        throw const AbsentFailure.serverError();
      });
      if (response.statusCode == HttpStatus.internalServerError || response.statusCode == HttpStatus.notFound) {
        throw const AbsentFailure.serverError();
      } else if (response.statusCode == HttpStatus.unauthorized) {
        throw const AbsentFailure.unAuthenticated();
      }
    } on SocketException catch (e) {
      throw const AbsentFailure.noInternetAccess();
    }
  }
}

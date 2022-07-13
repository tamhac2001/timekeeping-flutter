import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:timekeeping/domain/absent/absent_form.dart';

import '../../domain/absent/absent_failure.dart';
import '../secure_storage/secure_storage_repository.dart';
import 'api/i_absent_api_client.dart';
import 'dto/absent_form_dto.dart';

class AbsentRepository {
  final IAbsentApiClient _apiClient;
  final SecureStorageRepository _storage;

  AbsentRepository({
    required IAbsentApiClient apiClient,
    required SecureStorageRepository storage,
  })  : _apiClient = apiClient,
        _storage = storage;

  Future<Either<AbsentFailure, List<AbsentForm>>> getAllAbsent() async {
    debugPrint('getAllAbsent called');

    final accessToken = await _storage.accessToken;
    final employeeId = await _storage.employeeId;
    try {
      final absentFormDtoList = await _apiClient.fetchAllAbsentForm(accessToken: accessToken!, employeeId: employeeId!);
      final absentFormList = absentFormDtoList.map(AbsentForm.fromDto).toList();
      debugPrint(absentFormDtoList.toString());
      return right(absentFormList);
    } on AbsentFailure catch (f) {
      debugPrint(f.toString());
      return left(f);
    }
  }

  Future<Either<AbsentFailure, Unit>> createAbsentForm({
    required AbsentForm absentForm,
  }) async {
    final accessToken = await _storage.accessToken;
    final employeeId = await _storage.employeeId;
    final dto = AbsentFormDto.fromDomain(absentForm);
    try {
      await _apiClient.createAbsentForm(accessToken: accessToken!, employeeId: employeeId!, dto: dto);
      return right(unit);
    } on AbsentFailure catch (f) {
      return left(f);
    }
  }
}

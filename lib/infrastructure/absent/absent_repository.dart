import 'package:dartz/dartz.dart';
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

  Future<Either<AbsentFailure, Unit>> createAbsentForm({
    required AbsentForm absentForm,
  }) async {
    // get accessToken and employeeId from storage
    final accessToken = await _storage.accessToken;
    final employeeId = await _storage.employeeId;

    // convert [AbsentForm] to [AbsentFormDto]
    final dto = AbsentFormDto.fromDomain(absentForm);

    try {
      await _apiClient.createAbsentForm(
          accessToken: accessToken!, employeeId: employeeId!, dto: dto);
      return right(unit);
    } on AbsentFormException catch (e) {
      switch (e.message) {
        case 'server-error':
          return left(const AbsentFailure.serverError());
        case 'unauthenticated':
          return left(const AbsentFailure.unAuthenticated());
        default:
          return left(const AbsentFailure.serverError());
      }
    }
  }
}

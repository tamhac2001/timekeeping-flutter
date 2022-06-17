import 'package:dartz/dartz.dart';
import 'package:timekeeping/domain/timekeeping/timekeeping.dart';
import 'package:timekeeping/domain/timekeeping/timekeeping_failure.dart';
import 'package:timekeeping/infrastructure/timekeeping/dto/timekeeping_dto.dart';
import 'package:timekeeping/infrastructure/timekeeping/i_timekeeping_api_client.dart';

import '../secure_storage/secure_storage_repository.dart';

class TimekeepingRepository {
  final ITimekeepingApiClient _apiClient;
  final SecureStorageRepository _storage;

  const TimekeepingRepository(
      {required ITimekeepingApiClient apiClient,
      required SecureStorageRepository storage})
      : _apiClient = apiClient,
        _storage = storage;

  Future<Either<TimekeepingFailure, Unit>> qrCheck(
      Timekeeping timekeeping) async {
    final accessToken = await _storage.accessToken;
    final employeeId = await _storage.employeeId;
    try {
      final dto = TimekeepingDto.fromDomain(timekeeping);
      await _apiClient.qrCheck(
          accessToken: accessToken!, employeeId: employeeId!, dto: dto);
      return right(unit);
    } on TimekeepingException catch (e) {
      switch (e.message) {
        case 'server-error':
          return left(const TimekeepingFailure.serverError());
        case 'unauthenticated':
          return left(const TimekeepingFailure.unauthenticated());
        case 'qrcode-not-matched':
          return left(const TimekeepingFailure.qrCodeNotMatch());
        default:
          return left(const TimekeepingFailure.serverError());
      }
    }
  }
}

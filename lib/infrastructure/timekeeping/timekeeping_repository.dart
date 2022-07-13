import 'package:dartz/dartz.dart';

import '../../domain/schedule/schedule.dart';
import '../../domain/timekeeping/timekeeping.dart';
import '../../domain/timekeeping/timekeeping_failure.dart';
import '../secure_storage/secure_storage_repository.dart';
import 'dto/qr_code_dto.dart';
import 'i_timekeeping_api_client.dart';

class TimekeepingRepository {
  final ITimekeepingApiClient _apiClient;
  final SecureStorageRepository _storage;

  TimekeepingRepository({required ITimekeepingApiClient apiClient, required SecureStorageRepository storage})
      : _apiClient = apiClient,
        _storage = storage;

  Future<DateTime?> getEmployeeStartDate() async {
    return await _storage.employeeStartDate;
  }

  Future<Either<TimekeepingFailure, Timekeeping>> getTimekeepingToday(Schedule schedule) async {
    final accessToken = await _storage.accessToken;
    final employeeId = await _storage.employeeId;
    try {
      final dto = await _apiClient.fetchTimekeepingToday(accessToken: accessToken!, employeeId: employeeId!);
      return right(Timekeeping.fromDto(dto, schedule));
    } on TimekeepingFailure catch (f) {
      return left(f);
    }
  }

  Future<Either<TimekeepingFailure, List<Timekeeping>>> getTimekeepingByMonth(
      {required int year, required int month, required Schedule schedule}) async {
    final accessToken = await _storage.accessToken;
    final employeeId = await _storage.employeeId;
    try {
      final dtoList = await _apiClient.fetchTimekeepingByMonth(
          accessToken: accessToken!, employeeId: employeeId!, year: year, month: month);
      final timekeepingList = dtoList.map((dto) => Timekeeping.fromDto(dto, schedule)).toList();
      return right(timekeepingList);
    } on TimekeepingFailure catch (f) {
      return left(f);
    }
  }

  Future<Either<TimekeepingFailure, Unit>> qrCheck(QrCodeDto qrCodeDto) async {
    final accessToken = await _storage.accessToken;
    final employeeId = await _storage.employeeId;
    try {
      await _apiClient.qrCheck(accessToken: accessToken!, employeeId: employeeId!, qrCodeDto: qrCodeDto);
      return right(unit);
    } on TimekeepingFailure catch (f) {
      return left(f);
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:timekeeping/infrastructure/schedule/dto/schedule_dto.dart';
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

  Future<Schedule> getSchedule() async {
    final morningShiftStart = await _storage.morningShiftStart;
    final morningShiftEnd = await _storage.morningShiftEnd;
    final afternoonShiftStart = await _storage.afternoonShiftStart;
    final afternoonShiftEnd = await _storage.afternoonShiftEnd;
    return Schedule(
        morningShiftStart: morningShiftStart!,
        morningShiftEnd: morningShiftEnd!,
        afternoonShiftStart: afternoonShiftStart!,
        afternoonShiftEnd: afternoonShiftEnd!);
  }

  Future<DateTime?> getEmployeeStartDate() async {
    return await _storage.employeeStartDate;
  }

  Future<Either<TimekeepingFailure, Timekeeping>> getTimekeepingToday() async {
    final accessToken = await _storage.accessToken;
    final employeeId = await _storage.employeeId;
    try {
      final dto = await _apiClient.fetchDataToday(accessToken: accessToken!, employeeId: employeeId!);
      final schedule = await getSchedule();
      return right(Timekeeping.fromDto(dto, schedule));
    } on TimekeepingException catch (e) {
      switch (e.message) {
        case 'server-error':
          return left(const TimekeepingFailure.serverError());
        case 'unauthenticated':
          return left(const TimekeepingFailure.unauthenticated());
        case 'no-timekeeping-found':
          return left(const TimekeepingFailure.timekeepingNotFound());
        default:
          return left(const TimekeepingFailure.serverError());
      }
    }
  }

  Future<Either<TimekeepingFailure, List<Timekeeping>>> getTimekeepingByMonth(int year, int month) async {
    final accessToken = await _storage.accessToken;
    final employeeId = await _storage.employeeId;
    try {
      final dtoList = await _apiClient.fetchDataByMonth(
          accessToken: accessToken!, employeeId: employeeId!, year: year, month: month);
      final schedule = await getSchedule();
      final timekeepingList = dtoList.map((dto) => Timekeeping.fromDto(dto, schedule)).toList();
      return right(timekeepingList);
    } on TimekeepingException catch (e) {
      switch (e.message) {
        case 'server-error':
          return left(const TimekeepingFailure.serverError());
        case 'unauthenticated':
          return left(const TimekeepingFailure.unauthenticated());
        case 'no-timekeeping-found':
          return left(const TimekeepingFailure.timekeepingNotFound());
        default:
          return left(const TimekeepingFailure.serverError());
      }
    }
  }

  Future<Either<TimekeepingFailure, Unit>> qrCheck(QrCodeDto qrCodeDto) async {
    final accessToken = await _storage.accessToken;
    final employeeId = await _storage.employeeId;
    try {
      await _apiClient.qrCheck(accessToken: accessToken!, employeeId: employeeId!, qrCodeDto: qrCodeDto);
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

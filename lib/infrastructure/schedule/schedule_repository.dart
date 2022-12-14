import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../domain/schedule/schedule.dart';
import '../../domain/schedule/schedule_failure.dart';
import '../secure_storage/secure_storage_repository.dart';
import 'dto/schedule_dto.dart';
import 'api/i_schedule_api_client.dart';

class ScheduleRepository {
  ScheduleRepository({
    required IScheduleApiClient apiClient,
    required SecureStorageRepository storage,
  })  : _apiClient = apiClient,
        _storage = storage;

  final IScheduleApiClient _apiClient;
  final SecureStorageRepository _storage;

  Future<Either<ScheduleFailure, Schedule>> getSchedule({required String employeeId}) async {
    final accessToken = await _storage.accessToken;
    final morningShiftStart = await _storage.morningShiftStart;
    final morningShiftEnd = await _storage.morningShiftEnd;
    final afternoonShiftStart = await _storage.afternoonShiftStart;
    final afternoonShiftEnd = await _storage.afternoonShiftEnd;

    if (morningShiftStart != null &&
        morningShiftEnd != null &&
        afternoonShiftStart != null &&
        afternoonShiftEnd != null) {
      return right(Schedule(
          morningShiftStart: morningShiftStart,
          morningShiftEnd: morningShiftEnd,
          afternoonShiftStart: afternoonShiftStart,
          afternoonShiftEnd: afternoonShiftEnd));
    } else {
      try {
        final scheduleDTO = await _apiClient.fetchSchedule(accessToken: accessToken!, employeeId: employeeId);
        final schedule = Schedule.fromDTO(scheduleDTO);
        await _storage.setMorningShiftStart(morningShiftStart: schedule.morningShiftStart);
        await _storage.setMorningShiftEnd(morningShiftEnd: schedule.morningShiftEnd);
        await _storage.setAfternoonShiftStart(afternoonShiftStart: schedule.afternoonShiftStart);
        await _storage.setAfternoonShiftEnd(afternoonShiftEnd: schedule.afternoonShiftEnd);
        return right(schedule);
      } on ScheduleFailure catch (f) {
        return left(f);
      }
    }
  }

  Future<Either<ScheduleFailure, Unit>> assignSchedule({
    required Schedule schedule,
  }) async {
    final accessToken = await _storage.accessToken;
    final employeeId = await _storage.employeeId;
    final employeeStartDate = await _storage.employeeStartDate;
    final scheduleDTO = ScheduleDto.fromDomain(schedule, employeeStartDate!);
    try {
      await _apiClient.createSchedule(accessToken: accessToken!, employeeId: employeeId!, scheduleDTO: scheduleDTO);
      await _storage.setMorningShiftStart(morningShiftStart: schedule.morningShiftStart);
      await _storage.setMorningShiftEnd(morningShiftEnd: schedule.morningShiftEnd);
      await _storage.setAfternoonShiftStart(afternoonShiftStart: schedule.afternoonShiftStart);
      await _storage.setAfternoonShiftEnd(afternoonShiftEnd: schedule.afternoonShiftEnd);
      return right(unit);
    } on ScheduleFailure catch (f) {
      return left(f);
    }
  }
}

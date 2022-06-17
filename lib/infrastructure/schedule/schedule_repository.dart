import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:timekeeping/domain/schedule/schedule_failure.dart';
import 'package:timekeeping/infrastructure/schedule/i_schedule_api_client.dart';
import 'package:timekeeping/infrastructure/secure_storage/secure_storage_repository.dart';

import '../../domain/schedule/schedule.dart';
import '../employee/i_employee_api_client.dart';
import 'dto/schedule_dto.dart';

class ScheduleRepository {
  ScheduleRepository({
    required IScheduleApiClient apiClient,
    required SecureStorageRepository secureStorageRepository,
  })  : _apiClient = apiClient,
        _secureStorageRepository = secureStorageRepository;

  final IScheduleApiClient _apiClient;
  final SecureStorageRepository _secureStorageRepository;

  Future<Either<ScheduleFailure, Schedule>> scheduleRequest(
      {required String accessToken, required String employeeId}) async {
    final morningShiftStart = await _secureStorageRepository.morningShiftStart;
    final morningShiftEnd = await _secureStorageRepository.morningShiftEnd;
    final afternoonShiftStart =
        await _secureStorageRepository.afternoonShiftStart;
    final afternoonShiftEnd = await _secureStorageRepository.afternoonShiftEnd;

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
        final scheduleDTO = await _apiClient
            .fetchData(accessToken: accessToken, employeeId: employeeId)
            .timeout(const Duration(seconds: 2), onTimeout: () => null);
        if (scheduleDTO == null) {
          return left(const ScheduleFailure.noScheduleStored());
        } else {
          debugPrint('scheduleRequest:$scheduleDTO');
          final schedule = Schedule.fromDTO(scheduleDTO);
          await _secureStorageRepository.setMorningShiftStart(
              morningShiftStart: schedule.morningShiftStart);
          await _secureStorageRepository.setMorningShiftEnd(
              morningShiftEnd: schedule.morningShiftEnd);
          await _secureStorageRepository.setAfternoonShiftStart(
              afternoonShiftStart: schedule.afternoonShiftStart);
          await _secureStorageRepository.setAfternoonShiftEnd(
              afternoonShiftEnd: schedule.afternoonShiftEnd);
          return right(schedule);
        }
      } on ScheduleException catch (e) {
        return left(const ScheduleFailure.serverError());
      }
    }
  }

  Future<Either<ScheduleFailure, Unit>> assignSchedule({
    required String accessToken,
    required String employeeId,
    required Schedule schedule,
  }) async {
    final scheduleDTO = ScheduleDto.fromDomain(schedule);
    try {
      await _apiClient.createSchedule(
          accessToken: accessToken,
          employeeId: employeeId,
          scheduleDTO: scheduleDTO);
      await _secureStorageRepository.setMorningShiftStart(
          morningShiftStart: schedule.morningShiftStart);
      await _secureStorageRepository.setMorningShiftEnd(
          morningShiftEnd: schedule.morningShiftEnd);
      await _secureStorageRepository.setAfternoonShiftStart(
          afternoonShiftStart: schedule.afternoonShiftStart);
      await _secureStorageRepository.setAfternoonShiftEnd(
          afternoonShiftEnd: schedule.afternoonShiftEnd);
      return right(unit);
    } on ScheduleException catch (e) {
      return left(const ScheduleFailure.serverError());
    }
    //
    return right(unit);
  }
}

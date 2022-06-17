import 'dto/schedule_dto.dart';

abstract class IScheduleApiClient {
  Future<ScheduleDto?> fetchData(
      {required String accessToken, required String employeeId});

  Future<void> createSchedule(
      {required String accessToken,
      required String employeeId,
      required ScheduleDto scheduleDTO});
}

class ScheduleException implements Exception {
  const ScheduleException._(this.message);

  final String message;

  factory ScheduleException.serverError() =>
      const ScheduleException._('server-error');
}

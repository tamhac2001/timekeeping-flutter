import '../dto/schedule_dto.dart';

abstract class IScheduleApiClient {
  Future<ScheduleDto> fetchSchedule({required String accessToken, required String employeeId});

  Future<void> createSchedule(
      {required String accessToken, required String employeeId, required ScheduleDto scheduleDTO});
}

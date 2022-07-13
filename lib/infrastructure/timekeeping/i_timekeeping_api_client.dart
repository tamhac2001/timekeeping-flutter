import 'package:timekeeping/infrastructure/schedule/dto/schedule_dto.dart';
import 'package:timekeeping/infrastructure/timekeeping/dto/qr_code_dto.dart';
import 'package:timekeeping/infrastructure/timekeeping/dto/timekeeping_dto.dart';

abstract class ITimekeepingApiClient {
  Future<TimekeepingDto> fetchTimekeepingToday({
    required String accessToken,
    required String employeeId,
  });

  Future<List<TimekeepingDto>> fetchTimekeepingByMonth({
    required String accessToken,
    required String employeeId,
    required int year,
    required int month,
  });

  Future<void> qrCheck({
    required String accessToken,
    required String employeeId,
    required QrCodeDto qrCodeDto,
  });
}

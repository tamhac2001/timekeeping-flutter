import 'package:timekeeping/infrastructure/schedule/dto/schedule_dto.dart';
import 'package:timekeeping/infrastructure/timekeeping/dto/qr_code_dto.dart';
import 'package:timekeeping/infrastructure/timekeeping/dto/timekeeping_dto.dart';

abstract class ITimekeepingApiClient {
  Future<TimekeepingDto> fetchDataToday({
    required String accessToken,
    required String employeeId,
  });

  Future<List<TimekeepingDto>> fetchDataByMonth({
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

class TimekeepingException implements Exception {
  const TimekeepingException._(this.message);

  final String message;

  factory TimekeepingException.serverError() => const TimekeepingException._('server-error');

  factory TimekeepingException.unauthenticated() => const TimekeepingException._('unauthenticated');

  factory TimekeepingException.qrCodeNotMatched() => const TimekeepingException._('qrcode-not-matched');

  factory TimekeepingException.timekeepingNotFound() => const TimekeepingException._('no-timekeeping-found');
}

import 'package:timekeeping/infrastructure/timekeeping/dto/timekeeping_dto.dart';

abstract class ITimekeepingApiClient {
  Future<void> qrCheck({
    required String accessToken,
    required String employeeId,
    required TimekeepingDto dto,
  });
}

class TimekeepingException implements Exception {
  const TimekeepingException._(this.message);

  final String message;

  factory TimekeepingException.serverError() =>
      const TimekeepingException._('server-error');

  factory TimekeepingException.unauthenticated() =>
      const TimekeepingException._('unauthenticated');

  factory TimekeepingException.qrCodeNotMatched() =>
      const TimekeepingException._('qrcode-not-matched');
}

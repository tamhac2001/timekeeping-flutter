import 'package:timekeeping/infrastructure/absent/dto/absent_form_dto.dart';

abstract class IAbsentApiClient {
  Future<void> createAbsentForm({
    required String accessToken,
    required String employeeId,
    required AbsentFormDto dto,
  });
}

class AbsentFormException implements Exception {
  const AbsentFormException._(this.message);

  final String message;

  factory AbsentFormException.serverError() =>
      const AbsentFormException._('server-error');

  factory AbsentFormException.unAuthenticated() =>
      const AbsentFormException._('unauthenticated');
}

import 'package:timekeeping/infrastructure/absent/dto/absent_form_dto.dart';

abstract class IAbsentApiClient {
  Future<List<AbsentFormDto>> fetchAllAbsentForm({
    required String accessToken,
    required String employeeId,
  });

  Future<void> createAbsentForm({
    required String accessToken,
    required String employeeId,
    required AbsentFormDto dto,
  });
}

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import '../../domain/absent/absent_failure.dart';
import '../../domain/absent/absent_form.dart';
import '../../infrastructure/absent/absent_repository.dart';

class AbsentListCubit extends Cubit<Either<AbsentFailure, List<AbsentForm>>?> {
  final AbsentRepository _repository;

  AbsentListCubit({required AbsentRepository repository})
      : _repository = repository,
        super(null);

  Future<void> absentListRequest() async {
    final absentFailureOrAbsentList = await _repository.getAllAbsent();
    emit(absentFailureOrAbsentList);
  }

  void resetState() {
    emit(null);
  }
}

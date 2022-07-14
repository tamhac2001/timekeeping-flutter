import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:timekeeping/application/cubits/schedule/schedule_cubit.dart';

import '../../domain/timekeeping/timekeeping.dart';
import '../../domain/timekeeping/timekeeping_failure.dart';
import '../../infrastructure/timekeeping/timekeeping_repository.dart';

class TimekeepingCubit extends Cubit<Either<TimekeepingFailure, Timekeeping>?> {
  final TimekeepingRepository _repository;
  final ScheduleCubit _scheduleCubit;

  TimekeepingCubit({
    required TimekeepingRepository repository,
    required ScheduleCubit scheduleCubit,
  })  : _repository = repository,
        _scheduleCubit = scheduleCubit,
        super(null);

  Future<void> timekeepingRequest() async {
    if (_scheduleCubit.state.scheduleFailureOrSchedule == null ||
        _scheduleCubit.state.scheduleFailureOrSchedule!.isLeft()) {
      await _scheduleCubit.scheduleRequest();
    }
    await _scheduleCubit.state.scheduleFailureOrSchedule!.fold(
      (failure) async => failure.when(
          noInternetAccess: () => emit(left(const TimekeepingFailure.noInternetAccess())),
          serverError: () => emit(left(const TimekeepingFailure.serverError())),
          unAuthenticated: () => emit(left(const TimekeepingFailure.unAuthenticated())),
          noScheduleStored: () => emit(left(const TimekeepingFailure.serverError()))),
      (schedule) async {
        final timekeepingFailureOrTimekeeping = await _repository.getTimekeepingToday(schedule);
        emit(timekeepingFailureOrTimekeeping);
      },
    );
  }
}

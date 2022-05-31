import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'absent_form_event.dart';
part 'absent_form_state.dart';

class AbsentFormBloc extends Bloc<AbsentFormEvent, AbsentFormState> {
  AbsentFormBloc() : super(AbsentFormInitial()) {
    on<AbsentFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

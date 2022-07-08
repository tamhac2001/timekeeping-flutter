import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'absent_list_state.dart';

class AbsentListCubit extends Cubit<AbsentListState> {
  AbsentListCubit() : super(AbsentListInitial());
}

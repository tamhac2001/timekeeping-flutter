import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/absent_form/absent_form_bloc.dart';
import '../core/app_widgets.dart';
import 'widgets.dart';

class AbsentFormScreen extends StatelessWidget {
  const AbsentFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AbsentFormBloc, AbsentFormState>(
      listenWhen: (previous, current) => previous.failureOrUnit != current.failureOrUnit,
      listener: (context, state) {
        if (state.failureOrUnit != null) {
          state.failureOrUnit!.fold(
            (failure) => failure.when(
                noInternetAccess: () => showNoInternetAccessDialog(context),
                serverError: () => showServerErrorDialog(context, title: 'Xin nghỉ phép'),
                unAuthenticated: () => showTokenExpireDialog(context)),
            (_) {
              showMyDialog(context, title: 'Xin nghỉ phép', text: 'Xin nghỉ phép thành công', barrierDismissible: true)
                  .whenComplete(() => context.read<AbsentFormBloc>().add(const AbsentFormEvent.cancelled()));
            },
          );
        }
      },
      buildWhen: (previous, current) =>
          (previous.absentFailureOrAbsentFormList != current.absentFailureOrAbsentFormList) ||
          (previous.isSubmitting != current.isSubmitting) ||
          (previous.isLoading != current.isLoading),
      builder: (context, state) {
        if (state.absentFailureOrAbsentFormList == null) {
          context.read<AbsentFormBloc>().add(const AbsentFormEvent.getAbsentFormList());
          return const LoadingScreen(appBarTitle: 'Xin nghỉ phép');
        }
        if (state.isSubmitting || state.isLoading) return const LoadingScreen(appBarTitle: 'Xin nghỉ phép');
        return state.absentFailureOrAbsentFormList!.fold(
            (failure) => FailureScreen(
                failureText: failure.toFailureMessage(),
                retryCallback: () {
                  context.read<AbsentFormBloc>().add(const AbsentFormEvent.getAbsentFormList());
                },
                appBarTitle: 'Xin nghỉ phép'),
            (absentFormList) => SafeArea(
                  child: Scaffold(
                    appBar: AppBar(
                      title: const Text('Xin nghỉ phép'),
                      automaticallyImplyLeading: false,
                      centerTitle: true,
                    ),
                    body: SingleChildScrollView(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const AbsentDatePicker(),
                          const SizedBox(height: 32.0),
                          const ReasonPicker(),
                          const SizedBox(height: 32.0),
                          NoteTextField(),
                          const SizedBox(height: 64.0),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: const [
                            CancelButton(),
                            SubmitButton(),
                          ]),
                          const SizedBox(height: 64.0),
                          AbsentFormList(absentFormList: state.absentFormListAfterToday),
                        ],
                      ),
                    ),
                    // bottomNavigationBar: MyBottomAppBar(initialActiveIndex: 2),
                  ),
                ));
      },
    );
  }
}

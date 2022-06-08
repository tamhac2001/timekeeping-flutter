import 'package:timekeeping/domain/core/value_failure.dart';

class UnexpectedValueError extends Error {
  final ValueFailure _valueFailure;

  UnexpectedValueError({
    required ValueFailure valueFailure,
  }) : _valueFailure = valueFailure;

  @override
  String toString() {
    return 'UnexpectedValueError{_valueFailure: $_valueFailure}';
  }
}

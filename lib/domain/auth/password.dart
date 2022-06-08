import 'package:dartz/dartz.dart';
import 'package:timekeeping/domain/core/value_failure.dart';
import 'package:timekeeping/domain/core/value_object.dart';

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure, String> value;

  const Password._(this.value);

  factory Password(String input) {
    return Password._(validatePassword(input));
  }
}

Either<ValueFailure, String> validatePassword(String input) {
  if (input.length >= 6 && input.length <= 40) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }
}

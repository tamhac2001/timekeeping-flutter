import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({required T failedValue}) =
      InvalidEmail<T>;

  const factory ValueFailure.invalidPassword({required T failedValue}) =
      InvalidPassword<T>;
}

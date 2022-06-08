import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:timekeeping/domain/core/errors.dart';

import 'value_failure.dart';

abstract class ValueObject<T> extends Equatable {
  const ValueObject();

  Either<ValueFailure, T> get value;

  bool isValid() => value.isRight();

  /// Throw [UnexpectedValueError] containing [ValueFailure]
  T getOrCrash() {
    return value.fold(
      (failure) => throw UnexpectedValueError(valueFailure: failure),
      // id = identity = (r) => r
      id,
    );
  }

  @override
  List<Object> get props => [value];

  @override
  String toString() {
    return 'ValueObject{$value}';
  }
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'assign_schedule_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AssignScheduleFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TimeOfDay time) morningShiftStartTimeChanged,
    required TResult Function(TimeOfDay time) morningShiftEndTimeChanged,
    required TResult Function(TimeOfDay time) afternoonShiftStartTimeChanged,
    required TResult Function() formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TimeOfDay time)? morningShiftStartTimeChanged,
    TResult Function(TimeOfDay time)? morningShiftEndTimeChanged,
    TResult Function(TimeOfDay time)? afternoonShiftStartTimeChanged,
    TResult Function()? formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TimeOfDay time)? morningShiftStartTimeChanged,
    TResult Function(TimeOfDay time)? morningShiftEndTimeChanged,
    TResult Function(TimeOfDay time)? afternoonShiftStartTimeChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MorningShiftStartTimeChanged value)
        morningShiftStartTimeChanged,
    required TResult Function(_MorningShiftEndTimeChanged value)
        morningShiftEndTimeChanged,
    required TResult Function(_AfternoonShiftStartTimeChanged value)
        afternoonShiftStartTimeChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MorningShiftStartTimeChanged value)?
        morningShiftStartTimeChanged,
    TResult Function(_MorningShiftEndTimeChanged value)?
        morningShiftEndTimeChanged,
    TResult Function(_AfternoonShiftStartTimeChanged value)?
        afternoonShiftStartTimeChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MorningShiftStartTimeChanged value)?
        morningShiftStartTimeChanged,
    TResult Function(_MorningShiftEndTimeChanged value)?
        morningShiftEndTimeChanged,
    TResult Function(_AfternoonShiftStartTimeChanged value)?
        afternoonShiftStartTimeChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignScheduleFormEventCopyWith<$Res> {
  factory $AssignScheduleFormEventCopyWith(AssignScheduleFormEvent value,
          $Res Function(AssignScheduleFormEvent) then) =
      _$AssignScheduleFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AssignScheduleFormEventCopyWithImpl<$Res>
    implements $AssignScheduleFormEventCopyWith<$Res> {
  _$AssignScheduleFormEventCopyWithImpl(this._value, this._then);

  final AssignScheduleFormEvent _value;
  // ignore: unused_field
  final $Res Function(AssignScheduleFormEvent) _then;
}

/// @nodoc
abstract class _$$_MorningShiftStartTimeChangedCopyWith<$Res> {
  factory _$$_MorningShiftStartTimeChangedCopyWith(
          _$_MorningShiftStartTimeChanged value,
          $Res Function(_$_MorningShiftStartTimeChanged) then) =
      __$$_MorningShiftStartTimeChangedCopyWithImpl<$Res>;
  $Res call({TimeOfDay time});
}

/// @nodoc
class __$$_MorningShiftStartTimeChangedCopyWithImpl<$Res>
    extends _$AssignScheduleFormEventCopyWithImpl<$Res>
    implements _$$_MorningShiftStartTimeChangedCopyWith<$Res> {
  __$$_MorningShiftStartTimeChangedCopyWithImpl(
      _$_MorningShiftStartTimeChanged _value,
      $Res Function(_$_MorningShiftStartTimeChanged) _then)
      : super(_value, (v) => _then(v as _$_MorningShiftStartTimeChanged));

  @override
  _$_MorningShiftStartTimeChanged get _value =>
      super._value as _$_MorningShiftStartTimeChanged;

  @override
  $Res call({
    Object? time = freezed,
  }) {
    return _then(_$_MorningShiftStartTimeChanged(
      time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc

class _$_MorningShiftStartTimeChanged implements _MorningShiftStartTimeChanged {
  const _$_MorningShiftStartTimeChanged(this.time);

  @override
  final TimeOfDay time;

  @override
  String toString() {
    return 'AssignScheduleFormEvent.morningShiftStartTimeChanged(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MorningShiftStartTimeChanged &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$$_MorningShiftStartTimeChangedCopyWith<_$_MorningShiftStartTimeChanged>
      get copyWith => __$$_MorningShiftStartTimeChangedCopyWithImpl<
          _$_MorningShiftStartTimeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TimeOfDay time) morningShiftStartTimeChanged,
    required TResult Function(TimeOfDay time) morningShiftEndTimeChanged,
    required TResult Function(TimeOfDay time) afternoonShiftStartTimeChanged,
    required TResult Function() formSubmitted,
  }) {
    return morningShiftStartTimeChanged(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TimeOfDay time)? morningShiftStartTimeChanged,
    TResult Function(TimeOfDay time)? morningShiftEndTimeChanged,
    TResult Function(TimeOfDay time)? afternoonShiftStartTimeChanged,
    TResult Function()? formSubmitted,
  }) {
    return morningShiftStartTimeChanged?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TimeOfDay time)? morningShiftStartTimeChanged,
    TResult Function(TimeOfDay time)? morningShiftEndTimeChanged,
    TResult Function(TimeOfDay time)? afternoonShiftStartTimeChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (morningShiftStartTimeChanged != null) {
      return morningShiftStartTimeChanged(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MorningShiftStartTimeChanged value)
        morningShiftStartTimeChanged,
    required TResult Function(_MorningShiftEndTimeChanged value)
        morningShiftEndTimeChanged,
    required TResult Function(_AfternoonShiftStartTimeChanged value)
        afternoonShiftStartTimeChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return morningShiftStartTimeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MorningShiftStartTimeChanged value)?
        morningShiftStartTimeChanged,
    TResult Function(_MorningShiftEndTimeChanged value)?
        morningShiftEndTimeChanged,
    TResult Function(_AfternoonShiftStartTimeChanged value)?
        afternoonShiftStartTimeChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
  }) {
    return morningShiftStartTimeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MorningShiftStartTimeChanged value)?
        morningShiftStartTimeChanged,
    TResult Function(_MorningShiftEndTimeChanged value)?
        morningShiftEndTimeChanged,
    TResult Function(_AfternoonShiftStartTimeChanged value)?
        afternoonShiftStartTimeChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (morningShiftStartTimeChanged != null) {
      return morningShiftStartTimeChanged(this);
    }
    return orElse();
  }
}

abstract class _MorningShiftStartTimeChanged
    implements AssignScheduleFormEvent {
  const factory _MorningShiftStartTimeChanged(final TimeOfDay time) =
      _$_MorningShiftStartTimeChanged;

  TimeOfDay get time => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_MorningShiftStartTimeChangedCopyWith<_$_MorningShiftStartTimeChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MorningShiftEndTimeChangedCopyWith<$Res> {
  factory _$$_MorningShiftEndTimeChangedCopyWith(
          _$_MorningShiftEndTimeChanged value,
          $Res Function(_$_MorningShiftEndTimeChanged) then) =
      __$$_MorningShiftEndTimeChangedCopyWithImpl<$Res>;
  $Res call({TimeOfDay time});
}

/// @nodoc
class __$$_MorningShiftEndTimeChangedCopyWithImpl<$Res>
    extends _$AssignScheduleFormEventCopyWithImpl<$Res>
    implements _$$_MorningShiftEndTimeChangedCopyWith<$Res> {
  __$$_MorningShiftEndTimeChangedCopyWithImpl(
      _$_MorningShiftEndTimeChanged _value,
      $Res Function(_$_MorningShiftEndTimeChanged) _then)
      : super(_value, (v) => _then(v as _$_MorningShiftEndTimeChanged));

  @override
  _$_MorningShiftEndTimeChanged get _value =>
      super._value as _$_MorningShiftEndTimeChanged;

  @override
  $Res call({
    Object? time = freezed,
  }) {
    return _then(_$_MorningShiftEndTimeChanged(
      time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc

class _$_MorningShiftEndTimeChanged implements _MorningShiftEndTimeChanged {
  const _$_MorningShiftEndTimeChanged(this.time);

  @override
  final TimeOfDay time;

  @override
  String toString() {
    return 'AssignScheduleFormEvent.morningShiftEndTimeChanged(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MorningShiftEndTimeChanged &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$$_MorningShiftEndTimeChangedCopyWith<_$_MorningShiftEndTimeChanged>
      get copyWith => __$$_MorningShiftEndTimeChangedCopyWithImpl<
          _$_MorningShiftEndTimeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TimeOfDay time) morningShiftStartTimeChanged,
    required TResult Function(TimeOfDay time) morningShiftEndTimeChanged,
    required TResult Function(TimeOfDay time) afternoonShiftStartTimeChanged,
    required TResult Function() formSubmitted,
  }) {
    return morningShiftEndTimeChanged(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TimeOfDay time)? morningShiftStartTimeChanged,
    TResult Function(TimeOfDay time)? morningShiftEndTimeChanged,
    TResult Function(TimeOfDay time)? afternoonShiftStartTimeChanged,
    TResult Function()? formSubmitted,
  }) {
    return morningShiftEndTimeChanged?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TimeOfDay time)? morningShiftStartTimeChanged,
    TResult Function(TimeOfDay time)? morningShiftEndTimeChanged,
    TResult Function(TimeOfDay time)? afternoonShiftStartTimeChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (morningShiftEndTimeChanged != null) {
      return morningShiftEndTimeChanged(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MorningShiftStartTimeChanged value)
        morningShiftStartTimeChanged,
    required TResult Function(_MorningShiftEndTimeChanged value)
        morningShiftEndTimeChanged,
    required TResult Function(_AfternoonShiftStartTimeChanged value)
        afternoonShiftStartTimeChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return morningShiftEndTimeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MorningShiftStartTimeChanged value)?
        morningShiftStartTimeChanged,
    TResult Function(_MorningShiftEndTimeChanged value)?
        morningShiftEndTimeChanged,
    TResult Function(_AfternoonShiftStartTimeChanged value)?
        afternoonShiftStartTimeChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
  }) {
    return morningShiftEndTimeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MorningShiftStartTimeChanged value)?
        morningShiftStartTimeChanged,
    TResult Function(_MorningShiftEndTimeChanged value)?
        morningShiftEndTimeChanged,
    TResult Function(_AfternoonShiftStartTimeChanged value)?
        afternoonShiftStartTimeChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (morningShiftEndTimeChanged != null) {
      return morningShiftEndTimeChanged(this);
    }
    return orElse();
  }
}

abstract class _MorningShiftEndTimeChanged implements AssignScheduleFormEvent {
  const factory _MorningShiftEndTimeChanged(final TimeOfDay time) =
      _$_MorningShiftEndTimeChanged;

  TimeOfDay get time => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_MorningShiftEndTimeChangedCopyWith<_$_MorningShiftEndTimeChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AfternoonShiftStartTimeChangedCopyWith<$Res> {
  factory _$$_AfternoonShiftStartTimeChangedCopyWith(
          _$_AfternoonShiftStartTimeChanged value,
          $Res Function(_$_AfternoonShiftStartTimeChanged) then) =
      __$$_AfternoonShiftStartTimeChangedCopyWithImpl<$Res>;
  $Res call({TimeOfDay time});
}

/// @nodoc
class __$$_AfternoonShiftStartTimeChangedCopyWithImpl<$Res>
    extends _$AssignScheduleFormEventCopyWithImpl<$Res>
    implements _$$_AfternoonShiftStartTimeChangedCopyWith<$Res> {
  __$$_AfternoonShiftStartTimeChangedCopyWithImpl(
      _$_AfternoonShiftStartTimeChanged _value,
      $Res Function(_$_AfternoonShiftStartTimeChanged) _then)
      : super(_value, (v) => _then(v as _$_AfternoonShiftStartTimeChanged));

  @override
  _$_AfternoonShiftStartTimeChanged get _value =>
      super._value as _$_AfternoonShiftStartTimeChanged;

  @override
  $Res call({
    Object? time = freezed,
  }) {
    return _then(_$_AfternoonShiftStartTimeChanged(
      time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc

class _$_AfternoonShiftStartTimeChanged
    implements _AfternoonShiftStartTimeChanged {
  const _$_AfternoonShiftStartTimeChanged(this.time);

  @override
  final TimeOfDay time;

  @override
  String toString() {
    return 'AssignScheduleFormEvent.afternoonShiftStartTimeChanged(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AfternoonShiftStartTimeChanged &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$$_AfternoonShiftStartTimeChangedCopyWith<_$_AfternoonShiftStartTimeChanged>
      get copyWith => __$$_AfternoonShiftStartTimeChangedCopyWithImpl<
          _$_AfternoonShiftStartTimeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TimeOfDay time) morningShiftStartTimeChanged,
    required TResult Function(TimeOfDay time) morningShiftEndTimeChanged,
    required TResult Function(TimeOfDay time) afternoonShiftStartTimeChanged,
    required TResult Function() formSubmitted,
  }) {
    return afternoonShiftStartTimeChanged(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TimeOfDay time)? morningShiftStartTimeChanged,
    TResult Function(TimeOfDay time)? morningShiftEndTimeChanged,
    TResult Function(TimeOfDay time)? afternoonShiftStartTimeChanged,
    TResult Function()? formSubmitted,
  }) {
    return afternoonShiftStartTimeChanged?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TimeOfDay time)? morningShiftStartTimeChanged,
    TResult Function(TimeOfDay time)? morningShiftEndTimeChanged,
    TResult Function(TimeOfDay time)? afternoonShiftStartTimeChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (afternoonShiftStartTimeChanged != null) {
      return afternoonShiftStartTimeChanged(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MorningShiftStartTimeChanged value)
        morningShiftStartTimeChanged,
    required TResult Function(_MorningShiftEndTimeChanged value)
        morningShiftEndTimeChanged,
    required TResult Function(_AfternoonShiftStartTimeChanged value)
        afternoonShiftStartTimeChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return afternoonShiftStartTimeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MorningShiftStartTimeChanged value)?
        morningShiftStartTimeChanged,
    TResult Function(_MorningShiftEndTimeChanged value)?
        morningShiftEndTimeChanged,
    TResult Function(_AfternoonShiftStartTimeChanged value)?
        afternoonShiftStartTimeChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
  }) {
    return afternoonShiftStartTimeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MorningShiftStartTimeChanged value)?
        morningShiftStartTimeChanged,
    TResult Function(_MorningShiftEndTimeChanged value)?
        morningShiftEndTimeChanged,
    TResult Function(_AfternoonShiftStartTimeChanged value)?
        afternoonShiftStartTimeChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (afternoonShiftStartTimeChanged != null) {
      return afternoonShiftStartTimeChanged(this);
    }
    return orElse();
  }
}

abstract class _AfternoonShiftStartTimeChanged
    implements AssignScheduleFormEvent {
  const factory _AfternoonShiftStartTimeChanged(final TimeOfDay time) =
      _$_AfternoonShiftStartTimeChanged;

  TimeOfDay get time => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AfternoonShiftStartTimeChangedCopyWith<_$_AfternoonShiftStartTimeChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FormSubmittedCopyWith<$Res> {
  factory _$$_FormSubmittedCopyWith(
          _$_FormSubmitted value, $Res Function(_$_FormSubmitted) then) =
      __$$_FormSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FormSubmittedCopyWithImpl<$Res>
    extends _$AssignScheduleFormEventCopyWithImpl<$Res>
    implements _$$_FormSubmittedCopyWith<$Res> {
  __$$_FormSubmittedCopyWithImpl(
      _$_FormSubmitted _value, $Res Function(_$_FormSubmitted) _then)
      : super(_value, (v) => _then(v as _$_FormSubmitted));

  @override
  _$_FormSubmitted get _value => super._value as _$_FormSubmitted;
}

/// @nodoc

class _$_FormSubmitted implements _FormSubmitted {
  const _$_FormSubmitted();

  @override
  String toString() {
    return 'AssignScheduleFormEvent.formSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FormSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TimeOfDay time) morningShiftStartTimeChanged,
    required TResult Function(TimeOfDay time) morningShiftEndTimeChanged,
    required TResult Function(TimeOfDay time) afternoonShiftStartTimeChanged,
    required TResult Function() formSubmitted,
  }) {
    return formSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TimeOfDay time)? morningShiftStartTimeChanged,
    TResult Function(TimeOfDay time)? morningShiftEndTimeChanged,
    TResult Function(TimeOfDay time)? afternoonShiftStartTimeChanged,
    TResult Function()? formSubmitted,
  }) {
    return formSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TimeOfDay time)? morningShiftStartTimeChanged,
    TResult Function(TimeOfDay time)? morningShiftEndTimeChanged,
    TResult Function(TimeOfDay time)? afternoonShiftStartTimeChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MorningShiftStartTimeChanged value)
        morningShiftStartTimeChanged,
    required TResult Function(_MorningShiftEndTimeChanged value)
        morningShiftEndTimeChanged,
    required TResult Function(_AfternoonShiftStartTimeChanged value)
        afternoonShiftStartTimeChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return formSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MorningShiftStartTimeChanged value)?
        morningShiftStartTimeChanged,
    TResult Function(_MorningShiftEndTimeChanged value)?
        morningShiftEndTimeChanged,
    TResult Function(_AfternoonShiftStartTimeChanged value)?
        afternoonShiftStartTimeChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
  }) {
    return formSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MorningShiftStartTimeChanged value)?
        morningShiftStartTimeChanged,
    TResult Function(_MorningShiftEndTimeChanged value)?
        morningShiftEndTimeChanged,
    TResult Function(_AfternoonShiftStartTimeChanged value)?
        afternoonShiftStartTimeChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(this);
    }
    return orElse();
  }
}

abstract class _FormSubmitted implements AssignScheduleFormEvent {
  const factory _FormSubmitted() = _$_FormSubmitted;
}

/// @nodoc
mixin _$AssignScheduleFormState {
  TimeOfDay get morningShiftStart => throw _privateConstructorUsedError;
  TimeOfDay get morningShiftEnd => throw _privateConstructorUsedError;
  TimeOfDay get afternoonShiftStart => throw _privateConstructorUsedError;
  TimeOfDay get afternoonShiftEnd => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Either<ScheduleFailure, Unit>? get scheduleFailureOrUnit =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AssignScheduleFormStateCopyWith<AssignScheduleFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignScheduleFormStateCopyWith<$Res> {
  factory $AssignScheduleFormStateCopyWith(AssignScheduleFormState value,
          $Res Function(AssignScheduleFormState) then) =
      _$AssignScheduleFormStateCopyWithImpl<$Res>;
  $Res call(
      {TimeOfDay morningShiftStart,
      TimeOfDay morningShiftEnd,
      TimeOfDay afternoonShiftStart,
      TimeOfDay afternoonShiftEnd,
      bool isSubmitting,
      bool isLoading,
      Either<ScheduleFailure, Unit>? scheduleFailureOrUnit});
}

/// @nodoc
class _$AssignScheduleFormStateCopyWithImpl<$Res>
    implements $AssignScheduleFormStateCopyWith<$Res> {
  _$AssignScheduleFormStateCopyWithImpl(this._value, this._then);

  final AssignScheduleFormState _value;
  // ignore: unused_field
  final $Res Function(AssignScheduleFormState) _then;

  @override
  $Res call({
    Object? morningShiftStart = freezed,
    Object? morningShiftEnd = freezed,
    Object? afternoonShiftStart = freezed,
    Object? afternoonShiftEnd = freezed,
    Object? isSubmitting = freezed,
    Object? isLoading = freezed,
    Object? scheduleFailureOrUnit = freezed,
  }) {
    return _then(_value.copyWith(
      morningShiftStart: morningShiftStart == freezed
          ? _value.morningShiftStart
          : morningShiftStart // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      morningShiftEnd: morningShiftEnd == freezed
          ? _value.morningShiftEnd
          : morningShiftEnd // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      afternoonShiftStart: afternoonShiftStart == freezed
          ? _value.afternoonShiftStart
          : afternoonShiftStart // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      afternoonShiftEnd: afternoonShiftEnd == freezed
          ? _value.afternoonShiftEnd
          : afternoonShiftEnd // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      scheduleFailureOrUnit: scheduleFailureOrUnit == freezed
          ? _value.scheduleFailureOrUnit
          : scheduleFailureOrUnit // ignore: cast_nullable_to_non_nullable
              as Either<ScheduleFailure, Unit>?,
    ));
  }
}

/// @nodoc
abstract class _$$_AssignScheduleFormStateCopyWith<$Res>
    implements $AssignScheduleFormStateCopyWith<$Res> {
  factory _$$_AssignScheduleFormStateCopyWith(_$_AssignScheduleFormState value,
          $Res Function(_$_AssignScheduleFormState) then) =
      __$$_AssignScheduleFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TimeOfDay morningShiftStart,
      TimeOfDay morningShiftEnd,
      TimeOfDay afternoonShiftStart,
      TimeOfDay afternoonShiftEnd,
      bool isSubmitting,
      bool isLoading,
      Either<ScheduleFailure, Unit>? scheduleFailureOrUnit});
}

/// @nodoc
class __$$_AssignScheduleFormStateCopyWithImpl<$Res>
    extends _$AssignScheduleFormStateCopyWithImpl<$Res>
    implements _$$_AssignScheduleFormStateCopyWith<$Res> {
  __$$_AssignScheduleFormStateCopyWithImpl(_$_AssignScheduleFormState _value,
      $Res Function(_$_AssignScheduleFormState) _then)
      : super(_value, (v) => _then(v as _$_AssignScheduleFormState));

  @override
  _$_AssignScheduleFormState get _value =>
      super._value as _$_AssignScheduleFormState;

  @override
  $Res call({
    Object? morningShiftStart = freezed,
    Object? morningShiftEnd = freezed,
    Object? afternoonShiftStart = freezed,
    Object? afternoonShiftEnd = freezed,
    Object? isSubmitting = freezed,
    Object? isLoading = freezed,
    Object? scheduleFailureOrUnit = freezed,
  }) {
    return _then(_$_AssignScheduleFormState(
      morningShiftStart: morningShiftStart == freezed
          ? _value.morningShiftStart
          : morningShiftStart // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      morningShiftEnd: morningShiftEnd == freezed
          ? _value.morningShiftEnd
          : morningShiftEnd // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      afternoonShiftStart: afternoonShiftStart == freezed
          ? _value.afternoonShiftStart
          : afternoonShiftStart // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      afternoonShiftEnd: afternoonShiftEnd == freezed
          ? _value.afternoonShiftEnd
          : afternoonShiftEnd // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      scheduleFailureOrUnit: scheduleFailureOrUnit == freezed
          ? _value.scheduleFailureOrUnit
          : scheduleFailureOrUnit // ignore: cast_nullable_to_non_nullable
              as Either<ScheduleFailure, Unit>?,
    ));
  }
}

/// @nodoc

class _$_AssignScheduleFormState implements _AssignScheduleFormState {
  const _$_AssignScheduleFormState(
      {required this.morningShiftStart,
      required this.morningShiftEnd,
      required this.afternoonShiftStart,
      required this.afternoonShiftEnd,
      required this.isSubmitting,
      required this.isLoading,
      required this.scheduleFailureOrUnit});

  @override
  final TimeOfDay morningShiftStart;
  @override
  final TimeOfDay morningShiftEnd;
  @override
  final TimeOfDay afternoonShiftStart;
  @override
  final TimeOfDay afternoonShiftEnd;
  @override
  final bool isSubmitting;
  @override
  final bool isLoading;
  @override
  final Either<ScheduleFailure, Unit>? scheduleFailureOrUnit;

  @override
  String toString() {
    return 'AssignScheduleFormState(morningShiftStart: $morningShiftStart, morningShiftEnd: $morningShiftEnd, afternoonShiftStart: $afternoonShiftStart, afternoonShiftEnd: $afternoonShiftEnd, isSubmitting: $isSubmitting, isLoading: $isLoading, scheduleFailureOrUnit: $scheduleFailureOrUnit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssignScheduleFormState &&
            const DeepCollectionEquality()
                .equals(other.morningShiftStart, morningShiftStart) &&
            const DeepCollectionEquality()
                .equals(other.morningShiftEnd, morningShiftEnd) &&
            const DeepCollectionEquality()
                .equals(other.afternoonShiftStart, afternoonShiftStart) &&
            const DeepCollectionEquality()
                .equals(other.afternoonShiftEnd, afternoonShiftEnd) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.scheduleFailureOrUnit, scheduleFailureOrUnit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(morningShiftStart),
      const DeepCollectionEquality().hash(morningShiftEnd),
      const DeepCollectionEquality().hash(afternoonShiftStart),
      const DeepCollectionEquality().hash(afternoonShiftEnd),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(scheduleFailureOrUnit));

  @JsonKey(ignore: true)
  @override
  _$$_AssignScheduleFormStateCopyWith<_$_AssignScheduleFormState>
      get copyWith =>
          __$$_AssignScheduleFormStateCopyWithImpl<_$_AssignScheduleFormState>(
              this, _$identity);
}

abstract class _AssignScheduleFormState implements AssignScheduleFormState {
  const factory _AssignScheduleFormState(
      {required final TimeOfDay morningShiftStart,
      required final TimeOfDay morningShiftEnd,
      required final TimeOfDay afternoonShiftStart,
      required final TimeOfDay afternoonShiftEnd,
      required final bool isSubmitting,
      required final bool isLoading,
      required final Either<ScheduleFailure, Unit>?
          scheduleFailureOrUnit}) = _$_AssignScheduleFormState;

  @override
  TimeOfDay get morningShiftStart => throw _privateConstructorUsedError;
  @override
  TimeOfDay get morningShiftEnd => throw _privateConstructorUsedError;
  @override
  TimeOfDay get afternoonShiftStart => throw _privateConstructorUsedError;
  @override
  TimeOfDay get afternoonShiftEnd => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Either<ScheduleFailure, Unit>? get scheduleFailureOrUnit =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AssignScheduleFormStateCopyWith<_$_AssignScheduleFormState>
      get copyWith => throw _privateConstructorUsedError;
}

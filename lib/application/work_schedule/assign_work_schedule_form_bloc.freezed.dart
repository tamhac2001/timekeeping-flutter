// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'assign_work_schedule_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AssignWorkScheduleFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessToken) workScheduleRequested,
    required TResult Function(TimeOfDay time) morningShiftStartTimeChanged,
    required TResult Function(TimeOfDay time) morningShiftEndTimeChanged,
    required TResult Function(TimeOfDay time) afternoonShiftStartTimeChanged,
    required TResult Function() formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String accessToken)? workScheduleRequested,
    TResult Function(TimeOfDay time)? morningShiftStartTimeChanged,
    TResult Function(TimeOfDay time)? morningShiftEndTimeChanged,
    TResult Function(TimeOfDay time)? afternoonShiftStartTimeChanged,
    TResult Function()? formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessToken)? workScheduleRequested,
    TResult Function(TimeOfDay time)? morningShiftStartTimeChanged,
    TResult Function(TimeOfDay time)? morningShiftEndTimeChanged,
    TResult Function(TimeOfDay time)? afternoonShiftStartTimeChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorkScheduleRequested value)
        workScheduleRequested,
    required TResult Function(MorningShiftStartTimeChanged value)
        morningShiftStartTimeChanged,
    required TResult Function(MorningShiftEndTimeChanged value)
        morningShiftEndTimeChanged,
    required TResult Function(AfternoonShiftStartTimeChanged value)
        afternoonShiftStartTimeChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WorkScheduleRequested value)? workScheduleRequested,
    TResult Function(MorningShiftStartTimeChanged value)?
        morningShiftStartTimeChanged,
    TResult Function(MorningShiftEndTimeChanged value)?
        morningShiftEndTimeChanged,
    TResult Function(AfternoonShiftStartTimeChanged value)?
        afternoonShiftStartTimeChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkScheduleRequested value)? workScheduleRequested,
    TResult Function(MorningShiftStartTimeChanged value)?
        morningShiftStartTimeChanged,
    TResult Function(MorningShiftEndTimeChanged value)?
        morningShiftEndTimeChanged,
    TResult Function(AfternoonShiftStartTimeChanged value)?
        afternoonShiftStartTimeChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignWorkScheduleFormEventCopyWith<$Res> {
  factory $AssignWorkScheduleFormEventCopyWith(
          AssignWorkScheduleFormEvent value,
          $Res Function(AssignWorkScheduleFormEvent) then) =
      _$AssignWorkScheduleFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AssignWorkScheduleFormEventCopyWithImpl<$Res>
    implements $AssignWorkScheduleFormEventCopyWith<$Res> {
  _$AssignWorkScheduleFormEventCopyWithImpl(this._value, this._then);

  final AssignWorkScheduleFormEvent _value;
  // ignore: unused_field
  final $Res Function(AssignWorkScheduleFormEvent) _then;
}

/// @nodoc
abstract class _$$WorkScheduleRequestedCopyWith<$Res> {
  factory _$$WorkScheduleRequestedCopyWith(_$WorkScheduleRequested value,
          $Res Function(_$WorkScheduleRequested) then) =
      __$$WorkScheduleRequestedCopyWithImpl<$Res>;
  $Res call({String accessToken});
}

/// @nodoc
class __$$WorkScheduleRequestedCopyWithImpl<$Res>
    extends _$AssignWorkScheduleFormEventCopyWithImpl<$Res>
    implements _$$WorkScheduleRequestedCopyWith<$Res> {
  __$$WorkScheduleRequestedCopyWithImpl(_$WorkScheduleRequested _value,
      $Res Function(_$WorkScheduleRequested) _then)
      : super(_value, (v) => _then(v as _$WorkScheduleRequested));

  @override
  _$WorkScheduleRequested get _value => super._value as _$WorkScheduleRequested;

  @override
  $Res call({
    Object? accessToken = freezed,
  }) {
    return _then(_$WorkScheduleRequested(
      accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WorkScheduleRequested implements WorkScheduleRequested {
  const _$WorkScheduleRequested(this.accessToken);

  @override
  final String accessToken;

  @override
  String toString() {
    return 'AssignWorkScheduleFormEvent.workScheduleRequested(accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkScheduleRequested &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(accessToken));

  @JsonKey(ignore: true)
  @override
  _$$WorkScheduleRequestedCopyWith<_$WorkScheduleRequested> get copyWith =>
      __$$WorkScheduleRequestedCopyWithImpl<_$WorkScheduleRequested>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessToken) workScheduleRequested,
    required TResult Function(TimeOfDay time) morningShiftStartTimeChanged,
    required TResult Function(TimeOfDay time) morningShiftEndTimeChanged,
    required TResult Function(TimeOfDay time) afternoonShiftStartTimeChanged,
    required TResult Function() formSubmitted,
  }) {
    return workScheduleRequested(accessToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String accessToken)? workScheduleRequested,
    TResult Function(TimeOfDay time)? morningShiftStartTimeChanged,
    TResult Function(TimeOfDay time)? morningShiftEndTimeChanged,
    TResult Function(TimeOfDay time)? afternoonShiftStartTimeChanged,
    TResult Function()? formSubmitted,
  }) {
    return workScheduleRequested?.call(accessToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessToken)? workScheduleRequested,
    TResult Function(TimeOfDay time)? morningShiftStartTimeChanged,
    TResult Function(TimeOfDay time)? morningShiftEndTimeChanged,
    TResult Function(TimeOfDay time)? afternoonShiftStartTimeChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (workScheduleRequested != null) {
      return workScheduleRequested(accessToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorkScheduleRequested value)
        workScheduleRequested,
    required TResult Function(MorningShiftStartTimeChanged value)
        morningShiftStartTimeChanged,
    required TResult Function(MorningShiftEndTimeChanged value)
        morningShiftEndTimeChanged,
    required TResult Function(AfternoonShiftStartTimeChanged value)
        afternoonShiftStartTimeChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) {
    return workScheduleRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WorkScheduleRequested value)? workScheduleRequested,
    TResult Function(MorningShiftStartTimeChanged value)?
        morningShiftStartTimeChanged,
    TResult Function(MorningShiftEndTimeChanged value)?
        morningShiftEndTimeChanged,
    TResult Function(AfternoonShiftStartTimeChanged value)?
        afternoonShiftStartTimeChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
  }) {
    return workScheduleRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkScheduleRequested value)? workScheduleRequested,
    TResult Function(MorningShiftStartTimeChanged value)?
        morningShiftStartTimeChanged,
    TResult Function(MorningShiftEndTimeChanged value)?
        morningShiftEndTimeChanged,
    TResult Function(AfternoonShiftStartTimeChanged value)?
        afternoonShiftStartTimeChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (workScheduleRequested != null) {
      return workScheduleRequested(this);
    }
    return orElse();
  }
}

abstract class WorkScheduleRequested implements AssignWorkScheduleFormEvent {
  const factory WorkScheduleRequested(final String accessToken) =
      _$WorkScheduleRequested;

  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$WorkScheduleRequestedCopyWith<_$WorkScheduleRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MorningShiftStartTimeChangedCopyWith<$Res> {
  factory _$$MorningShiftStartTimeChangedCopyWith(
          _$MorningShiftStartTimeChanged value,
          $Res Function(_$MorningShiftStartTimeChanged) then) =
      __$$MorningShiftStartTimeChangedCopyWithImpl<$Res>;
  $Res call({TimeOfDay time});
}

/// @nodoc
class __$$MorningShiftStartTimeChangedCopyWithImpl<$Res>
    extends _$AssignWorkScheduleFormEventCopyWithImpl<$Res>
    implements _$$MorningShiftStartTimeChangedCopyWith<$Res> {
  __$$MorningShiftStartTimeChangedCopyWithImpl(
      _$MorningShiftStartTimeChanged _value,
      $Res Function(_$MorningShiftStartTimeChanged) _then)
      : super(_value, (v) => _then(v as _$MorningShiftStartTimeChanged));

  @override
  _$MorningShiftStartTimeChanged get _value =>
      super._value as _$MorningShiftStartTimeChanged;

  @override
  $Res call({
    Object? time = freezed,
  }) {
    return _then(_$MorningShiftStartTimeChanged(
      time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc

class _$MorningShiftStartTimeChanged implements MorningShiftStartTimeChanged {
  const _$MorningShiftStartTimeChanged(this.time);

  @override
  final TimeOfDay time;

  @override
  String toString() {
    return 'AssignWorkScheduleFormEvent.morningShiftStartTimeChanged(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MorningShiftStartTimeChanged &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$$MorningShiftStartTimeChangedCopyWith<_$MorningShiftStartTimeChanged>
      get copyWith => __$$MorningShiftStartTimeChangedCopyWithImpl<
          _$MorningShiftStartTimeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessToken) workScheduleRequested,
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
    TResult Function(String accessToken)? workScheduleRequested,
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
    TResult Function(String accessToken)? workScheduleRequested,
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
    required TResult Function(WorkScheduleRequested value)
        workScheduleRequested,
    required TResult Function(MorningShiftStartTimeChanged value)
        morningShiftStartTimeChanged,
    required TResult Function(MorningShiftEndTimeChanged value)
        morningShiftEndTimeChanged,
    required TResult Function(AfternoonShiftStartTimeChanged value)
        afternoonShiftStartTimeChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) {
    return morningShiftStartTimeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WorkScheduleRequested value)? workScheduleRequested,
    TResult Function(MorningShiftStartTimeChanged value)?
        morningShiftStartTimeChanged,
    TResult Function(MorningShiftEndTimeChanged value)?
        morningShiftEndTimeChanged,
    TResult Function(AfternoonShiftStartTimeChanged value)?
        afternoonShiftStartTimeChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
  }) {
    return morningShiftStartTimeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkScheduleRequested value)? workScheduleRequested,
    TResult Function(MorningShiftStartTimeChanged value)?
        morningShiftStartTimeChanged,
    TResult Function(MorningShiftEndTimeChanged value)?
        morningShiftEndTimeChanged,
    TResult Function(AfternoonShiftStartTimeChanged value)?
        afternoonShiftStartTimeChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (morningShiftStartTimeChanged != null) {
      return morningShiftStartTimeChanged(this);
    }
    return orElse();
  }
}

abstract class MorningShiftStartTimeChanged
    implements AssignWorkScheduleFormEvent {
  const factory MorningShiftStartTimeChanged(final TimeOfDay time) =
      _$MorningShiftStartTimeChanged;

  TimeOfDay get time => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$MorningShiftStartTimeChangedCopyWith<_$MorningShiftStartTimeChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MorningShiftEndTimeChangedCopyWith<$Res> {
  factory _$$MorningShiftEndTimeChangedCopyWith(
          _$MorningShiftEndTimeChanged value,
          $Res Function(_$MorningShiftEndTimeChanged) then) =
      __$$MorningShiftEndTimeChangedCopyWithImpl<$Res>;
  $Res call({TimeOfDay time});
}

/// @nodoc
class __$$MorningShiftEndTimeChangedCopyWithImpl<$Res>
    extends _$AssignWorkScheduleFormEventCopyWithImpl<$Res>
    implements _$$MorningShiftEndTimeChangedCopyWith<$Res> {
  __$$MorningShiftEndTimeChangedCopyWithImpl(
      _$MorningShiftEndTimeChanged _value,
      $Res Function(_$MorningShiftEndTimeChanged) _then)
      : super(_value, (v) => _then(v as _$MorningShiftEndTimeChanged));

  @override
  _$MorningShiftEndTimeChanged get _value =>
      super._value as _$MorningShiftEndTimeChanged;

  @override
  $Res call({
    Object? time = freezed,
  }) {
    return _then(_$MorningShiftEndTimeChanged(
      time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc

class _$MorningShiftEndTimeChanged implements MorningShiftEndTimeChanged {
  const _$MorningShiftEndTimeChanged(this.time);

  @override
  final TimeOfDay time;

  @override
  String toString() {
    return 'AssignWorkScheduleFormEvent.morningShiftEndTimeChanged(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MorningShiftEndTimeChanged &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$$MorningShiftEndTimeChangedCopyWith<_$MorningShiftEndTimeChanged>
      get copyWith => __$$MorningShiftEndTimeChangedCopyWithImpl<
          _$MorningShiftEndTimeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessToken) workScheduleRequested,
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
    TResult Function(String accessToken)? workScheduleRequested,
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
    TResult Function(String accessToken)? workScheduleRequested,
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
    required TResult Function(WorkScheduleRequested value)
        workScheduleRequested,
    required TResult Function(MorningShiftStartTimeChanged value)
        morningShiftStartTimeChanged,
    required TResult Function(MorningShiftEndTimeChanged value)
        morningShiftEndTimeChanged,
    required TResult Function(AfternoonShiftStartTimeChanged value)
        afternoonShiftStartTimeChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) {
    return morningShiftEndTimeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WorkScheduleRequested value)? workScheduleRequested,
    TResult Function(MorningShiftStartTimeChanged value)?
        morningShiftStartTimeChanged,
    TResult Function(MorningShiftEndTimeChanged value)?
        morningShiftEndTimeChanged,
    TResult Function(AfternoonShiftStartTimeChanged value)?
        afternoonShiftStartTimeChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
  }) {
    return morningShiftEndTimeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkScheduleRequested value)? workScheduleRequested,
    TResult Function(MorningShiftStartTimeChanged value)?
        morningShiftStartTimeChanged,
    TResult Function(MorningShiftEndTimeChanged value)?
        morningShiftEndTimeChanged,
    TResult Function(AfternoonShiftStartTimeChanged value)?
        afternoonShiftStartTimeChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (morningShiftEndTimeChanged != null) {
      return morningShiftEndTimeChanged(this);
    }
    return orElse();
  }
}

abstract class MorningShiftEndTimeChanged
    implements AssignWorkScheduleFormEvent {
  const factory MorningShiftEndTimeChanged(final TimeOfDay time) =
      _$MorningShiftEndTimeChanged;

  TimeOfDay get time => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$MorningShiftEndTimeChangedCopyWith<_$MorningShiftEndTimeChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AfternoonShiftStartTimeChangedCopyWith<$Res> {
  factory _$$AfternoonShiftStartTimeChangedCopyWith(
          _$AfternoonShiftStartTimeChanged value,
          $Res Function(_$AfternoonShiftStartTimeChanged) then) =
      __$$AfternoonShiftStartTimeChangedCopyWithImpl<$Res>;
  $Res call({TimeOfDay time});
}

/// @nodoc
class __$$AfternoonShiftStartTimeChangedCopyWithImpl<$Res>
    extends _$AssignWorkScheduleFormEventCopyWithImpl<$Res>
    implements _$$AfternoonShiftStartTimeChangedCopyWith<$Res> {
  __$$AfternoonShiftStartTimeChangedCopyWithImpl(
      _$AfternoonShiftStartTimeChanged _value,
      $Res Function(_$AfternoonShiftStartTimeChanged) _then)
      : super(_value, (v) => _then(v as _$AfternoonShiftStartTimeChanged));

  @override
  _$AfternoonShiftStartTimeChanged get _value =>
      super._value as _$AfternoonShiftStartTimeChanged;

  @override
  $Res call({
    Object? time = freezed,
  }) {
    return _then(_$AfternoonShiftStartTimeChanged(
      time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc

class _$AfternoonShiftStartTimeChanged
    implements AfternoonShiftStartTimeChanged {
  const _$AfternoonShiftStartTimeChanged(this.time);

  @override
  final TimeOfDay time;

  @override
  String toString() {
    return 'AssignWorkScheduleFormEvent.afternoonShiftStartTimeChanged(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AfternoonShiftStartTimeChanged &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$$AfternoonShiftStartTimeChangedCopyWith<_$AfternoonShiftStartTimeChanged>
      get copyWith => __$$AfternoonShiftStartTimeChangedCopyWithImpl<
          _$AfternoonShiftStartTimeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessToken) workScheduleRequested,
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
    TResult Function(String accessToken)? workScheduleRequested,
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
    TResult Function(String accessToken)? workScheduleRequested,
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
    required TResult Function(WorkScheduleRequested value)
        workScheduleRequested,
    required TResult Function(MorningShiftStartTimeChanged value)
        morningShiftStartTimeChanged,
    required TResult Function(MorningShiftEndTimeChanged value)
        morningShiftEndTimeChanged,
    required TResult Function(AfternoonShiftStartTimeChanged value)
        afternoonShiftStartTimeChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) {
    return afternoonShiftStartTimeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WorkScheduleRequested value)? workScheduleRequested,
    TResult Function(MorningShiftStartTimeChanged value)?
        morningShiftStartTimeChanged,
    TResult Function(MorningShiftEndTimeChanged value)?
        morningShiftEndTimeChanged,
    TResult Function(AfternoonShiftStartTimeChanged value)?
        afternoonShiftStartTimeChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
  }) {
    return afternoonShiftStartTimeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkScheduleRequested value)? workScheduleRequested,
    TResult Function(MorningShiftStartTimeChanged value)?
        morningShiftStartTimeChanged,
    TResult Function(MorningShiftEndTimeChanged value)?
        morningShiftEndTimeChanged,
    TResult Function(AfternoonShiftStartTimeChanged value)?
        afternoonShiftStartTimeChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (afternoonShiftStartTimeChanged != null) {
      return afternoonShiftStartTimeChanged(this);
    }
    return orElse();
  }
}

abstract class AfternoonShiftStartTimeChanged
    implements AssignWorkScheduleFormEvent {
  const factory AfternoonShiftStartTimeChanged(final TimeOfDay time) =
      _$AfternoonShiftStartTimeChanged;

  TimeOfDay get time => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AfternoonShiftStartTimeChangedCopyWith<_$AfternoonShiftStartTimeChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormSubmittedCopyWith<$Res> {
  factory _$$FormSubmittedCopyWith(
          _$FormSubmitted value, $Res Function(_$FormSubmitted) then) =
      __$$FormSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormSubmittedCopyWithImpl<$Res>
    extends _$AssignWorkScheduleFormEventCopyWithImpl<$Res>
    implements _$$FormSubmittedCopyWith<$Res> {
  __$$FormSubmittedCopyWithImpl(
      _$FormSubmitted _value, $Res Function(_$FormSubmitted) _then)
      : super(_value, (v) => _then(v as _$FormSubmitted));

  @override
  _$FormSubmitted get _value => super._value as _$FormSubmitted;
}

/// @nodoc

class _$FormSubmitted implements FormSubmitted {
  const _$FormSubmitted();

  @override
  String toString() {
    return 'AssignWorkScheduleFormEvent.formSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FormSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessToken) workScheduleRequested,
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
    TResult Function(String accessToken)? workScheduleRequested,
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
    TResult Function(String accessToken)? workScheduleRequested,
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
    required TResult Function(WorkScheduleRequested value)
        workScheduleRequested,
    required TResult Function(MorningShiftStartTimeChanged value)
        morningShiftStartTimeChanged,
    required TResult Function(MorningShiftEndTimeChanged value)
        morningShiftEndTimeChanged,
    required TResult Function(AfternoonShiftStartTimeChanged value)
        afternoonShiftStartTimeChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) {
    return formSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WorkScheduleRequested value)? workScheduleRequested,
    TResult Function(MorningShiftStartTimeChanged value)?
        morningShiftStartTimeChanged,
    TResult Function(MorningShiftEndTimeChanged value)?
        morningShiftEndTimeChanged,
    TResult Function(AfternoonShiftStartTimeChanged value)?
        afternoonShiftStartTimeChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
  }) {
    return formSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkScheduleRequested value)? workScheduleRequested,
    TResult Function(MorningShiftStartTimeChanged value)?
        morningShiftStartTimeChanged,
    TResult Function(MorningShiftEndTimeChanged value)?
        morningShiftEndTimeChanged,
    TResult Function(AfternoonShiftStartTimeChanged value)?
        afternoonShiftStartTimeChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(this);
    }
    return orElse();
  }
}

abstract class FormSubmitted implements AssignWorkScheduleFormEvent {
  const factory FormSubmitted() = _$FormSubmitted;
}

/// @nodoc
mixin _$AssignWorkScheduleFormState {
  TimeOfDay get morningShiftStartTime => throw _privateConstructorUsedError;
  TimeOfDay get morningShiftEndTime => throw _privateConstructorUsedError;
  TimeOfDay get afternoonShiftStartTime => throw _privateConstructorUsedError;
  TimeOfDay get afternoonShiftEndTime => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get alreadyHasWorkSchedule => throw _privateConstructorUsedError;
  bool? get successOrFail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AssignWorkScheduleFormStateCopyWith<AssignWorkScheduleFormState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignWorkScheduleFormStateCopyWith<$Res> {
  factory $AssignWorkScheduleFormStateCopyWith(
          AssignWorkScheduleFormState value,
          $Res Function(AssignWorkScheduleFormState) then) =
      _$AssignWorkScheduleFormStateCopyWithImpl<$Res>;
  $Res call(
      {TimeOfDay morningShiftStartTime,
      TimeOfDay morningShiftEndTime,
      TimeOfDay afternoonShiftStartTime,
      TimeOfDay afternoonShiftEndTime,
      bool isSubmitting,
      bool alreadyHasWorkSchedule,
      bool? successOrFail});
}

/// @nodoc
class _$AssignWorkScheduleFormStateCopyWithImpl<$Res>
    implements $AssignWorkScheduleFormStateCopyWith<$Res> {
  _$AssignWorkScheduleFormStateCopyWithImpl(this._value, this._then);

  final AssignWorkScheduleFormState _value;
  // ignore: unused_field
  final $Res Function(AssignWorkScheduleFormState) _then;

  @override
  $Res call({
    Object? morningShiftStartTime = freezed,
    Object? morningShiftEndTime = freezed,
    Object? afternoonShiftStartTime = freezed,
    Object? afternoonShiftEndTime = freezed,
    Object? isSubmitting = freezed,
    Object? alreadyHasWorkSchedule = freezed,
    Object? successOrFail = freezed,
  }) {
    return _then(_value.copyWith(
      morningShiftStartTime: morningShiftStartTime == freezed
          ? _value.morningShiftStartTime
          : morningShiftStartTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      morningShiftEndTime: morningShiftEndTime == freezed
          ? _value.morningShiftEndTime
          : morningShiftEndTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      afternoonShiftStartTime: afternoonShiftStartTime == freezed
          ? _value.afternoonShiftStartTime
          : afternoonShiftStartTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      afternoonShiftEndTime: afternoonShiftEndTime == freezed
          ? _value.afternoonShiftEndTime
          : afternoonShiftEndTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      alreadyHasWorkSchedule: alreadyHasWorkSchedule == freezed
          ? _value.alreadyHasWorkSchedule
          : alreadyHasWorkSchedule // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrFail: successOrFail == freezed
          ? _value.successOrFail
          : successOrFail // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_AssignWorkScheduleFormStateCopyWith<$Res>
    implements $AssignWorkScheduleFormStateCopyWith<$Res> {
  factory _$$_AssignWorkScheduleFormStateCopyWith(
          _$_AssignWorkScheduleFormState value,
          $Res Function(_$_AssignWorkScheduleFormState) then) =
      __$$_AssignWorkScheduleFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TimeOfDay morningShiftStartTime,
      TimeOfDay morningShiftEndTime,
      TimeOfDay afternoonShiftStartTime,
      TimeOfDay afternoonShiftEndTime,
      bool isSubmitting,
      bool alreadyHasWorkSchedule,
      bool? successOrFail});
}

/// @nodoc
class __$$_AssignWorkScheduleFormStateCopyWithImpl<$Res>
    extends _$AssignWorkScheduleFormStateCopyWithImpl<$Res>
    implements _$$_AssignWorkScheduleFormStateCopyWith<$Res> {
  __$$_AssignWorkScheduleFormStateCopyWithImpl(
      _$_AssignWorkScheduleFormState _value,
      $Res Function(_$_AssignWorkScheduleFormState) _then)
      : super(_value, (v) => _then(v as _$_AssignWorkScheduleFormState));

  @override
  _$_AssignWorkScheduleFormState get _value =>
      super._value as _$_AssignWorkScheduleFormState;

  @override
  $Res call({
    Object? morningShiftStartTime = freezed,
    Object? morningShiftEndTime = freezed,
    Object? afternoonShiftStartTime = freezed,
    Object? afternoonShiftEndTime = freezed,
    Object? isSubmitting = freezed,
    Object? alreadyHasWorkSchedule = freezed,
    Object? successOrFail = freezed,
  }) {
    return _then(_$_AssignWorkScheduleFormState(
      morningShiftStartTime: morningShiftStartTime == freezed
          ? _value.morningShiftStartTime
          : morningShiftStartTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      morningShiftEndTime: morningShiftEndTime == freezed
          ? _value.morningShiftEndTime
          : morningShiftEndTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      afternoonShiftStartTime: afternoonShiftStartTime == freezed
          ? _value.afternoonShiftStartTime
          : afternoonShiftStartTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      afternoonShiftEndTime: afternoonShiftEndTime == freezed
          ? _value.afternoonShiftEndTime
          : afternoonShiftEndTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      alreadyHasWorkSchedule: alreadyHasWorkSchedule == freezed
          ? _value.alreadyHasWorkSchedule
          : alreadyHasWorkSchedule // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrFail: successOrFail == freezed
          ? _value.successOrFail
          : successOrFail // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_AssignWorkScheduleFormState implements _AssignWorkScheduleFormState {
  const _$_AssignWorkScheduleFormState(
      {required this.morningShiftStartTime,
      required this.morningShiftEndTime,
      required this.afternoonShiftStartTime,
      required this.afternoonShiftEndTime,
      required this.isSubmitting,
      required this.alreadyHasWorkSchedule,
      this.successOrFail});

  @override
  final TimeOfDay morningShiftStartTime;
  @override
  final TimeOfDay morningShiftEndTime;
  @override
  final TimeOfDay afternoonShiftStartTime;
  @override
  final TimeOfDay afternoonShiftEndTime;
  @override
  final bool isSubmitting;
  @override
  final bool alreadyHasWorkSchedule;
  @override
  final bool? successOrFail;

  @override
  String toString() {
    return 'AssignWorkScheduleFormState(morningShiftStartTime: $morningShiftStartTime, morningShiftEndTime: $morningShiftEndTime, afternoonShiftStartTime: $afternoonShiftStartTime, afternoonShiftEndTime: $afternoonShiftEndTime, isSubmitting: $isSubmitting, alreadyHasWorkSchedule: $alreadyHasWorkSchedule, successOrFail: $successOrFail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssignWorkScheduleFormState &&
            const DeepCollectionEquality()
                .equals(other.morningShiftStartTime, morningShiftStartTime) &&
            const DeepCollectionEquality()
                .equals(other.morningShiftEndTime, morningShiftEndTime) &&
            const DeepCollectionEquality().equals(
                other.afternoonShiftStartTime, afternoonShiftStartTime) &&
            const DeepCollectionEquality()
                .equals(other.afternoonShiftEndTime, afternoonShiftEndTime) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality()
                .equals(other.alreadyHasWorkSchedule, alreadyHasWorkSchedule) &&
            const DeepCollectionEquality()
                .equals(other.successOrFail, successOrFail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(morningShiftStartTime),
      const DeepCollectionEquality().hash(morningShiftEndTime),
      const DeepCollectionEquality().hash(afternoonShiftStartTime),
      const DeepCollectionEquality().hash(afternoonShiftEndTime),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(alreadyHasWorkSchedule),
      const DeepCollectionEquality().hash(successOrFail));

  @JsonKey(ignore: true)
  @override
  _$$_AssignWorkScheduleFormStateCopyWith<_$_AssignWorkScheduleFormState>
      get copyWith => __$$_AssignWorkScheduleFormStateCopyWithImpl<
          _$_AssignWorkScheduleFormState>(this, _$identity);
}

abstract class _AssignWorkScheduleFormState
    implements AssignWorkScheduleFormState {
  const factory _AssignWorkScheduleFormState(
      {required final TimeOfDay morningShiftStartTime,
      required final TimeOfDay morningShiftEndTime,
      required final TimeOfDay afternoonShiftStartTime,
      required final TimeOfDay afternoonShiftEndTime,
      required final bool isSubmitting,
      required final bool alreadyHasWorkSchedule,
      final bool? successOrFail}) = _$_AssignWorkScheduleFormState;

  @override
  TimeOfDay get morningShiftStartTime => throw _privateConstructorUsedError;
  @override
  TimeOfDay get morningShiftEndTime => throw _privateConstructorUsedError;
  @override
  TimeOfDay get afternoonShiftStartTime => throw _privateConstructorUsedError;
  @override
  TimeOfDay get afternoonShiftEndTime => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get alreadyHasWorkSchedule => throw _privateConstructorUsedError;
  @override
  bool? get successOrFail => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AssignWorkScheduleFormStateCopyWith<_$_AssignWorkScheduleFormState>
      get copyWith => throw _privateConstructorUsedError;
}

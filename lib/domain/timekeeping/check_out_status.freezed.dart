// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'check_out_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckOutStatus {
  TimeOfDay get scheduledTime => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TimeOfDay scheduledTime) unknown,
    required TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)
        onTime,
    required TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)
        early,
    required TResult Function(TimeOfDay scheduledTime) forgot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TimeOfDay scheduledTime)? unknown,
    TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)? onTime,
    TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)? early,
    TResult Function(TimeOfDay scheduledTime)? forgot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TimeOfDay scheduledTime)? unknown,
    TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)? onTime,
    TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)? early,
    TResult Function(TimeOfDay scheduledTime)? forgot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_OnTime value) onTime,
    required TResult Function(_Early value) early,
    required TResult Function(_Forgot value) forgot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_OnTime value)? onTime,
    TResult Function(_Early value)? early,
    TResult Function(_Forgot value)? forgot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_OnTime value)? onTime,
    TResult Function(_Early value)? early,
    TResult Function(_Forgot value)? forgot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckOutStatusCopyWith<CheckOutStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckOutStatusCopyWith<$Res> {
  factory $CheckOutStatusCopyWith(
          CheckOutStatus value, $Res Function(CheckOutStatus) then) =
      _$CheckOutStatusCopyWithImpl<$Res>;
  $Res call({TimeOfDay scheduledTime});
}

/// @nodoc
class _$CheckOutStatusCopyWithImpl<$Res>
    implements $CheckOutStatusCopyWith<$Res> {
  _$CheckOutStatusCopyWithImpl(this._value, this._then);

  final CheckOutStatus _value;
  // ignore: unused_field
  final $Res Function(CheckOutStatus) _then;

  @override
  $Res call({
    Object? scheduledTime = freezed,
  }) {
    return _then(_value.copyWith(
      scheduledTime: scheduledTime == freezed
          ? _value.scheduledTime
          : scheduledTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc
abstract class _$$_UnknownCopyWith<$Res>
    implements $CheckOutStatusCopyWith<$Res> {
  factory _$$_UnknownCopyWith(
          _$_Unknown value, $Res Function(_$_Unknown) then) =
      __$$_UnknownCopyWithImpl<$Res>;
  @override
  $Res call({TimeOfDay scheduledTime});
}

/// @nodoc
class __$$_UnknownCopyWithImpl<$Res> extends _$CheckOutStatusCopyWithImpl<$Res>
    implements _$$_UnknownCopyWith<$Res> {
  __$$_UnknownCopyWithImpl(_$_Unknown _value, $Res Function(_$_Unknown) _then)
      : super(_value, (v) => _then(v as _$_Unknown));

  @override
  _$_Unknown get _value => super._value as _$_Unknown;

  @override
  $Res call({
    Object? scheduledTime = freezed,
  }) {
    return _then(_$_Unknown(
      scheduledTime == freezed
          ? _value.scheduledTime
          : scheduledTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc

class _$_Unknown extends _Unknown {
  const _$_Unknown(this.scheduledTime) : super._();

  @override
  final TimeOfDay scheduledTime;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unknown &&
            const DeepCollectionEquality()
                .equals(other.scheduledTime, scheduledTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(scheduledTime));

  @JsonKey(ignore: true)
  @override
  _$$_UnknownCopyWith<_$_Unknown> get copyWith =>
      __$$_UnknownCopyWithImpl<_$_Unknown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TimeOfDay scheduledTime) unknown,
    required TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)
        onTime,
    required TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)
        early,
    required TResult Function(TimeOfDay scheduledTime) forgot,
  }) {
    return unknown(scheduledTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TimeOfDay scheduledTime)? unknown,
    TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)? onTime,
    TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)? early,
    TResult Function(TimeOfDay scheduledTime)? forgot,
  }) {
    return unknown?.call(scheduledTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TimeOfDay scheduledTime)? unknown,
    TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)? onTime,
    TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)? early,
    TResult Function(TimeOfDay scheduledTime)? forgot,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(scheduledTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_OnTime value) onTime,
    required TResult Function(_Early value) early,
    required TResult Function(_Forgot value) forgot,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_OnTime value)? onTime,
    TResult Function(_Early value)? early,
    TResult Function(_Forgot value)? forgot,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_OnTime value)? onTime,
    TResult Function(_Early value)? early,
    TResult Function(_Forgot value)? forgot,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown extends CheckOutStatus {
  const factory _Unknown(final TimeOfDay scheduledTime) = _$_Unknown;
  const _Unknown._() : super._();

  @override
  TimeOfDay get scheduledTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UnknownCopyWith<_$_Unknown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnTimeCopyWith<$Res>
    implements $CheckOutStatusCopyWith<$Res> {
  factory _$$_OnTimeCopyWith(_$_OnTime value, $Res Function(_$_OnTime) then) =
      __$$_OnTimeCopyWithImpl<$Res>;
  @override
  $Res call({TimeOfDay scheduledTime, DateTime checkOutTime});
}

/// @nodoc
class __$$_OnTimeCopyWithImpl<$Res> extends _$CheckOutStatusCopyWithImpl<$Res>
    implements _$$_OnTimeCopyWith<$Res> {
  __$$_OnTimeCopyWithImpl(_$_OnTime _value, $Res Function(_$_OnTime) _then)
      : super(_value, (v) => _then(v as _$_OnTime));

  @override
  _$_OnTime get _value => super._value as _$_OnTime;

  @override
  $Res call({
    Object? scheduledTime = freezed,
    Object? checkOutTime = freezed,
  }) {
    return _then(_$_OnTime(
      scheduledTime == freezed
          ? _value.scheduledTime
          : scheduledTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      checkOutTime == freezed
          ? _value.checkOutTime
          : checkOutTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_OnTime extends _OnTime {
  const _$_OnTime(this.scheduledTime, this.checkOutTime) : super._();

  @override
  final TimeOfDay scheduledTime;
  @override
  final DateTime checkOutTime;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnTime &&
            const DeepCollectionEquality()
                .equals(other.scheduledTime, scheduledTime) &&
            const DeepCollectionEquality()
                .equals(other.checkOutTime, checkOutTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(scheduledTime),
      const DeepCollectionEquality().hash(checkOutTime));

  @JsonKey(ignore: true)
  @override
  _$$_OnTimeCopyWith<_$_OnTime> get copyWith =>
      __$$_OnTimeCopyWithImpl<_$_OnTime>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TimeOfDay scheduledTime) unknown,
    required TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)
        onTime,
    required TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)
        early,
    required TResult Function(TimeOfDay scheduledTime) forgot,
  }) {
    return onTime(scheduledTime, checkOutTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TimeOfDay scheduledTime)? unknown,
    TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)? onTime,
    TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)? early,
    TResult Function(TimeOfDay scheduledTime)? forgot,
  }) {
    return onTime?.call(scheduledTime, checkOutTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TimeOfDay scheduledTime)? unknown,
    TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)? onTime,
    TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)? early,
    TResult Function(TimeOfDay scheduledTime)? forgot,
    required TResult orElse(),
  }) {
    if (onTime != null) {
      return onTime(scheduledTime, checkOutTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_OnTime value) onTime,
    required TResult Function(_Early value) early,
    required TResult Function(_Forgot value) forgot,
  }) {
    return onTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_OnTime value)? onTime,
    TResult Function(_Early value)? early,
    TResult Function(_Forgot value)? forgot,
  }) {
    return onTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_OnTime value)? onTime,
    TResult Function(_Early value)? early,
    TResult Function(_Forgot value)? forgot,
    required TResult orElse(),
  }) {
    if (onTime != null) {
      return onTime(this);
    }
    return orElse();
  }
}

abstract class _OnTime extends CheckOutStatus {
  const factory _OnTime(
      final TimeOfDay scheduledTime, final DateTime checkOutTime) = _$_OnTime;
  const _OnTime._() : super._();

  @override
  TimeOfDay get scheduledTime => throw _privateConstructorUsedError;
  DateTime get checkOutTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OnTimeCopyWith<_$_OnTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EarlyCopyWith<$Res>
    implements $CheckOutStatusCopyWith<$Res> {
  factory _$$_EarlyCopyWith(_$_Early value, $Res Function(_$_Early) then) =
      __$$_EarlyCopyWithImpl<$Res>;
  @override
  $Res call({TimeOfDay scheduledTime, DateTime checkOutTime});
}

/// @nodoc
class __$$_EarlyCopyWithImpl<$Res> extends _$CheckOutStatusCopyWithImpl<$Res>
    implements _$$_EarlyCopyWith<$Res> {
  __$$_EarlyCopyWithImpl(_$_Early _value, $Res Function(_$_Early) _then)
      : super(_value, (v) => _then(v as _$_Early));

  @override
  _$_Early get _value => super._value as _$_Early;

  @override
  $Res call({
    Object? scheduledTime = freezed,
    Object? checkOutTime = freezed,
  }) {
    return _then(_$_Early(
      scheduledTime == freezed
          ? _value.scheduledTime
          : scheduledTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      checkOutTime == freezed
          ? _value.checkOutTime
          : checkOutTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Early extends _Early {
  const _$_Early(this.scheduledTime, this.checkOutTime) : super._();

  @override
  final TimeOfDay scheduledTime;
  @override
  final DateTime checkOutTime;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Early &&
            const DeepCollectionEquality()
                .equals(other.scheduledTime, scheduledTime) &&
            const DeepCollectionEquality()
                .equals(other.checkOutTime, checkOutTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(scheduledTime),
      const DeepCollectionEquality().hash(checkOutTime));

  @JsonKey(ignore: true)
  @override
  _$$_EarlyCopyWith<_$_Early> get copyWith =>
      __$$_EarlyCopyWithImpl<_$_Early>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TimeOfDay scheduledTime) unknown,
    required TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)
        onTime,
    required TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)
        early,
    required TResult Function(TimeOfDay scheduledTime) forgot,
  }) {
    return early(scheduledTime, checkOutTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TimeOfDay scheduledTime)? unknown,
    TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)? onTime,
    TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)? early,
    TResult Function(TimeOfDay scheduledTime)? forgot,
  }) {
    return early?.call(scheduledTime, checkOutTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TimeOfDay scheduledTime)? unknown,
    TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)? onTime,
    TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)? early,
    TResult Function(TimeOfDay scheduledTime)? forgot,
    required TResult orElse(),
  }) {
    if (early != null) {
      return early(scheduledTime, checkOutTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_OnTime value) onTime,
    required TResult Function(_Early value) early,
    required TResult Function(_Forgot value) forgot,
  }) {
    return early(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_OnTime value)? onTime,
    TResult Function(_Early value)? early,
    TResult Function(_Forgot value)? forgot,
  }) {
    return early?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_OnTime value)? onTime,
    TResult Function(_Early value)? early,
    TResult Function(_Forgot value)? forgot,
    required TResult orElse(),
  }) {
    if (early != null) {
      return early(this);
    }
    return orElse();
  }
}

abstract class _Early extends CheckOutStatus {
  const factory _Early(
      final TimeOfDay scheduledTime, final DateTime checkOutTime) = _$_Early;
  const _Early._() : super._();

  @override
  TimeOfDay get scheduledTime => throw _privateConstructorUsedError;
  DateTime get checkOutTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EarlyCopyWith<_$_Early> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ForgotCopyWith<$Res>
    implements $CheckOutStatusCopyWith<$Res> {
  factory _$$_ForgotCopyWith(_$_Forgot value, $Res Function(_$_Forgot) then) =
      __$$_ForgotCopyWithImpl<$Res>;
  @override
  $Res call({TimeOfDay scheduledTime});
}

/// @nodoc
class __$$_ForgotCopyWithImpl<$Res> extends _$CheckOutStatusCopyWithImpl<$Res>
    implements _$$_ForgotCopyWith<$Res> {
  __$$_ForgotCopyWithImpl(_$_Forgot _value, $Res Function(_$_Forgot) _then)
      : super(_value, (v) => _then(v as _$_Forgot));

  @override
  _$_Forgot get _value => super._value as _$_Forgot;

  @override
  $Res call({
    Object? scheduledTime = freezed,
  }) {
    return _then(_$_Forgot(
      scheduledTime == freezed
          ? _value.scheduledTime
          : scheduledTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc

class _$_Forgot extends _Forgot {
  const _$_Forgot(this.scheduledTime) : super._();

  @override
  final TimeOfDay scheduledTime;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Forgot &&
            const DeepCollectionEquality()
                .equals(other.scheduledTime, scheduledTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(scheduledTime));

  @JsonKey(ignore: true)
  @override
  _$$_ForgotCopyWith<_$_Forgot> get copyWith =>
      __$$_ForgotCopyWithImpl<_$_Forgot>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TimeOfDay scheduledTime) unknown,
    required TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)
        onTime,
    required TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)
        early,
    required TResult Function(TimeOfDay scheduledTime) forgot,
  }) {
    return forgot(scheduledTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TimeOfDay scheduledTime)? unknown,
    TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)? onTime,
    TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)? early,
    TResult Function(TimeOfDay scheduledTime)? forgot,
  }) {
    return forgot?.call(scheduledTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TimeOfDay scheduledTime)? unknown,
    TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)? onTime,
    TResult Function(TimeOfDay scheduledTime, DateTime checkOutTime)? early,
    TResult Function(TimeOfDay scheduledTime)? forgot,
    required TResult orElse(),
  }) {
    if (forgot != null) {
      return forgot(scheduledTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_OnTime value) onTime,
    required TResult Function(_Early value) early,
    required TResult Function(_Forgot value) forgot,
  }) {
    return forgot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_OnTime value)? onTime,
    TResult Function(_Early value)? early,
    TResult Function(_Forgot value)? forgot,
  }) {
    return forgot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_OnTime value)? onTime,
    TResult Function(_Early value)? early,
    TResult Function(_Forgot value)? forgot,
    required TResult orElse(),
  }) {
    if (forgot != null) {
      return forgot(this);
    }
    return orElse();
  }
}

abstract class _Forgot extends CheckOutStatus {
  const factory _Forgot(final TimeOfDay scheduledTime) = _$_Forgot;
  const _Forgot._() : super._();

  @override
  TimeOfDay get scheduledTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotCopyWith<_$_Forgot> get copyWith =>
      throw _privateConstructorUsedError;
}

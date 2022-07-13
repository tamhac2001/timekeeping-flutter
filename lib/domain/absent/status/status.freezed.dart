// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Status {
  String get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) denied,
    required TResult Function(String value) pending,
    required TResult Function(String value) approved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? denied,
    TResult Function(String value)? pending,
    TResult Function(String value)? approved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? denied,
    TResult Function(String value)? pending,
    TResult Function(String value)? approved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Denied value) denied,
    required TResult Function(_Pending value) pending,
    required TResult Function(Approved value) approved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Denied value)? denied,
    TResult Function(_Pending value)? pending,
    TResult Function(Approved value)? approved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Denied value)? denied,
    TResult Function(_Pending value)? pending,
    TResult Function(Approved value)? approved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$StatusCopyWithImpl<$Res> implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  final Status _value;
  // ignore: unused_field
  final $Res Function(Status) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DeniedCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$$_DeniedCopyWith(_$_Denied value, $Res Function(_$_Denied) then) =
      __$$_DeniedCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$$_DeniedCopyWithImpl<$Res> extends _$StatusCopyWithImpl<$Res>
    implements _$$_DeniedCopyWith<$Res> {
  __$$_DeniedCopyWithImpl(_$_Denied _value, $Res Function(_$_Denied) _then)
      : super(_value, (v) => _then(v as _$_Denied));

  @override
  _$_Denied get _value => super._value as _$_Denied;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Denied(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Denied extends _Denied with DiagnosticableTreeMixin {
  const _$_Denied({this.value = 'Từ chối'}) : super._();

  @override
  @JsonKey()
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Status.denied(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Status.denied'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Denied &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_DeniedCopyWith<_$_Denied> get copyWith =>
      __$$_DeniedCopyWithImpl<_$_Denied>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) denied,
    required TResult Function(String value) pending,
    required TResult Function(String value) approved,
  }) {
    return denied(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? denied,
    TResult Function(String value)? pending,
    TResult Function(String value)? approved,
  }) {
    return denied?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? denied,
    TResult Function(String value)? pending,
    TResult Function(String value)? approved,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Denied value) denied,
    required TResult Function(_Pending value) pending,
    required TResult Function(Approved value) approved,
  }) {
    return denied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Denied value)? denied,
    TResult Function(_Pending value)? pending,
    TResult Function(Approved value)? approved,
  }) {
    return denied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Denied value)? denied,
    TResult Function(_Pending value)? pending,
    TResult Function(Approved value)? approved,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied(this);
    }
    return orElse();
  }
}

abstract class _Denied extends Status {
  const factory _Denied({final String value}) = _$_Denied;
  const _Denied._() : super._();

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DeniedCopyWith<_$_Denied> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PendingCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$$_PendingCopyWith(
          _$_Pending value, $Res Function(_$_Pending) then) =
      __$$_PendingCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$$_PendingCopyWithImpl<$Res> extends _$StatusCopyWithImpl<$Res>
    implements _$$_PendingCopyWith<$Res> {
  __$$_PendingCopyWithImpl(_$_Pending _value, $Res Function(_$_Pending) _then)
      : super(_value, (v) => _then(v as _$_Pending));

  @override
  _$_Pending get _value => super._value as _$_Pending;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Pending(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Pending extends _Pending with DiagnosticableTreeMixin {
  const _$_Pending({this.value = 'Đang chờ duyệt'}) : super._();

  @override
  @JsonKey()
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Status.pending(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Status.pending'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pending &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_PendingCopyWith<_$_Pending> get copyWith =>
      __$$_PendingCopyWithImpl<_$_Pending>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) denied,
    required TResult Function(String value) pending,
    required TResult Function(String value) approved,
  }) {
    return pending(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? denied,
    TResult Function(String value)? pending,
    TResult Function(String value)? approved,
  }) {
    return pending?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? denied,
    TResult Function(String value)? pending,
    TResult Function(String value)? approved,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Denied value) denied,
    required TResult Function(_Pending value) pending,
    required TResult Function(Approved value) approved,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Denied value)? denied,
    TResult Function(_Pending value)? pending,
    TResult Function(Approved value)? approved,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Denied value)? denied,
    TResult Function(_Pending value)? pending,
    TResult Function(Approved value)? approved,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _Pending extends Status {
  const factory _Pending({final String value}) = _$_Pending;
  const _Pending._() : super._();

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PendingCopyWith<_$_Pending> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApprovedCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$$ApprovedCopyWith(
          _$Approved value, $Res Function(_$Approved) then) =
      __$$ApprovedCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$$ApprovedCopyWithImpl<$Res> extends _$StatusCopyWithImpl<$Res>
    implements _$$ApprovedCopyWith<$Res> {
  __$$ApprovedCopyWithImpl(_$Approved _value, $Res Function(_$Approved) _then)
      : super(_value, (v) => _then(v as _$Approved));

  @override
  _$Approved get _value => super._value as _$Approved;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$Approved(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Approved extends Approved with DiagnosticableTreeMixin {
  const _$Approved({this.value = 'Chấp thuận'}) : super._();

  @override
  @JsonKey()
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Status.approved(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Status.approved'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Approved &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$ApprovedCopyWith<_$Approved> get copyWith =>
      __$$ApprovedCopyWithImpl<_$Approved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) denied,
    required TResult Function(String value) pending,
    required TResult Function(String value) approved,
  }) {
    return approved(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? denied,
    TResult Function(String value)? pending,
    TResult Function(String value)? approved,
  }) {
    return approved?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? denied,
    TResult Function(String value)? pending,
    TResult Function(String value)? approved,
    required TResult orElse(),
  }) {
    if (approved != null) {
      return approved(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Denied value) denied,
    required TResult Function(_Pending value) pending,
    required TResult Function(Approved value) approved,
  }) {
    return approved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Denied value)? denied,
    TResult Function(_Pending value)? pending,
    TResult Function(Approved value)? approved,
  }) {
    return approved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Denied value)? denied,
    TResult Function(_Pending value)? pending,
    TResult Function(Approved value)? approved,
    required TResult orElse(),
  }) {
    if (approved != null) {
      return approved(this);
    }
    return orElse();
  }
}

abstract class Approved extends Status {
  const factory Approved({final String value}) = _$Approved;
  const Approved._() : super._();

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ApprovedCopyWith<_$Approved> get copyWith =>
      throw _privateConstructorUsedError;
}

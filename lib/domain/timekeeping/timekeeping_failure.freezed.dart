// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'timekeeping_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimekeepingFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unauthenticated,
    required TResult Function() qrCodeNotMatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? qrCodeNotMatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? qrCodeNotMatch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(QrCodeNotMatch value) qrCodeNotMatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(QrCodeNotMatch value)? qrCodeNotMatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(QrCodeNotMatch value)? qrCodeNotMatch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimekeepingFailureCopyWith<$Res> {
  factory $TimekeepingFailureCopyWith(
          TimekeepingFailure value, $Res Function(TimekeepingFailure) then) =
      _$TimekeepingFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimekeepingFailureCopyWithImpl<$Res>
    implements $TimekeepingFailureCopyWith<$Res> {
  _$TimekeepingFailureCopyWithImpl(this._value, this._then);

  final TimekeepingFailure _value;
  // ignore: unused_field
  final $Res Function(TimekeepingFailure) _then;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<$Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError value, $Res Function(_$ServerError) then) =
      __$$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res>
    extends _$TimekeepingFailureCopyWithImpl<$Res>
    implements _$$ServerErrorCopyWith<$Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError _value, $Res Function(_$ServerError) _then)
      : super(_value, (v) => _then(v as _$ServerError));

  @override
  _$ServerError get _value => super._value as _$ServerError;
}

/// @nodoc

class _$ServerError with DiagnosticableTreeMixin implements ServerError {
  const _$ServerError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimekeepingFailure.serverError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'TimekeepingFailure.serverError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unauthenticated,
    required TResult Function() qrCodeNotMatch,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? qrCodeNotMatch,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? qrCodeNotMatch,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(QrCodeNotMatch value) qrCodeNotMatch,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(QrCodeNotMatch value)? qrCodeNotMatch,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(QrCodeNotMatch value)? qrCodeNotMatch,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements TimekeepingFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class _$$UnauthenticatedCopyWith<$Res> {
  factory _$$UnauthenticatedCopyWith(
          _$Unauthenticated value, $Res Function(_$Unauthenticated) then) =
      __$$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedCopyWithImpl<$Res>
    extends _$TimekeepingFailureCopyWithImpl<$Res>
    implements _$$UnauthenticatedCopyWith<$Res> {
  __$$UnauthenticatedCopyWithImpl(
      _$Unauthenticated _value, $Res Function(_$Unauthenticated) _then)
      : super(_value, (v) => _then(v as _$Unauthenticated));

  @override
  _$Unauthenticated get _value => super._value as _$Unauthenticated;
}

/// @nodoc

class _$Unauthenticated
    with DiagnosticableTreeMixin
    implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimekeepingFailure.unauthenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'TimekeepingFailure.unauthenticated'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unauthenticated,
    required TResult Function() qrCodeNotMatch,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? qrCodeNotMatch,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? qrCodeNotMatch,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(QrCodeNotMatch value) qrCodeNotMatch,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(QrCodeNotMatch value)? qrCodeNotMatch,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(QrCodeNotMatch value)? qrCodeNotMatch,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements TimekeepingFailure {
  const factory Unauthenticated() = _$Unauthenticated;
}

/// @nodoc
abstract class _$$QrCodeNotMatchCopyWith<$Res> {
  factory _$$QrCodeNotMatchCopyWith(
          _$QrCodeNotMatch value, $Res Function(_$QrCodeNotMatch) then) =
      __$$QrCodeNotMatchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QrCodeNotMatchCopyWithImpl<$Res>
    extends _$TimekeepingFailureCopyWithImpl<$Res>
    implements _$$QrCodeNotMatchCopyWith<$Res> {
  __$$QrCodeNotMatchCopyWithImpl(
      _$QrCodeNotMatch _value, $Res Function(_$QrCodeNotMatch) _then)
      : super(_value, (v) => _then(v as _$QrCodeNotMatch));

  @override
  _$QrCodeNotMatch get _value => super._value as _$QrCodeNotMatch;
}

/// @nodoc

class _$QrCodeNotMatch with DiagnosticableTreeMixin implements QrCodeNotMatch {
  const _$QrCodeNotMatch();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimekeepingFailure.qrCodeNotMatch()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'TimekeepingFailure.qrCodeNotMatch'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QrCodeNotMatch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unauthenticated,
    required TResult Function() qrCodeNotMatch,
  }) {
    return qrCodeNotMatch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? qrCodeNotMatch,
  }) {
    return qrCodeNotMatch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? qrCodeNotMatch,
    required TResult orElse(),
  }) {
    if (qrCodeNotMatch != null) {
      return qrCodeNotMatch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(QrCodeNotMatch value) qrCodeNotMatch,
  }) {
    return qrCodeNotMatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(QrCodeNotMatch value)? qrCodeNotMatch,
  }) {
    return qrCodeNotMatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(QrCodeNotMatch value)? qrCodeNotMatch,
    required TResult orElse(),
  }) {
    if (qrCodeNotMatch != null) {
      return qrCodeNotMatch(this);
    }
    return orElse();
  }
}

abstract class QrCodeNotMatch implements TimekeepingFailure {
  const factory QrCodeNotMatch() = _$QrCodeNotMatch;
}

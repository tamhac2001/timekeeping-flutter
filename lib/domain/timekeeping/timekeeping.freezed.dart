// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'timekeeping.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Timekeeping {
  String get qrCodeValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimekeepingCopyWith<Timekeeping> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimekeepingCopyWith<$Res> {
  factory $TimekeepingCopyWith(
          Timekeeping value, $Res Function(Timekeeping) then) =
      _$TimekeepingCopyWithImpl<$Res>;
  $Res call({String qrCodeValue});
}

/// @nodoc
class _$TimekeepingCopyWithImpl<$Res> implements $TimekeepingCopyWith<$Res> {
  _$TimekeepingCopyWithImpl(this._value, this._then);

  final Timekeeping _value;
  // ignore: unused_field
  final $Res Function(Timekeeping) _then;

  @override
  $Res call({
    Object? qrCodeValue = freezed,
  }) {
    return _then(_value.copyWith(
      qrCodeValue: qrCodeValue == freezed
          ? _value.qrCodeValue
          : qrCodeValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TimekeepingCopyWith<$Res>
    implements $TimekeepingCopyWith<$Res> {
  factory _$$_TimekeepingCopyWith(
          _$_Timekeeping value, $Res Function(_$_Timekeeping) then) =
      __$$_TimekeepingCopyWithImpl<$Res>;
  @override
  $Res call({String qrCodeValue});
}

/// @nodoc
class __$$_TimekeepingCopyWithImpl<$Res> extends _$TimekeepingCopyWithImpl<$Res>
    implements _$$_TimekeepingCopyWith<$Res> {
  __$$_TimekeepingCopyWithImpl(
      _$_Timekeeping _value, $Res Function(_$_Timekeeping) _then)
      : super(_value, (v) => _then(v as _$_Timekeeping));

  @override
  _$_Timekeeping get _value => super._value as _$_Timekeeping;

  @override
  $Res call({
    Object? qrCodeValue = freezed,
  }) {
    return _then(_$_Timekeeping(
      qrCodeValue: qrCodeValue == freezed
          ? _value.qrCodeValue
          : qrCodeValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Timekeeping with DiagnosticableTreeMixin implements _Timekeeping {
  const _$_Timekeeping({required this.qrCodeValue});

  @override
  final String qrCodeValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Timekeeping(qrCodeValue: $qrCodeValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Timekeeping'))
      ..add(DiagnosticsProperty('qrCodeValue', qrCodeValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Timekeeping &&
            const DeepCollectionEquality()
                .equals(other.qrCodeValue, qrCodeValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(qrCodeValue));

  @JsonKey(ignore: true)
  @override
  _$$_TimekeepingCopyWith<_$_Timekeeping> get copyWith =>
      __$$_TimekeepingCopyWithImpl<_$_Timekeeping>(this, _$identity);
}

abstract class _Timekeeping implements Timekeeping {
  const factory _Timekeeping({required final String qrCodeValue}) =
      _$_Timekeeping;

  @override
  String get qrCodeValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TimekeepingCopyWith<_$_Timekeeping> get copyWith =>
      throw _privateConstructorUsedError;
}

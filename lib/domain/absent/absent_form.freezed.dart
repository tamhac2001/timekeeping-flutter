// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'absent_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AbsentForm {
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  Reason get reason => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  Status? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AbsentFormCopyWith<AbsentForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbsentFormCopyWith<$Res> {
  factory $AbsentFormCopyWith(
          AbsentForm value, $Res Function(AbsentForm) then) =
      _$AbsentFormCopyWithImpl<$Res>;
  $Res call(
      {DateTime startDate,
      DateTime endDate,
      Reason reason,
      String note,
      Status? status});

  $ReasonCopyWith<$Res> get reason;
  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$AbsentFormCopyWithImpl<$Res> implements $AbsentFormCopyWith<$Res> {
  _$AbsentFormCopyWithImpl(this._value, this._then);

  final AbsentForm _value;
  // ignore: unused_field
  final $Res Function(AbsentForm) _then;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? reason = freezed,
    Object? note = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as Reason,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
    ));
  }

  @override
  $ReasonCopyWith<$Res> get reason {
    return $ReasonCopyWith<$Res>(_value.reason, (value) {
      return _then(_value.copyWith(reason: value));
    });
  }

  @override
  $StatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$$_AbsentFormCopyWith<$Res>
    implements $AbsentFormCopyWith<$Res> {
  factory _$$_AbsentFormCopyWith(
          _$_AbsentForm value, $Res Function(_$_AbsentForm) then) =
      __$$_AbsentFormCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime startDate,
      DateTime endDate,
      Reason reason,
      String note,
      Status? status});

  @override
  $ReasonCopyWith<$Res> get reason;
  @override
  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$_AbsentFormCopyWithImpl<$Res> extends _$AbsentFormCopyWithImpl<$Res>
    implements _$$_AbsentFormCopyWith<$Res> {
  __$$_AbsentFormCopyWithImpl(
      _$_AbsentForm _value, $Res Function(_$_AbsentForm) _then)
      : super(_value, (v) => _then(v as _$_AbsentForm));

  @override
  _$_AbsentForm get _value => super._value as _$_AbsentForm;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? reason = freezed,
    Object? note = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_AbsentForm(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as Reason,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
    ));
  }
}

/// @nodoc

class _$_AbsentForm with DiagnosticableTreeMixin implements _AbsentForm {
  _$_AbsentForm(
      {required this.startDate,
      required this.endDate,
      required this.reason,
      required this.note,
      required this.status});

  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final Reason reason;
  @override
  final String note;
  @override
  final Status? status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbsentForm(startDate: $startDate, endDate: $endDate, reason: $reason, note: $note, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbsentForm'))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('reason', reason))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AbsentForm &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality().equals(other.reason, reason) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(reason),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_AbsentFormCopyWith<_$_AbsentForm> get copyWith =>
      __$$_AbsentFormCopyWithImpl<_$_AbsentForm>(this, _$identity);
}

abstract class _AbsentForm implements AbsentForm {
  factory _AbsentForm(
      {required final DateTime startDate,
      required final DateTime endDate,
      required final Reason reason,
      required final String note,
      required final Status? status}) = _$_AbsentForm;

  @override
  DateTime get startDate => throw _privateConstructorUsedError;
  @override
  DateTime get endDate => throw _privateConstructorUsedError;
  @override
  Reason get reason => throw _privateConstructorUsedError;
  @override
  String get note => throw _privateConstructorUsedError;
  @override
  Status? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AbsentFormCopyWith<_$_AbsentForm> get copyWith =>
      throw _privateConstructorUsedError;
}

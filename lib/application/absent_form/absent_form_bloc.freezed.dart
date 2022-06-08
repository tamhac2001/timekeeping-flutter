// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'absent_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AbsentFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? startDate) startDatePicked,
    required TResult Function(DateTime? endDate) endDatePicked,
    required TResult Function(String reason) reasonChanged,
    required TResult Function(String noteChanged) noteChanged,
    required TResult Function() formSubmitted,
    required TResult Function() cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime? startDate)? startDatePicked,
    TResult Function(DateTime? endDate)? endDatePicked,
    TResult Function(String reason)? reasonChanged,
    TResult Function(String noteChanged)? noteChanged,
    TResult Function()? formSubmitted,
    TResult Function()? cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? startDate)? startDatePicked,
    TResult Function(DateTime? endDate)? endDatePicked,
    TResult Function(String reason)? reasonChanged,
    TResult Function(String noteChanged)? noteChanged,
    TResult Function()? formSubmitted,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartDatePicked value) startDatePicked,
    required TResult Function(EndDatePicked value) endDatePicked,
    required TResult Function(ReasonChanged value) reasonChanged,
    required TResult Function(NoteChanged value) noteChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(Cancelled value) cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartDatePicked value)? startDatePicked,
    TResult Function(EndDatePicked value)? endDatePicked,
    TResult Function(ReasonChanged value)? reasonChanged,
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(Cancelled value)? cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartDatePicked value)? startDatePicked,
    TResult Function(EndDatePicked value)? endDatePicked,
    TResult Function(ReasonChanged value)? reasonChanged,
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(Cancelled value)? cancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbsentFormEventCopyWith<$Res> {
  factory $AbsentFormEventCopyWith(
          AbsentFormEvent value, $Res Function(AbsentFormEvent) then) =
      _$AbsentFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AbsentFormEventCopyWithImpl<$Res>
    implements $AbsentFormEventCopyWith<$Res> {
  _$AbsentFormEventCopyWithImpl(this._value, this._then);

  final AbsentFormEvent _value;
  // ignore: unused_field
  final $Res Function(AbsentFormEvent) _then;
}

/// @nodoc
abstract class _$$StartDatePickedCopyWith<$Res> {
  factory _$$StartDatePickedCopyWith(
          _$StartDatePicked value, $Res Function(_$StartDatePicked) then) =
      __$$StartDatePickedCopyWithImpl<$Res>;
  $Res call({DateTime? startDate});
}

/// @nodoc
class __$$StartDatePickedCopyWithImpl<$Res>
    extends _$AbsentFormEventCopyWithImpl<$Res>
    implements _$$StartDatePickedCopyWith<$Res> {
  __$$StartDatePickedCopyWithImpl(
      _$StartDatePicked _value, $Res Function(_$StartDatePicked) _then)
      : super(_value, (v) => _then(v as _$StartDatePicked));

  @override
  _$StartDatePicked get _value => super._value as _$StartDatePicked;

  @override
  $Res call({
    Object? startDate = freezed,
  }) {
    return _then(_$StartDatePicked(
      startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$StartDatePicked
    with DiagnosticableTreeMixin
    implements StartDatePicked {
  const _$StartDatePicked(this.startDate);

  @override
  final DateTime? startDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbsentFormEvent.startDatePicked(startDate: $startDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbsentFormEvent.startDatePicked'))
      ..add(DiagnosticsProperty('startDate', startDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartDatePicked &&
            const DeepCollectionEquality().equals(other.startDate, startDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(startDate));

  @JsonKey(ignore: true)
  @override
  _$$StartDatePickedCopyWith<_$StartDatePicked> get copyWith =>
      __$$StartDatePickedCopyWithImpl<_$StartDatePicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? startDate) startDatePicked,
    required TResult Function(DateTime? endDate) endDatePicked,
    required TResult Function(String reason) reasonChanged,
    required TResult Function(String noteChanged) noteChanged,
    required TResult Function() formSubmitted,
    required TResult Function() cancelled,
  }) {
    return startDatePicked(startDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime? startDate)? startDatePicked,
    TResult Function(DateTime? endDate)? endDatePicked,
    TResult Function(String reason)? reasonChanged,
    TResult Function(String noteChanged)? noteChanged,
    TResult Function()? formSubmitted,
    TResult Function()? cancelled,
  }) {
    return startDatePicked?.call(startDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? startDate)? startDatePicked,
    TResult Function(DateTime? endDate)? endDatePicked,
    TResult Function(String reason)? reasonChanged,
    TResult Function(String noteChanged)? noteChanged,
    TResult Function()? formSubmitted,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (startDatePicked != null) {
      return startDatePicked(startDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartDatePicked value) startDatePicked,
    required TResult Function(EndDatePicked value) endDatePicked,
    required TResult Function(ReasonChanged value) reasonChanged,
    required TResult Function(NoteChanged value) noteChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(Cancelled value) cancelled,
  }) {
    return startDatePicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartDatePicked value)? startDatePicked,
    TResult Function(EndDatePicked value)? endDatePicked,
    TResult Function(ReasonChanged value)? reasonChanged,
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(Cancelled value)? cancelled,
  }) {
    return startDatePicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartDatePicked value)? startDatePicked,
    TResult Function(EndDatePicked value)? endDatePicked,
    TResult Function(ReasonChanged value)? reasonChanged,
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (startDatePicked != null) {
      return startDatePicked(this);
    }
    return orElse();
  }
}

abstract class StartDatePicked implements AbsentFormEvent {
  const factory StartDatePicked(final DateTime? startDate) = _$StartDatePicked;

  DateTime? get startDate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$StartDatePickedCopyWith<_$StartDatePicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EndDatePickedCopyWith<$Res> {
  factory _$$EndDatePickedCopyWith(
          _$EndDatePicked value, $Res Function(_$EndDatePicked) then) =
      __$$EndDatePickedCopyWithImpl<$Res>;
  $Res call({DateTime? endDate});
}

/// @nodoc
class __$$EndDatePickedCopyWithImpl<$Res>
    extends _$AbsentFormEventCopyWithImpl<$Res>
    implements _$$EndDatePickedCopyWith<$Res> {
  __$$EndDatePickedCopyWithImpl(
      _$EndDatePicked _value, $Res Function(_$EndDatePicked) _then)
      : super(_value, (v) => _then(v as _$EndDatePicked));

  @override
  _$EndDatePicked get _value => super._value as _$EndDatePicked;

  @override
  $Res call({
    Object? endDate = freezed,
  }) {
    return _then(_$EndDatePicked(
      endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$EndDatePicked with DiagnosticableTreeMixin implements EndDatePicked {
  const _$EndDatePicked(this.endDate);

  @override
  final DateTime? endDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbsentFormEvent.endDatePicked(endDate: $endDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbsentFormEvent.endDatePicked'))
      ..add(DiagnosticsProperty('endDate', endDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndDatePicked &&
            const DeepCollectionEquality().equals(other.endDate, endDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(endDate));

  @JsonKey(ignore: true)
  @override
  _$$EndDatePickedCopyWith<_$EndDatePicked> get copyWith =>
      __$$EndDatePickedCopyWithImpl<_$EndDatePicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? startDate) startDatePicked,
    required TResult Function(DateTime? endDate) endDatePicked,
    required TResult Function(String reason) reasonChanged,
    required TResult Function(String noteChanged) noteChanged,
    required TResult Function() formSubmitted,
    required TResult Function() cancelled,
  }) {
    return endDatePicked(endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime? startDate)? startDatePicked,
    TResult Function(DateTime? endDate)? endDatePicked,
    TResult Function(String reason)? reasonChanged,
    TResult Function(String noteChanged)? noteChanged,
    TResult Function()? formSubmitted,
    TResult Function()? cancelled,
  }) {
    return endDatePicked?.call(endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? startDate)? startDatePicked,
    TResult Function(DateTime? endDate)? endDatePicked,
    TResult Function(String reason)? reasonChanged,
    TResult Function(String noteChanged)? noteChanged,
    TResult Function()? formSubmitted,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (endDatePicked != null) {
      return endDatePicked(endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartDatePicked value) startDatePicked,
    required TResult Function(EndDatePicked value) endDatePicked,
    required TResult Function(ReasonChanged value) reasonChanged,
    required TResult Function(NoteChanged value) noteChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(Cancelled value) cancelled,
  }) {
    return endDatePicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartDatePicked value)? startDatePicked,
    TResult Function(EndDatePicked value)? endDatePicked,
    TResult Function(ReasonChanged value)? reasonChanged,
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(Cancelled value)? cancelled,
  }) {
    return endDatePicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartDatePicked value)? startDatePicked,
    TResult Function(EndDatePicked value)? endDatePicked,
    TResult Function(ReasonChanged value)? reasonChanged,
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (endDatePicked != null) {
      return endDatePicked(this);
    }
    return orElse();
  }
}

abstract class EndDatePicked implements AbsentFormEvent {
  const factory EndDatePicked(final DateTime? endDate) = _$EndDatePicked;

  DateTime? get endDate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$EndDatePickedCopyWith<_$EndDatePicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReasonChangedCopyWith<$Res> {
  factory _$$ReasonChangedCopyWith(
          _$ReasonChanged value, $Res Function(_$ReasonChanged) then) =
      __$$ReasonChangedCopyWithImpl<$Res>;
  $Res call({String reason});
}

/// @nodoc
class __$$ReasonChangedCopyWithImpl<$Res>
    extends _$AbsentFormEventCopyWithImpl<$Res>
    implements _$$ReasonChangedCopyWith<$Res> {
  __$$ReasonChangedCopyWithImpl(
      _$ReasonChanged _value, $Res Function(_$ReasonChanged) _then)
      : super(_value, (v) => _then(v as _$ReasonChanged));

  @override
  _$ReasonChanged get _value => super._value as _$ReasonChanged;

  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(_$ReasonChanged(
      reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReasonChanged with DiagnosticableTreeMixin implements ReasonChanged {
  const _$ReasonChanged(this.reason);

  @override
  final String reason;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbsentFormEvent.reasonChanged(reason: $reason)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbsentFormEvent.reasonChanged'))
      ..add(DiagnosticsProperty('reason', reason));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReasonChanged &&
            const DeepCollectionEquality().equals(other.reason, reason));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(reason));

  @JsonKey(ignore: true)
  @override
  _$$ReasonChangedCopyWith<_$ReasonChanged> get copyWith =>
      __$$ReasonChangedCopyWithImpl<_$ReasonChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? startDate) startDatePicked,
    required TResult Function(DateTime? endDate) endDatePicked,
    required TResult Function(String reason) reasonChanged,
    required TResult Function(String noteChanged) noteChanged,
    required TResult Function() formSubmitted,
    required TResult Function() cancelled,
  }) {
    return reasonChanged(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime? startDate)? startDatePicked,
    TResult Function(DateTime? endDate)? endDatePicked,
    TResult Function(String reason)? reasonChanged,
    TResult Function(String noteChanged)? noteChanged,
    TResult Function()? formSubmitted,
    TResult Function()? cancelled,
  }) {
    return reasonChanged?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? startDate)? startDatePicked,
    TResult Function(DateTime? endDate)? endDatePicked,
    TResult Function(String reason)? reasonChanged,
    TResult Function(String noteChanged)? noteChanged,
    TResult Function()? formSubmitted,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (reasonChanged != null) {
      return reasonChanged(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartDatePicked value) startDatePicked,
    required TResult Function(EndDatePicked value) endDatePicked,
    required TResult Function(ReasonChanged value) reasonChanged,
    required TResult Function(NoteChanged value) noteChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(Cancelled value) cancelled,
  }) {
    return reasonChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartDatePicked value)? startDatePicked,
    TResult Function(EndDatePicked value)? endDatePicked,
    TResult Function(ReasonChanged value)? reasonChanged,
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(Cancelled value)? cancelled,
  }) {
    return reasonChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartDatePicked value)? startDatePicked,
    TResult Function(EndDatePicked value)? endDatePicked,
    TResult Function(ReasonChanged value)? reasonChanged,
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (reasonChanged != null) {
      return reasonChanged(this);
    }
    return orElse();
  }
}

abstract class ReasonChanged implements AbsentFormEvent {
  const factory ReasonChanged(final String reason) = _$ReasonChanged;

  String get reason => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ReasonChangedCopyWith<_$ReasonChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteChangedCopyWith<$Res> {
  factory _$$NoteChangedCopyWith(
          _$NoteChanged value, $Res Function(_$NoteChanged) then) =
      __$$NoteChangedCopyWithImpl<$Res>;
  $Res call({String noteChanged});
}

/// @nodoc
class __$$NoteChangedCopyWithImpl<$Res>
    extends _$AbsentFormEventCopyWithImpl<$Res>
    implements _$$NoteChangedCopyWith<$Res> {
  __$$NoteChangedCopyWithImpl(
      _$NoteChanged _value, $Res Function(_$NoteChanged) _then)
      : super(_value, (v) => _then(v as _$NoteChanged));

  @override
  _$NoteChanged get _value => super._value as _$NoteChanged;

  @override
  $Res call({
    Object? noteChanged = freezed,
  }) {
    return _then(_$NoteChanged(
      noteChanged == freezed
          ? _value.noteChanged
          : noteChanged // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoteChanged with DiagnosticableTreeMixin implements NoteChanged {
  const _$NoteChanged(this.noteChanged);

  @override
  final String noteChanged;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbsentFormEvent.noteChanged(noteChanged: $noteChanged)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbsentFormEvent.noteChanged'))
      ..add(DiagnosticsProperty('noteChanged', noteChanged));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteChanged &&
            const DeepCollectionEquality()
                .equals(other.noteChanged, noteChanged));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(noteChanged));

  @JsonKey(ignore: true)
  @override
  _$$NoteChangedCopyWith<_$NoteChanged> get copyWith =>
      __$$NoteChangedCopyWithImpl<_$NoteChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? startDate) startDatePicked,
    required TResult Function(DateTime? endDate) endDatePicked,
    required TResult Function(String reason) reasonChanged,
    required TResult Function(String noteChanged) noteChanged,
    required TResult Function() formSubmitted,
    required TResult Function() cancelled,
  }) {
    return noteChanged(this.noteChanged);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime? startDate)? startDatePicked,
    TResult Function(DateTime? endDate)? endDatePicked,
    TResult Function(String reason)? reasonChanged,
    TResult Function(String noteChanged)? noteChanged,
    TResult Function()? formSubmitted,
    TResult Function()? cancelled,
  }) {
    return noteChanged?.call(this.noteChanged);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? startDate)? startDatePicked,
    TResult Function(DateTime? endDate)? endDatePicked,
    TResult Function(String reason)? reasonChanged,
    TResult Function(String noteChanged)? noteChanged,
    TResult Function()? formSubmitted,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (noteChanged != null) {
      return noteChanged(this.noteChanged);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartDatePicked value) startDatePicked,
    required TResult Function(EndDatePicked value) endDatePicked,
    required TResult Function(ReasonChanged value) reasonChanged,
    required TResult Function(NoteChanged value) noteChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(Cancelled value) cancelled,
  }) {
    return noteChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartDatePicked value)? startDatePicked,
    TResult Function(EndDatePicked value)? endDatePicked,
    TResult Function(ReasonChanged value)? reasonChanged,
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(Cancelled value)? cancelled,
  }) {
    return noteChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartDatePicked value)? startDatePicked,
    TResult Function(EndDatePicked value)? endDatePicked,
    TResult Function(ReasonChanged value)? reasonChanged,
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (noteChanged != null) {
      return noteChanged(this);
    }
    return orElse();
  }
}

abstract class NoteChanged implements AbsentFormEvent {
  const factory NoteChanged(final String noteChanged) = _$NoteChanged;

  String get noteChanged => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$NoteChangedCopyWith<_$NoteChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormSubmittedCopyWith<$Res> {
  factory _$$FormSubmittedCopyWith(
          _$FormSubmitted value, $Res Function(_$FormSubmitted) then) =
      __$$FormSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormSubmittedCopyWithImpl<$Res>
    extends _$AbsentFormEventCopyWithImpl<$Res>
    implements _$$FormSubmittedCopyWith<$Res> {
  __$$FormSubmittedCopyWithImpl(
      _$FormSubmitted _value, $Res Function(_$FormSubmitted) _then)
      : super(_value, (v) => _then(v as _$FormSubmitted));

  @override
  _$FormSubmitted get _value => super._value as _$FormSubmitted;
}

/// @nodoc

class _$FormSubmitted with DiagnosticableTreeMixin implements FormSubmitted {
  const _$FormSubmitted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbsentFormEvent.formSubmitted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AbsentFormEvent.formSubmitted'));
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
    required TResult Function(DateTime? startDate) startDatePicked,
    required TResult Function(DateTime? endDate) endDatePicked,
    required TResult Function(String reason) reasonChanged,
    required TResult Function(String noteChanged) noteChanged,
    required TResult Function() formSubmitted,
    required TResult Function() cancelled,
  }) {
    return formSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime? startDate)? startDatePicked,
    TResult Function(DateTime? endDate)? endDatePicked,
    TResult Function(String reason)? reasonChanged,
    TResult Function(String noteChanged)? noteChanged,
    TResult Function()? formSubmitted,
    TResult Function()? cancelled,
  }) {
    return formSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? startDate)? startDatePicked,
    TResult Function(DateTime? endDate)? endDatePicked,
    TResult Function(String reason)? reasonChanged,
    TResult Function(String noteChanged)? noteChanged,
    TResult Function()? formSubmitted,
    TResult Function()? cancelled,
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
    required TResult Function(StartDatePicked value) startDatePicked,
    required TResult Function(EndDatePicked value) endDatePicked,
    required TResult Function(ReasonChanged value) reasonChanged,
    required TResult Function(NoteChanged value) noteChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(Cancelled value) cancelled,
  }) {
    return formSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartDatePicked value)? startDatePicked,
    TResult Function(EndDatePicked value)? endDatePicked,
    TResult Function(ReasonChanged value)? reasonChanged,
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(Cancelled value)? cancelled,
  }) {
    return formSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartDatePicked value)? startDatePicked,
    TResult Function(EndDatePicked value)? endDatePicked,
    TResult Function(ReasonChanged value)? reasonChanged,
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(this);
    }
    return orElse();
  }
}

abstract class FormSubmitted implements AbsentFormEvent {
  const factory FormSubmitted() = _$FormSubmitted;
}

/// @nodoc
abstract class _$$CancelledCopyWith<$Res> {
  factory _$$CancelledCopyWith(
          _$Cancelled value, $Res Function(_$Cancelled) then) =
      __$$CancelledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelledCopyWithImpl<$Res>
    extends _$AbsentFormEventCopyWithImpl<$Res>
    implements _$$CancelledCopyWith<$Res> {
  __$$CancelledCopyWithImpl(
      _$Cancelled _value, $Res Function(_$Cancelled) _then)
      : super(_value, (v) => _then(v as _$Cancelled));

  @override
  _$Cancelled get _value => super._value as _$Cancelled;
}

/// @nodoc

class _$Cancelled with DiagnosticableTreeMixin implements Cancelled {
  const _$Cancelled();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbsentFormEvent.cancelled()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AbsentFormEvent.cancelled'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Cancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? startDate) startDatePicked,
    required TResult Function(DateTime? endDate) endDatePicked,
    required TResult Function(String reason) reasonChanged,
    required TResult Function(String noteChanged) noteChanged,
    required TResult Function() formSubmitted,
    required TResult Function() cancelled,
  }) {
    return cancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime? startDate)? startDatePicked,
    TResult Function(DateTime? endDate)? endDatePicked,
    TResult Function(String reason)? reasonChanged,
    TResult Function(String noteChanged)? noteChanged,
    TResult Function()? formSubmitted,
    TResult Function()? cancelled,
  }) {
    return cancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? startDate)? startDatePicked,
    TResult Function(DateTime? endDate)? endDatePicked,
    TResult Function(String reason)? reasonChanged,
    TResult Function(String noteChanged)? noteChanged,
    TResult Function()? formSubmitted,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartDatePicked value) startDatePicked,
    required TResult Function(EndDatePicked value) endDatePicked,
    required TResult Function(ReasonChanged value) reasonChanged,
    required TResult Function(NoteChanged value) noteChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(Cancelled value) cancelled,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartDatePicked value)? startDatePicked,
    TResult Function(EndDatePicked value)? endDatePicked,
    TResult Function(ReasonChanged value)? reasonChanged,
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(Cancelled value)? cancelled,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartDatePicked value)? startDatePicked,
    TResult Function(EndDatePicked value)? endDatePicked,
    TResult Function(ReasonChanged value)? reasonChanged,
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class Cancelled implements AbsentFormEvent {
  const factory Cancelled() = _$Cancelled;
}

/// @nodoc
mixin _$AbsentFormState {
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool? get successOrFail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AbsentFormStateCopyWith<AbsentFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbsentFormStateCopyWith<$Res> {
  factory $AbsentFormStateCopyWith(
          AbsentFormState value, $Res Function(AbsentFormState) then) =
      _$AbsentFormStateCopyWithImpl<$Res>;
  $Res call(
      {DateTime startDate,
      DateTime? endDate,
      String reason,
      String note,
      bool isSubmitting,
      bool? successOrFail});
}

/// @nodoc
class _$AbsentFormStateCopyWithImpl<$Res>
    implements $AbsentFormStateCopyWith<$Res> {
  _$AbsentFormStateCopyWithImpl(this._value, this._then);

  final AbsentFormState _value;
  // ignore: unused_field
  final $Res Function(AbsentFormState) _then;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? reason = freezed,
    Object? note = freezed,
    Object? isSubmitting = freezed,
    Object? successOrFail = freezed,
  }) {
    return _then(_value.copyWith(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrFail: successOrFail == freezed
          ? _value.successOrFail
          : successOrFail // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_AbsentFormStateCopyWith<$Res>
    implements $AbsentFormStateCopyWith<$Res> {
  factory _$$_AbsentFormStateCopyWith(
          _$_AbsentFormState value, $Res Function(_$_AbsentFormState) then) =
      __$$_AbsentFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime startDate,
      DateTime? endDate,
      String reason,
      String note,
      bool isSubmitting,
      bool? successOrFail});
}

/// @nodoc
class __$$_AbsentFormStateCopyWithImpl<$Res>
    extends _$AbsentFormStateCopyWithImpl<$Res>
    implements _$$_AbsentFormStateCopyWith<$Res> {
  __$$_AbsentFormStateCopyWithImpl(
      _$_AbsentFormState _value, $Res Function(_$_AbsentFormState) _then)
      : super(_value, (v) => _then(v as _$_AbsentFormState));

  @override
  _$_AbsentFormState get _value => super._value as _$_AbsentFormState;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? reason = freezed,
    Object? note = freezed,
    Object? isSubmitting = freezed,
    Object? successOrFail = freezed,
  }) {
    return _then(_$_AbsentFormState(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrFail: successOrFail == freezed
          ? _value.successOrFail
          : successOrFail // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_AbsentFormState
    with DiagnosticableTreeMixin
    implements _AbsentFormState {
  const _$_AbsentFormState(
      {required this.startDate,
      required this.endDate,
      required this.reason,
      required this.note,
      required this.isSubmitting,
      required this.successOrFail});

  @override
  final DateTime startDate;
  @override
  final DateTime? endDate;
  @override
  final String reason;
  @override
  final String note;
  @override
  final bool isSubmitting;
  @override
  final bool? successOrFail;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbsentFormState(startDate: $startDate, endDate: $endDate, reason: $reason, note: $note, isSubmitting: $isSubmitting, successOrFail: $successOrFail)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbsentFormState'))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('reason', reason))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty('successOrFail', successOrFail));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AbsentFormState &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality().equals(other.reason, reason) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality()
                .equals(other.successOrFail, successOrFail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(reason),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(successOrFail));

  @JsonKey(ignore: true)
  @override
  _$$_AbsentFormStateCopyWith<_$_AbsentFormState> get copyWith =>
      __$$_AbsentFormStateCopyWithImpl<_$_AbsentFormState>(this, _$identity);
}

abstract class _AbsentFormState implements AbsentFormState {
  const factory _AbsentFormState(
      {required final DateTime startDate,
      required final DateTime? endDate,
      required final String reason,
      required final String note,
      required final bool isSubmitting,
      required final bool? successOrFail}) = _$_AbsentFormState;

  @override
  DateTime get startDate => throw _privateConstructorUsedError;
  @override
  DateTime? get endDate => throw _privateConstructorUsedError;
  @override
  String get reason => throw _privateConstructorUsedError;
  @override
  String get note => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool? get successOrFail => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AbsentFormStateCopyWith<_$_AbsentFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

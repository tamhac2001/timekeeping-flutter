import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../presentation/core/constant/ui_constant.dart' as ui_constant;

part 'status.freezed.dart';

@freezed
class Status with _$Status {
  const Status._();

  factory Status.fromStatusCode({
    required int code,
  }) {
    switch (code) {
      case -1:
        return const Status.denied();
      case 1:
        return const Status.approved();
      default:
        return const Status.pending();
    }
  }

  const factory Status.denied({@Default('Từ chối') String value}) = _Denied;

  const factory Status.pending({@Default('Đang chờ duyệt') String value}) = _Pending;

  const factory Status.approved({@Default('Chấp thuận') String value}) = Approved;

  int toStatusCode() {
    return when(denied: (_) => -1, pending: (_) => 0, approved: (_) => 1);
  }

  bool isApproved() {
    return maybeWhen(approved: (_) => true, orElse: () => false);
  }

  Color? toColor() {
    return when(
        denied: (_) => ui_constant.deniedColor, pending: (_) => null, approved: (_) => ui_constant.approvedColor);
  }

  Icon? toIcon() {
    return when(denied: (_) => ui_constant.deniedIcon, pending: (_) => null, approved: (_) => ui_constant.approvedIcon);
  }
}

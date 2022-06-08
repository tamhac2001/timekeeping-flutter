import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../application/utils/extensions.dart';

extension TimeOfDayX on TimeOfDay {
  String toDisplayText() {
    final dt = toDateTime();
    return DateFormat('HH:mm').format(dt);
  }
}

import 'package:flutter/material.dart';

Future<DateTime?> selectStartDate(BuildContext context) async {
  final now = DateTime.now();
  return await showDatePicker(
    context: context,
    initialDate: now,
    firstDate: DateTime.utc(now.year,now.month,now.day),
    lastDate: DateTime.utc(now.year + 1),
  );
}

Future<DateTime?> selectEndDate(BuildContext context,DateTime startDate) async {
  final now = DateTime.now();
  return await showDatePicker(
    context: context,
    initialDate: startDate.add(const Duration(days: 1)),
    firstDate: startDate.add(const Duration(days: 1)),
    lastDate: DateTime.utc(now.year + 1),
  );
}

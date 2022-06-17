import 'package:flutter/material.dart';

Future<DateTime?> selectStartDate(BuildContext context) async {
  final now = DateTime.now();
  final datePicked = await showDatePicker(
    context: context,
    initialDate: now,
    firstDate: DateTime.utc(now.year, now.month, now.day),
    lastDate: DateTime.utc(now.year + 1),
  );
  if (datePicked == null) return null;
  return datePicked;
}

Future<DateTime?> selectEndDate(
    BuildContext context, DateTime startDate) async {
  final now = DateTime.now();
  final datePicked = await showDatePicker(
    context: context,
    initialDate: startDate,
    firstDate: startDate,
    lastDate: DateTime.utc(now.year + 1),
  );
  if (datePicked == null) return null;
  return datePicked;
}

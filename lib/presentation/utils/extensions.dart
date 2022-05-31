import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


// extension StackRouterX on StackRouter {
//   Future<void> navigateWithIndex(int index) async {
//     switch (index) {
//       case 0:
//         await replace(const CheckInCheckOutScreenRoute());
//         break;
//       case 1:
//         await replace(const TimekeepingRecordScreenRoute());
//         break;
//       case 2:
//         await replace(const AbsentFormScreenRoute());
//         break;
//       case 3:
//         await replace(const ProfileScreenRoute());
//         break;
//     }
//   }
// }

extension TimeOfDayX on TimeOfDay {
  String toDisplayText() {
    final dt = toDateTime();
    final format = DateFormat.Hm(); //"6:00"
    return format.format(dt);
  }

  DateTime toDateTime() {
    return DateTime(1, 1, 1, hour, minute);
  }

}

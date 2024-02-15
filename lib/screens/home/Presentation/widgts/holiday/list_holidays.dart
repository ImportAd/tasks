import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tasks/screens/home/Presentation/widgts/holiday/holiday_container.dart';

List<Widget> generateListHolidays() {
  List<Widget> holidays = [];
  final box = GetStorage();
  if ((box.read('holiday${box.read('numHoliday')}') == null) ||
      (box.read('numHoliday') == null)) {
    holidays.add(
      const Text(
        "Праздников не добавлено",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
    return holidays;
  } else {
    for (var i = 0; i <= box.read('numHoliday'); i++) {
      if (box.read('holiday$i') == null) {
      } else {
        final holidayList =
            jsonDecode(box.read('holiday$i').toString()) as List<dynamic>;
        holidays.add(HolidayContainer(
          name: holidayList[0],
          date: holidayList[1],
        ));
      }
    }
    return holidays;
  }
}

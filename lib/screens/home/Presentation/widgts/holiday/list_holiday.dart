import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tasks/screens/home/Presentation/widgts/holiday/holiday_container.dart';

class ListHoliday extends StatelessWidget {
  const ListHoliday({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
    // для первого входа в приложение когда еще нет праздников
    if ((box.read('holiday${box.read('numHoliday')}') == null) ||
        (box.read('numHoliday') == null)) {
      return const Center(
        child: Text(
          "Праздников не добавлено нет",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    } else {
      final birthdays = <Widget>[];
      for (var i = 0; i <= box.read('numHoliday'); i++) {
        if (box.read('holiday$i') == null) {
        } else {
          final holidayList =
              jsonDecode(box.read('holiday$i').toString()) as List<dynamic>;
          birthdays.add(HolidayContainer(
            name: holidayList[0],
            date: holidayList[1],
          ));
        }
      }
      return Column(children: birthdays);
    }
  }
}

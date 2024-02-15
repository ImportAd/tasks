import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tasks/screens/home/Presentation/widgts/birthday/birthday_container.dart';

List<Widget> generateListBirthday() {
  List<Widget> birthdays = [];
  final box = GetStorage();
  if ((box.read('birthday${box.read('numBirthday')}') == null) ||
      (box.read('numBirthday') == null)) {
    birthdays.add(
      const Text(
        "Дней рождений не добавлено",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
    return birthdays;
  } else {
    for (var i = 0; i <= box.read('numBirthday'); i++) {
      if (box.read('birthday$i') == null) {
      } else {
        final birthdayList =
            jsonDecode(box.read('birthday$i').toString()) as List<dynamic>;
        birthdays.add(BirthdayContainer(
          name: birthdayList[0],
          date: birthdayList[1],
          age: birthdayList[2],
        ));
      }
    }
    return birthdays;
  }
}

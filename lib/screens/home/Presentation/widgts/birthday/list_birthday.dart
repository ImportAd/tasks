import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tasks/screens/home/Presentation/widgts/birthday/birthday_container.dart';

class ListBirthday extends StatelessWidget {
  const ListBirthday({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
    // для первого входа в приложение когда еще нет дней рождений
    if ((box.read('birthday${box.read('numBirthday')}') == null) ||
        (box.read('numBirthday') == null)) {
      return const Text(
        "Дней рождений не добавлено нет",
        style: TextStyle(
          color: Colors.white,
        ),
      );
    } else {
      final birthdays = <Widget>[];
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
      return Column(children: birthdays);
    }
  }
}

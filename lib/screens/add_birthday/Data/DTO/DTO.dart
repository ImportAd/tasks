import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class DTO {
  TextEditingController name;
  TextEditingController date;
  TextEditingController age;

  DTO({Key? key, required this.name, required this.date, required this.age});

  addInBox() {
    final box = GetStorage();
    if (box.read('numBirthday') == null) {
      box.write('numBirthday', 0);
    }
    int numBirthday = box.read('numBirthday');
    numBirthday++;
    final birthday = <String>[name.text, date.text, age.text];
    String data = jsonEncode(birthday);
    box.write('numBirthday', numBirthday);
    box.write('birthday$numBirthday', data);
  }
}

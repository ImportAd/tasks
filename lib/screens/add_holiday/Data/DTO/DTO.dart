import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class DTO {
  TextEditingController name;
  TextEditingController date;

  DTO({Key? key, required this.name, required this.date});

  addInBox() {
    final box = GetStorage();
    if (box.read('numHoliday') == null) {
      box.write('numHoliday', 0);
    }
    int numHoliday = box.read('numHoliday');
    numHoliday++;
    final holiday = <String>[name.text, date.text];
    String data = jsonEncode(holiday);
    box.write('numHoliday', numHoliday);
    box.write('holiday$numHoliday', data);
  }
}

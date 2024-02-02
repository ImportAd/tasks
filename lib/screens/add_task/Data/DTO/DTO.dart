import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class DTO {
  TextEditingController task;
  TextEditingController teg;
  TextEditingController time;
  TextEditingController description;

  DTO(
      {Key? key,
      required this.task,
      required this.teg,
      required this.time,
      required this.description});

  addInBox() {
    final box = GetStorage();
    if (box.read('num') == null) {
      box.write('num', 0);
    }
    int num = box.read('num');
    num++;
    final tasks = <String>[task.text, teg.text, time.text, description.text];
    String data = jsonEncode(tasks);
    box.write('num', num);
    box.write('tasks$num', data);
  }
}

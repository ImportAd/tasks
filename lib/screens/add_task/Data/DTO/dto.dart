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
    if (box.read('numTask') == null) {
      box.write('numTask', 0);
    }
    int num = box.read('numTask');
    num++;
    final tasks = <String>[task.text, teg.text, time.text, description.text];
    String data = jsonEncode(tasks);
    box.write('numTask', num);
    box.write('tasks$num', data);
  }
}

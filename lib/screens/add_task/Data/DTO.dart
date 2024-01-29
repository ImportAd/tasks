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
    box.write('task', task.text);
    box.write('teg', teg.text);
    box.write('time', time.text);
    box.write('description', description.text);
  }
}

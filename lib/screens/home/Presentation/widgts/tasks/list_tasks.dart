import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tasks/core/Presentation/widgts/single_task_container.dart';

List<Widget> generateListTasks() {
  final box = GetStorage();
  List<Widget> holidays = [];
  if ((box.read('tasks${box.read('numTask')}') == null) ||
      (box.read('numTask') == null)) {
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
    for (var i = 0; i <= box.read('numTask'); i++) {
      if (box.read('tasks$i') == null) {
      } else {
        final tasksList =
            jsonDecode(box.read('tasks$i').toString()) as List<dynamic>;
        holidays.add(SingleTaskContainer(
          task: tasksList[0],
          teg: tasksList[1],
          time: tasksList[2],
        ));
      }
    }
    return holidays;
  }
}

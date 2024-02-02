import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tasks/core/Presentation/widgts/single_task_container.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
    // для первого входа в приложение когда еще нет задач
    // проверка есть ли в памяти хоть одна запись
    // если нет делаем первю тестовую
    if ((box.read('tasks${box.read('num')}') == null) ||
        (box.read('num') == null)) {
      return const Center(
        child: Text(
          "Задач нет",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    } else {
      final tasks = <Widget>[];
      for (var i = 0; i <= box.read('num'); i++) {
        if (box.read('tasks$i') == null) {
        } else {
          final tasksList =
              jsonDecode(box.read('tasks$i').toString()) as List<dynamic>;
          tasks.add(SingleTaskContainer(
            task: tasksList[0],
            teg: tasksList[1],
            time: tasksList[2],
          ));
        }
      }
      return Column(children: tasks);
    }
  }
}

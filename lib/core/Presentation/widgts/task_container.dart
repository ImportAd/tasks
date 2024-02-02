import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tasks/core/Presentation/widgts/task_single_container.dart';

class TaskContainer extends StatelessWidget {
  const TaskContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
    // для первого входа в приложение когда еще нет задач
    if ((box.read('tasks0') == null) || (box.read('num') == null)) {
      final tasks = <String>['task', 'teg', 'time', ''];
      final task = jsonEncode(tasks);
      box.write('num', 0);
      final taskName = 'tasks${box.read('num')}';
      box.write(taskName, task);
      return const Text(
        "Задач нет",
        style: TextStyle(
          color: Colors.white,
        ),
      );
    } else {
      final tasks = <Widget>[];
      for (var i = 0; i <= box.read('num'); i++) {
        if (box.read('tasks$i') == null) {
        } else {
          final tasksList =
              jsonDecode(box.read('tasks$i').toString()) as List<dynamic>;
          tasks.add(TaskSingleContainer(
            task: tasksList[0],
            teg: tasksList[1],
            time: tasksList[2],
          ));
        }
      }
      return SingleChildScrollView(
        child: Column(children: tasks),
      );
    }
  }
}

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tasks/core/Presentation/widgts/task_today/hashtag.dart';
import 'package:tasks/core/Presentation/widgts/task_today/task.dart';
import 'package:tasks/core/Presentation/widgts/task_today/time.dart';

class TaskContainer extends StatelessWidget {
  const TaskContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
    // для первого входа в приложение когда еще нет задач
    if ((box.read('tasks0') == null) || (box.read('num') == null)) {
      final tasks = <String>{'task', 'teg', 'time', ''};
      box.write('num', 0);
      final taskName = 'tasks${box.read('num')}';
      box.write(taskName, tasks);
      return const Text("Задач нет");
    } else {
      return ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          itemCount: box.read('num'),
          itemBuilder: (BuildContext context, int index) {
            String task = box.read('tasks$index')[0];
            String teg = box.read('tasks$index')[1];
            String time = box.read('tasks$index')[2];
            return Container(
              margin: const EdgeInsets.only(bottom: 16),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(82, 96, 109, 1),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(child: Task(text: task)),
                    Hashtag(hashtag: teg),
                    const SizedBox(width: 16),
                    Time(time: time),
                  ],
                ),
              ),
            );
          });
    }
  }
}

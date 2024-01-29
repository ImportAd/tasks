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
    // вынести в main
    String task = box.read('task');
    String teg = box.read('teg');
    String time = box.read('time');
    return Container(
      margin: const EdgeInsets.only(left: 12, top: 0, right: 12, bottom: 16),
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
  }
}

import 'package:flutter/material.dart';
import 'package:tasks/core/Presentation/widgts/hashtag.dart';
import 'package:tasks/core/Presentation/widgts/task.dart';
import 'package:tasks/core/Presentation/widgts/time.dart';

class TaskSingleContainer extends StatelessWidget {
  final String task;
  final String teg;
  final String time;
  const TaskSingleContainer(
      {Key? key, required this.task, required this.teg, required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
  }
}

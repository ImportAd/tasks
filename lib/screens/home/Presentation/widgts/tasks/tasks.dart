import 'package:flutter/material.dart';
import 'package:tasks/screens/home/Presentation/widgts/tasks/task_container.dart';

class Tasks extends StatelessWidget {
  const Tasks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 240,
      ),
      child: Column(
        children: [
          const Center(
            child: Text(
              "Задачи",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          // удалять задачи время которых вышло
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 210),
            child: InkWell(
              onTap: () => {
                // переход на экран задач
              },
              child: ListView(children: const [TasksList()]),
            ),
          ),
        ],
      ),
    );
  }
}

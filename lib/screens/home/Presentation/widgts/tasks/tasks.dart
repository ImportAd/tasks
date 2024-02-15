import 'package:flutter/material.dart';
import 'package:tasks/screens/home/Presentation/widgts/tasks/list_tasks.dart';

class Tasks extends StatelessWidget {
  const Tasks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 240),
      child: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text(
                "Задачи",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          // удалять задачи время которых вышло
          SizedBox(
            // лучше использовать контейнер
            height: 210,
            child: InkWell(
              onTap: () => {
                // переход на экран праздников
              },
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: generateListTasks(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

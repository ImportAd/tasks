import 'package:flutter/material.dart';
import 'package:tasks/screens/add_task/Presentation/add_task_screen.dart';

class HomeBottomSheet extends StatelessWidget {
  const HomeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: double.infinity,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            child: const Text(
              "Добавить задачу",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            // переход к другому экрану
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AddTaskScreen(),
                ),
              );
            },
          ),
          ElevatedButton(
            child: const Text(
              "Добавить день рождение",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            // переход к другому экрану
            onPressed: () {},
          ),
          ElevatedButton(
            child: const Text(
              "Добавить праздник",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            // переход к другому экрану
            onPressed: () {},
          ),
          ElevatedButton(
            child: const Text(
              "Просмотр статистики",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            // переход к другому экрану
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

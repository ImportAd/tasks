import 'package:flutter/material.dart';
import 'package:tasks/screens/add_task/Presentation/add_task_screen.dart';

class HomeBottomSheet extends StatelessWidget {
  const HomeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          Container(
            child: ElevatedButton(
              child: const Text("Добавить задачу"),
              // переход к другому экрану
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AddTaskScreen(),
                  ),
                );
              },
            ),
          ),
          Container(
            child: ElevatedButton(
              child: const Text("Добавить день рождение"),
              // переход к другому экрану
              onPressed: () {},
            ),
          ),
          Container(
            child: ElevatedButton(
              child: const Text("Добавить праздник"),
              // переход к другому экрану
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

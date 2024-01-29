import 'package:flutter/material.dart';
import 'package:tasks/screens/add_task/Presentation/add_task_screen.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(21, 28, 35, 1),
      centerTitle: true,
      leading: IconButton(
        color: Colors.white,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
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
              });
        },
        icon: const Icon(Icons.add_outlined),
      ),
      title: const Text('Задачи', style: TextStyle(color: Colors.white)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

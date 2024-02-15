import 'package:d_input/d_input.dart';
import 'package:flutter/material.dart';
import 'package:tasks/screens/add_task/Data/DTO/dto.dart';
import 'package:tasks/screens/home/Presentation/home_screen.dart';

// ToDo: добавить выподающее мень тегов
// ToDo: добавить управление временем

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final task = TextEditingController();
    final teg = TextEditingController();
    final time = TextEditingController();
    final description = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Добавление задачи'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          DInput(
            controller: task,
            hint: 'Картное описание задачи',
          ),
          DInput(
            controller: teg,
            hint: 'Teg',
          ),
          DInput(
            controller: time,
            hint: 'Время выполнения задачи',
            inputType: TextInputType.number,
          ),
          DInput(
            controller: description,
            minLine: 1,
            maxLine: 5,
            hint: 'Полное описание задачи',
          ),
          ElevatedButton(
            child: const Text('Ну все, все'),
            onPressed: () {
              DTO(task: task, teg: teg, time: time, description: description)
                  .addInBox();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HomPage(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

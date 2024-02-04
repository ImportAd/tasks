import 'package:d_input/d_input.dart';
import 'package:flutter/material.dart';
import 'package:tasks/screens/add_holiday/Data/DTO/DTO.dart';
import 'package:tasks/screens/home/Presentation/home_screen.dart';

// ToDo: добавить выподающее мень тегов
// ToDo: добавить управление временем

class AddHolidayScreen extends StatelessWidget {
  const AddHolidayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = TextEditingController();
    final date = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Добавление задачи'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          DInput(
            controller: name,
            hint: 'Название праздника',
          ),
          // добавить выбыр через календарь
          DInput(
            controller: date,
            hint: 'Дата праздника',
          ),
          ElevatedButton(
            child: const Text('Ну все, все'),
            onPressed: () {
              DTO(name: name, date: date).addInBox();
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

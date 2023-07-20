import 'package:flutter/material.dart';

/*
  описание экрана
*/

class AddTasks extends StatelessWidget {
  const AddTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Экран добавления задач'),
      ),
      body: Container(),
    );
  }
}

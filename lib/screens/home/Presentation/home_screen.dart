import 'package:flutter/material.dart';
import 'package:tasks/core/Presentation/widgts/task_today/task_container.dart';
import 'package:tasks/screens/home/Presentation/widgts/app_bar/app_bar.dart';

class HomPage extends StatelessWidget {
  HomPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(21, 28, 35, 1),
        appBar: const AppBarHome(),
        body: Column(
          children: [
            TaskContainer(),
            // const NextBirthday(),
            const SizedBox(height: 16),
            // const NextHoliday(),
            const SizedBox(height: 64),
            // const Placeholder(
            //   color: Colors.white,
            //   fallbackHeight: 64,
            // )
          ],
        ),
      ),
    );
  }
}
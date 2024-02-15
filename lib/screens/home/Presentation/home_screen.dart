import 'package:flutter/material.dart';
import 'package:tasks/screens/home/Presentation/widgts/birthday/next_birthday.dart';
import 'package:tasks/screens/home/Presentation/widgts/holiday/next_holiday.dart';
import 'package:tasks/screens/home/Presentation/widgts/tasks/tasks.dart';
import 'package:tasks/screens/home/Presentation/widgts/app_bar/app_bar.dart';

class HomPage extends StatelessWidget {
  const HomPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(21, 28, 35, 1),
        appBar: AppBarHome(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Tasks(),
              SizedBox(height: 16),
              NextBirthday(),
              SizedBox(height: 16),
              NextHoliday(),
              // Placeholder(
              //   color: Colors.white,
              //   fallbackHeight: 64,
              // )
            ],
          ),
        ),
      ),
    );
  }
}

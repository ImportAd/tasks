import 'package:flutter/material.dart';
import 'package:tasks/screens/home/Presentation/widgts/birthday/age.dart';
import 'package:tasks/screens/home/Presentation/widgts/birthday/date.dart';
import 'package:tasks/screens/home/Presentation/widgts/birthday/name.dart';

class BirthdayContainer extends StatelessWidget {
  final String name;
  final String date;
  final String age;
  const BirthdayContainer(
      {Key? key, required this.name, required this.date, required this.age})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(82, 96, 109, 1),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(child: Name(name: name)),
            Expanded(child: Date(date: date)),
            const SizedBox(width: 16),
            Age(age: age),
            const SizedBox(width: 8),
            const Text('Год',
                style: TextStyle(
                  color: Colors.white,
                )),
            // Name(name: "Элина"),
            // Date(date: "1 ноября"),
            // Age(age: "22 года"),
          ],
        ),
      ),
    );
  }
}

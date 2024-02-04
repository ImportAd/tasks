import 'package:flutter/material.dart';
import 'package:tasks/screens/home/Presentation/widgts/holiday/date.dart';
import 'package:tasks/screens/home/Presentation/widgts/holiday/name_holiday.dart';

class HolidayContainer extends StatelessWidget {
  final String name;
  final String date;
  const HolidayContainer({Key? key, required this.name, required this.date})
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
            NameHoliday(text: name),
            DateHoliday(date: date),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DateHoliday extends StatelessWidget {
  final String date;
  const DateHoliday({
    super.key,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      date,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 19,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

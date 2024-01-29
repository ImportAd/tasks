import 'package:flutter/material.dart';

class Date extends StatelessWidget {
  final String date;
  const Date({
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

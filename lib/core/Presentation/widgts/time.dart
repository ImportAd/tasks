import 'package:flutter/material.dart';

class Time extends StatelessWidget {
  final String time;
  const Time({
    super.key,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      time,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 19,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

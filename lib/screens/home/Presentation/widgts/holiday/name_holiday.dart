import 'package:flutter/material.dart';

class NameHoliday extends StatelessWidget {
  final String text;
  const NameHoliday({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 19,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

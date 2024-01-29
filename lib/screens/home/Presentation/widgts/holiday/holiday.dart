import 'package:flutter/material.dart';

class Holiday extends StatelessWidget {
  final String holiday;
  const Holiday({
    super.key,
    required this.holiday,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      holiday,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 19,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

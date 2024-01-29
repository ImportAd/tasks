import 'package:flutter/material.dart';

class Age extends StatelessWidget {
  final String age;
  const Age({
    super.key,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      age,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 19,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

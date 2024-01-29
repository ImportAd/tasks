import 'package:flutter/material.dart';

class Name extends StatelessWidget {
  final String name;
  const Name({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 19,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

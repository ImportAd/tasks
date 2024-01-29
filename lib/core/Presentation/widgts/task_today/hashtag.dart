import 'package:flutter/material.dart';

class Hashtag extends StatelessWidget {
  final String hashtag;
  const Hashtag({
    super.key,
    required this.hashtag,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      hashtag,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 19,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

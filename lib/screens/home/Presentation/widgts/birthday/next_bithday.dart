import 'package:flutter/material.dart';

class NextBirthday extends StatelessWidget {
  const NextBirthday({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text(
            "Ближайший день рождения",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 12, top: 8, right: 12),
          // padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(82, 96, 109, 1),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Name(name: "Элина"),
                // Date(date: "1 ноября"),
                // Age(age: "22 года"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

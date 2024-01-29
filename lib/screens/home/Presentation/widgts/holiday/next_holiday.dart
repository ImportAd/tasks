import 'package:flutter/material.dart';

class NextHoliday extends StatelessWidget {
  const NextHoliday({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text(
            "Ближайший праздник",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 12, top: 8, right: 12),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(82, 96, 109, 1),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                // Expanded(child: Holiday(holiday: "День защитника Отече...")),
                // DateHoliday(
                //   date: "23 февраля",
                // ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

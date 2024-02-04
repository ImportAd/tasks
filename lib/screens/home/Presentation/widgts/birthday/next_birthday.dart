import 'package:flutter/material.dart';
import 'package:tasks/screens/home/Presentation/widgts/birthday/list_birthday.dart';

class NextBirthday extends StatelessWidget {
  const NextBirthday({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 140),
      child: Column(
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
          // вынести в отдельный виджет
          // создать лист ближайших денй рождений
          // сортировать по дате ближайшей к нынешней
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 110),
            child: InkWell(
              onTap: () => {
                // переход на экран задач
              },
              child: ListView(children: const [ListBirthday()]),
            ),
          ),
        ],
      ),
    );
  }
}

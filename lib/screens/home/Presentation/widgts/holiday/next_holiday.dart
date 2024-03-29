import 'package:flutter/material.dart';
import 'package:tasks/screens/home/Presentation/widgts/holiday/list_holidays.dart';

class NextHoliday extends StatelessWidget {
  const NextHoliday({
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
              "Ближайший праздник",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          // вынести в отдельный виджет
          // создать лист ближайших праздников
          // сортировать по дате ближайшей к нынешней
          SizedBox(
            // лучше использовать контейнер
            height: 108,
            child: InkWell(
              onTap: () => {
                // переход на экран праздников
              },
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: generateListHolidays(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tasks/config/colors.dart';

/*
  ToDo: добавить объект DataTime
  Полоска с кратким описанием задачи
  распологается на home экране
  Поля: описание задачи, хештег категории, вермя
*/

class TasksToday extends StatelessWidget {
  final String summary;
  final String hashtag;
  // временно через String нужно реализовать через DataTime
  final String time;

  const TasksToday(
      {Key? key,
      required this.summary,
      required this.hashtag,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        height: 36,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                summary,
                style: textTheme.headlineSmall,
              ),
            ),
            const SizedBox(width: 35),
            Text(
              hashtag,
              style: textTheme.headlineMedium,
            ),
            const SizedBox(width: 35),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(
                time,
                style: textTheme.headlineLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

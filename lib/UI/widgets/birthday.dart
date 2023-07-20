import 'package:flutter/material.dart';
import 'package:tasks/config/colors.dart';

/*
  ToDo: добавить объект DataTime
  Полоска показывающая ближайшего именинника
  распологается на home экране
  Поля: имя именинника, дата дня рождения, сколько исполняется лет
*/

class Birthday extends StatelessWidget {
  final String name;
  // временно через String нужно реализовать через DataTime
  final String birthday;
  // временно через String нужно реализовать через DataTime
  final String year;

  const Birthday(
      {Key? key,
      required this.name,
      required this.birthday,
      required this.year})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
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
              name,
              style: textTheme.headlineLarge,
            ),
          ),
          const SizedBox(width: 20),
          Text(birthday),
          const SizedBox(width: 20),
          Text(year),
        ],
      ),
    );
  }
}

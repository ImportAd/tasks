import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:tasks/config/colors.dart';
import 'package:tasks/config/constants.dart';
import 'package:tasks/UI/widgets/birthday.dart';
import 'package:tasks/UI/screens/tasks/tasks.dart';
import 'package:tasks/UI/widgets/tasks_today.dart';
import 'package:tasks/UI/screens/settings/settings.dart';
import 'package:tasks/UI/screens/add_tasks/add_tasks.dart';

/*
  ToDo: разобраться с Get.to 
  https://medium.com/swlh/flutter-fast-navigation-with-get-5412ab84b390
  Основной экран приложения
*/

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(context) {
    final TextTheme textTheme =
        Theme.of(context).textTheme; // Инициализация темы текста
    return Scaffold(
      backgroundColor: AppColors.backgroundBlack,
      // appBar: PreferredSize(
      //   preferredSize:
      //       Size.fromHeight(58.0.h), // Установка нужной высоты для Appbar`a
      //   child:
      appBar: AppBar(
        backgroundColor: AppColors.backgroundBlack,
        elevation: 0, // убирает тень от appbar`a
        title: Center(
            child: Text('Задачи сегодня', // Заголовок страницы
                style: textTheme.titleLarge)),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings), // Иконка настроек
            onPressed: () => Get.to(const Settings()),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8, left: 15, right: 16, bottom: 16),
        child: Column(
          children: [
            const Column(
              // ToDo: list builder
              children: [
                TasksToday(
                  summary: AppConstants.testSummary,
                  hashtag: AppConstants.testHashtag,
                  time: AppConstants.testTime,
                ),
                TasksToday(
                  summary: AppConstants.testSummary,
                  hashtag: AppConstants.testHashtag,
                  time: AppConstants.testTime,
                ),
                TasksToday(
                  summary: AppConstants.testSummary,
                  hashtag: AppConstants.testHashtag,
                  time: AppConstants.testTime,
                ),
                TasksToday(
                  summary: AppConstants.testSummary,
                  hashtag: AppConstants.testHashtag,
                  time: AppConstants.testTime,
                ),
                TasksToday(
                  summary: AppConstants.testSummary,
                  hashtag: AppConstants.testHashtag,
                  time: AppConstants.testTime,
                ),
                TasksToday(
                  summary: AppConstants.testSummary,
                  hashtag: AppConstants.testHashtag,
                  time: AppConstants.testTime,
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              "Ближайший день рождения",
              //style: textTheme.titleMedium,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Birthday(
                  name: AppConstants.name,
                  birthday: AppConstants.birthday,
                  year: AppConstants.year),
            ),
            ElevatedButton(
                onPressed: () => Get.to(const Tasks()),
                child: const Text("Все задачи")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () => Get.to(const AddTasks()),
                child: const Text("Добавить задачи")),
          ],
        ),
      ),
    );
  }
}

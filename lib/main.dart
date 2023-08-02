import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:tasks/config/theme.dart';
import 'package:tasks/UI/screens/home/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // инициализация get для работы get
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: const MyHomePage(),
    );
  }
}

// не работотает
// просто не может запуситься
// ToDo: Нормально разобраться с ScreenUtili

//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//         // инициализация экрана для пиксельпевфекта
//         designSize: const Size(390, 844),
//         minTextAdapt: true,
//         splitScreenMode: true,
//         builder: (context, child) {
//           return GetMaterialApp(
//             // инициализация get для работы get
//             debugShowCheckedModeBanner: false,
//             theme: theme(),
//             home: const MyHomePage(),
//           );
//         });
//   }
// }


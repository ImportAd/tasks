import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tasks/screens/home/Presentation/home_screen.dart';

Future<void> main() async {
  await GetStorage.init();
  final box = GetStorage();
  box.write('description', 'description');
  runApp(const HomPage());
}

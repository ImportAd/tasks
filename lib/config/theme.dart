import 'package:flutter/material.dart';
import 'package:tasks/config/colors.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundBlack,
    //fontFamily: "Roboto",
    fontFamily: "Semi Bold",
    textTheme: textTheme(),
  );
}

TextTheme textTheme() {
  return const TextTheme(
    titleSmall: TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    titleMedium: TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.w400,
      fontSize: 18,
    ),
    titleLarge: TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.w500,
      fontSize: 26,
    ),
    headlineSmall: TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.w800,
      fontSize: 14,
    ),
    headlineMedium: TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.w900,
      fontSize: 14,
    ),
    headlineLarge: TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.w700,
      fontSize: 24,
    ),
  );
}

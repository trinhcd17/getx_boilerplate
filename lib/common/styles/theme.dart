import 'package:flutter/material.dart';
import 'package:getx_boilerplate/common/values/app_colors.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: 'Roboto',
  primaryColor: const Color(0xFFEF7822),
  secondaryHeaderColor: const Color(0xFF1ED7AA),
  disabledColor: const Color(0xFFBABFC4),
  backgroundColor: const Color(0xFFF3F3F3),
  errorColor: const Color(0xFFE84D4F),
  brightness: Brightness.light,
  hintColor: const Color(0xFF9F9F9F),
  cardColor: Colors.white,
  colorScheme: const ColorScheme.light(
      primary: AppColors.kPrimaryColor, secondary: Color(0xFFEF7822)),
  textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: const Color(0xFFEF7822))),
  unselectedWidgetColor: AppColors.doveGray,
);

ThemeData darkTheme = ThemeData(
  fontFamily: 'Roboto',
  primaryColor: const Color(0xFFffbd5c),
  secondaryHeaderColor: const Color(0xFF009f67),
  disabledColor: const Color(0xffa2a7ad),
  backgroundColor: const Color(0xFF343636),
  errorColor: const Color(0xFFdd3135),
  brightness: Brightness.dark,
  hintColor: const Color(0xFFbebebe),
  cardColor: Colors.black,
  colorScheme: const ColorScheme.dark(
      primary: Color(0xFFffbd5c), secondary: Color(0xFFffbd5c)),
  textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: const Color(0xFFffbd5c))),
  unselectedWidgetColor: AppColors.doveGray,
);

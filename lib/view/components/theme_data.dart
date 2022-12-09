import 'package:flutter/material.dart';

class Mytheme {
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: const Color.fromARGB(255, 17, 17, 17),
      colorScheme: const ColorScheme.dark());
  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light());
}

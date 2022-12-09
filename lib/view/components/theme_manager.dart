import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Thememanager extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
  get thememode => _themeMode;
  toggleTheme(bool isdark) {
    _themeMode = isdark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

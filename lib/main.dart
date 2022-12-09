import 'package:flutter/material.dart';
import 'package:id_card/view/components/theme_manager.dart';
import 'package:id_card/view/home.dart';
import 'package:flutter/services.dart';
import 'package:id_card/view/components/theme_data.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

Thememanager _thememanager = Thememanager();
Thememanager Return_theme() {
  return _thememanager;
}

class _MyappState extends State<Myapp> {
  @override
  void dispose() {
    _thememanager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    _thememanager.addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
        themeMode: _thememanager.thememode,
        theme: Mytheme.lightTheme,
        darkTheme: Mytheme.darkTheme,
        debugShowCheckedModeBanner: false,
        home: const HomePage());
  }
}

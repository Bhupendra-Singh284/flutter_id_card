import 'package:flutter/material.dart';
import 'package:id_card/core/preferences_util.dart';
import 'package:id_card/view/home.dart';
import 'package:flutter/services.dart';

void main() async {
  print("object");
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return const MaterialApp(
        title: 'ID Card App',
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}

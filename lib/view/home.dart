import 'package:flutter/material.dart';
import 'package:id_card/view/components/page_container.dart';
import 'package:id_card/view/components/theme_manager.dart';
import 'package:id_card/view/second_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:id_card/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Thememanager currentTheme = returntheme();
    return GestureDetector(
        onVerticalDragUpdate: (details) {},
        onPanUpdate: (details) {
          if (details.delta.dx < 0) {
            Navigator.of(context).push(PageTransition(
              child: const SecondRoute(),
              childCurrent: this.widget,
              type: PageTransitionType.rightToLeftJoined,
              duration: const Duration(milliseconds: 550),
            ));
          }
        },
        child: Scaffold(
            body: Column(children: [
          const Pagelayout(
              desc:
                  "${' "'} Minato Namikaze is one of the main supporting characters in the Naruto universe. He was the Fourth Hokage of the Hidden Leaf Village. He is the husband of Kushina Uzumaki, and the father of Naruto Uzumaki. He is also the father-in-law of Hinata Hyūga, and the paternal grandfather of Boruto Uzumaki and Himawari Uzumaki. ${'"'}",
              imagename: "images/minato_4.jpg",
              name: "Minato Namikaze",
              nickname: "The Yellow Flash of Hidden Leaf",
              rating: "4.8"),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                "Toggle Themes",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              (Switch(
                  value: currentTheme.thememode == ThemeMode.dark,
                  onChanged: (newvalue) {
                    currentTheme.toggleTheme(newvalue);
                    setState(() {});
                  }))
            ]),
          ),
        ])));
  }
}

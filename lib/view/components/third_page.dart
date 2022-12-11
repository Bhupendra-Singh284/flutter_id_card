import 'package:flutter/material.dart';
import 'package:id_card/view/components/page_container.dart';
import 'package:id_card/view/home.dart';
import 'package:id_card/view/second_page.dart';
import 'package:page_transition/page_transition.dart';

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {},
      onPanUpdate: (details) {
        if (details.delta.dx > 0) {
          Navigator.of(context).push(PageTransition(
              child: const SecondRoute(),
              childCurrent: this,
              type: PageTransitionType.leftToRightJoined,
              duration: const Duration(milliseconds: 550)));
        }
      },
      child: Scaffold(
        backgroundColor: togglevalue() ? Colors.black : Colors.white,
        body: DefaultTextStyle(
          style: TextStyle(color: togglevalue() ? Colors.white : Colors.black),
          child: Pagelayout(
              desc:
                  "${'"'}Jiraiya was one of Konohagakure's Sannin. Famed as a hermit and pervert of stupendous ninja skill, Jiraiya travelled the world in search of knowledge that would help his friends, the various novels he wrote, and, posthumously, the world in its entirety – knowledge that would be passed on to his godson and final student, Naruto Uzumaki.${'"'}",
              imagename: "images/jiraiya_4.jpg",
              name: "Jiraiya",
              nickname: "The Toad Sage, Legendary Sanin",
              rating: "4.6"),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:id_card/view/components/page_layout.dart';

class ThirdPage extends StatelessWidget {
  final bool toggle;
  const ThirdPage({super.key, required this.toggle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: toggle ? Colors.black : Colors.white,
      body: SingleChildScrollView(
        child: DefaultTextStyle(
          style: TextStyle(color: toggle ? Colors.white : Colors.black),
          child: Pagelayout(
            desc:
                "${'"'}Jiraiya was one of Konohagakure's Sannin. Famed as a hermit and pervert of stupendous ninja skill, Jiraiya travelled the world in search of knowledge that would help his friends, the various novels he wrote, and, posthumously, the world in its entirety – knowledge that would be passed on to his godson and final student, Naruto Uzumaki.${'"'}",
            imagename: "assets/images/jiraiya_4.jpg",
            name: "Jiraiya",
            nickname: "The Toad Sage, Legendary Sanin",
            rating: "4.6",
            cval: toggle,
          ),
        ),
      ),
    );
  }
}

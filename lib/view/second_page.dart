import 'package:flutter/material.dart';
import 'package:id_card/view/components/page_layout.dart';

class SecondPage extends StatelessWidget {
  final bool toggle;
  const SecondPage({super.key, required this.toggle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: toggle ? Colors.black : Colors.white,
      body: SingleChildScrollView(
        child: DefaultTextStyle(
          style: TextStyle(color: toggle ? Colors.white : Colors.black),
          child: Pagelayout(
              desc:
                  "${'"'}Kakashi is one of Konoha's most talented ninja, regularly looked to for advice and leadership despite his personal dislike of responsibility. To his students on Team 7, Kakashi emphasises the importance of teamwork; he himself received this lesson, along with the Sharingan, from his childhood friend, Obito Uchiha. After the Fourth Shinobi World War, Kakashi becomes Konoha's Sixth Hokage Kakashi was the teacher of naruto and sasuke${'"'}",
              imagename: "assets/images/kakashi_2.jpg",
              name: "kakashi Hatake",
              nickname: "The Copy Ninja, Kakashi of the Sharingan",
              rating: "4.5",
              cval: toggle),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:id_card/view/components/page_layout.dart';
import 'package:id_card/view/components/third_page.dart';
import 'package:id_card/view/second_page.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

bool isOn = false;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Scaffold(
            backgroundColor: isOn ? Colors.black : Colors.white,
            body: SingleChildScrollView(
              child: Column(children: [
                DefaultTextStyle(
                  style: TextStyle(color: isOn ? Colors.white : Colors.black),
                  child: Pagelayout(
                    desc:
                        "${' "'} Minato Namikaze is one of the main supporting characters in the Naruto universe. He was the Fourth Hokage of the Hidden Leaf Village. He is the husband of Kushina Uzumaki, and the father of Naruto Uzumaki. He is also the father-in-law of Hinata Hyūga, and the paternal grandfather of Boruto Uzumaki and Himawari Uzumaki. ${'"'}",
                    imagename: "assets/images/minato_4.jpg",
                    name: "Minato Namikaze",
                    nickname: "The Yellow Flash of Hidden Leaf",
                    rating: "4.8",
                    cval: isOn,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Toggle Themes",
                          style: TextStyle(
                              color: isOn ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Switch(
                            value: isOn,
                            onChanged: (newvalue) {
                              setState(() {
                                isOn = !isOn;
                              });
                            })
                      ]),
                ),
              ]),
            )),
        SecondPage(toggle: isOn),
        ThirdPage(toggle: isOn)
      ],
    );
  }
}

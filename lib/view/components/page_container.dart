import 'package:flutter/material.dart';
import 'package:id_card/view/components/icon_container.dart';

class Pagelayout extends StatefulWidget {
  final String name;
  final String nickname;
  final String desc;
  final String imagename;
  final String rating;

  const Pagelayout(
      {super.key,
      required this.desc,
      required this.imagename,
      required this.name,
      required this.nickname,
      required this.rating});

  @override
  State<Pagelayout> createState() => _PagelayoutState();
}

class _PagelayoutState extends State<Pagelayout> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            border: const Border(
                bottom: BorderSide(
              color: Color.fromARGB(244, 21, 131, 190),
              width: 1,
            )),
            image: DecorationImage(
              image: AssetImage(widget.imagename),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            widget.name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 70,
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Color.fromARGB(255, 70, 68, 68), width: 1.8))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Text(
                    widget.nickname,
                    textDirection: TextDirection.ltr,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 72, 71, 71), fontSize: 16),
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.red),
                    Text(widget.rating)
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 120,
          padding: const EdgeInsets.all(30),
          alignment: Alignment.center,
          child: Row(
            children: const [
              IconContainer(text: "Call", icon: Icons.call),
              IconContainer(text: "Message", icon: Icons.message),
              IconContainer(text: "Email", icon: Icons.mail),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            widget.desc,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
            softWrap: true,
          ),
        ),
      ],
    );
  }
}

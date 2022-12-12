import 'package:flutter/material.dart';
import 'package:id_card/view/components/icon_container.dart';

class Pagelayout extends StatelessWidget {
  final String name;
  final String nickname;
  final String desc;
  final String imagename;
  final String rating;
  final bool cval;

  const Pagelayout(
      {super.key,
      required this.desc,
      required this.imagename,
      required this.name,
      required this.nickname,
      required this.rating,
      required this.cval});
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
              image: AssetImage(imagename),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 70,
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: cval ? Colors.amber : Colors.black, width: 1.8))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  nickname,
                  textDirection: TextDirection.ltr,
                  style: const TextStyle(fontSize: 16),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: cval ? Colors.orange : Colors.red,
                    ),
                    Text(rating)
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
            desc,
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

import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final String text;
  final IconData icon;
  const IconContainer({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      child: Column(children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 36.0,
          semanticLabel: 'Text to announce in accessibility modes',
        ),
        Text(text)
      ]),
    );
  }
}

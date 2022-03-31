import 'package:flutter/material.dart';

class UnbodingContent {
  RichText text;
  String? image;

  UnbodingContent({required this.text, this.image});
}

List<UnbodingContent> contents = [
  UnbodingContent(
      text: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: 'Um jeito',
          style: TextStyle(
            color: Color(0xff306FD5),
            fontSize: 36,
          ),
          children: <TextSpan>[
            TextSpan(
              text: ' novo',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: ' para organizar suas'),
            TextSpan(
              text: ' tasks',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      image: 'assets/images/Pin.png'),
  UnbodingContent(
      // text: 'Organize seu tempo de forma otimizada.',
      image: 'assets/images/Clock.png'),
  UnbodingContent(
      // text: 'Tudo dentro do prazo, sem perder mais nada.',
      image: 'assets/images/Tick.png'),
];

import 'package:flutter/material.dart';

class UnbodingContent {
  RichText texts;
  String images;

  UnbodingContent({required this.texts, required this.images});
}

List<UnbodingContent> contents = [
  UnbodingContent(
      texts: RichText(
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
      images: 'assets/images/Pin.png'),
  UnbodingContent(
      texts: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: '',
          style: TextStyle(
            color: Color(0xff306FD5),
            fontSize: 36,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'Organize',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: ' eu tempo de forma',
            ),
            TextSpan(
              text: ' otimizada.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      images: 'assets/images/Clock.png'),
  UnbodingContent(
      texts: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: 'Tudo dentro do',
          style: TextStyle(
            color: Color(0xff306FD5),
            fontSize: 36,
          ),
          children: <TextSpan>[
            TextSpan(
              text: ' prazo',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: ', sem perder mais nada.'),
          ],
        ),
      ),
      images: 'assets/images/Tick.png'),
];

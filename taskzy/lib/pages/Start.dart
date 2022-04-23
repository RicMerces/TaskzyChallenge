import 'package:flutter/material.dart';
import 'package:taskzy/pages/content_model.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff306FD5),
      body: Padding(
        padding: EdgeInsets.only(top: 120, left: 40, right: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RichText(
              text: const TextSpan(
                text: 'Vamos começar a sua jornada no ',
                style: TextStyle(fontSize: 36),
                children: [
                  TextSpan(
                    text: 'Taskzy.',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 50),
              child: Text(
                'Administre, organize e realize suas tasks como nunca antes.',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  height: 1.3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

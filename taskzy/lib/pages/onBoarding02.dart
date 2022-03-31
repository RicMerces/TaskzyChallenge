import 'package:flutter/material.dart';

class Onboarding02 extends StatefulWidget {
  @override
  _Onboarding02State createState() => _Onboarding02State();
}

class _Onboarding02State extends State<Onboarding02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemBuilder: (_, i) {
          return Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/Pin.png',
                  height: 300,
                ),
                RichText(
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
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

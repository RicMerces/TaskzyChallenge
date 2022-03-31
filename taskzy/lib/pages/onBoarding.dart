import 'package:taskzy/main.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          // padding: const EdgeInsets.symmetric(),
          // height: 80,
          TextButton(
            onPressed: () {},
            child: const Text(
              'Skip',
              style: TextStyle(
                color: Color(0xff306FD5),
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
      backgroundColor: Color(0xffF2EFE9),
      body: Container(
        // padding: const EdgeInsets.only(bottom: 80),
        margin: const EdgeInsets.only(left: 50, right: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Pin.png'),
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
      ),
    );
  }
}

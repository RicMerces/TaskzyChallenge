import 'package:taskzy/main.dart';
import 'package:flutter/material.dart';

class Onboarding01 extends StatefulWidget {
  @override
  _Onboarding01State createState() => _Onboarding01State();
}

class _Onboarding01State extends State<Onboarding01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2EFE9),
      body: Container(
        margin: const EdgeInsets.only(left: 40.0, right: 40.0),
        child: Column(
          children: [
            // RichText(text: Text('data'))
            Image.asset('assets/images/Pin.png'),
            // const Text(

            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

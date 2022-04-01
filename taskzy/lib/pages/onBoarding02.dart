import 'package:flutter/material.dart';
import 'content_model.dart';

class Onboarding02 extends StatefulWidget {
  @override
  _Onboarding02State createState() => _Onboarding02State();
}

class _Onboarding02State extends State<Onboarding02> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: contents.length,
        itemBuilder: (_, i) {
          return Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                Image.asset(
                  contents[i].images,
                  height: 300,
                ),
                contents[i].texts,
              ],
            ),
          );
        },
      ),
    );
  }
}

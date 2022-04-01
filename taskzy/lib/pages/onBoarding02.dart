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
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (_, i) {
          return Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  contents[i].images,
                  height: 300,
                ),
                contents[i].texts,
                i == contents.length - 1
                    ? TextButton(
                        onPressed: () => {},
                        child: const Text(
                          'Começar',
                          style: TextStyle(
                            color: Color(0xff306fd5),
                            fontSize: 22,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          fixedSize: const Size(318, 67),
                          side: const BorderSide(
                            width: 2,
                            color: Color(0xff306fd5),
                          ),
                        ),
                      )
                    : Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            contents.length,
                            (index) => buildDot(index, context),
                          ),
                        ),
                      ),
              ],
            ),
          );
        },
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffD0D9E6),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:taskzy/pages/Start.dart';
import 'content_model.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;

  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        itemCount: contents.length,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (_, i) {
          return Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 50, left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      child: i == contents.length - 1
                          ? null
                          : TextButton(
                              onPressed: () => {
                                    _controller?.animateToPage(
                                      contents.length - 1,
                                      duration:
                                          const Duration(milliseconds: 400),
                                      curve: Curves.easeInOut,
                                    )
                                  },
                              child: Text(
                                'Skip',
                                style: TextStyle(
                                  color: Color(0xff306FD5),
                                  fontSize: 20,
                                ),
                              )),
                    )
                  ],
                ),
                Image.asset(
                  contents[i].images,
                  height: 300,
                ),
                contents[i].texts,
                i == contents.length - 1
                    ? TextButton(
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Start()),
                          )
                        },
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

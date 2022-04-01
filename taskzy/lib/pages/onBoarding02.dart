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
                            width: 3,
                            color: Color(0xff306fd5),
                          ),
                        ),
                      )
                    : TextButton(onPressed: null, child: Text(''))
              ],
            ),
          );
        },
      ),
    );
  }
}

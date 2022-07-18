import 'package:flutter/material.dart';
import 'package:taskzy/pages/home.dart';
import 'package:taskzy/pages/home02.dart';
import 'package:taskzy/pages/registro.dart';
import 'package:taskzy/pages/start.dart';
import 'package:taskzy/pages/onboarding.dart';
import 'pages/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home02(),
    );
  }
}

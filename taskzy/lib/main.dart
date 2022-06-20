import 'package:flutter/material.dart';
import 'package:taskzy/pages/Home.dart';
import 'package:taskzy/pages/Registro.dart';
import 'package:taskzy/pages/Start.dart';
import 'package:taskzy/pages/onBoarding.dart';
import 'pages/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Registro(),
    );
  }
}

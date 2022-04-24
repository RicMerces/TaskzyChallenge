import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2EFE9),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: RichText(
                  text: const TextSpan(
                      text: 'Vamos entrar.',
                      style: TextStyle(
                        fontSize: 33,
                        color: Color(0xff306FD5),
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                    TextSpan(
                        text: ' Sentimos sua falta!',
                        style: TextStyle(fontWeight: FontWeight.normal))
                  ]))),
          Padding(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 25),
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.blue),
                              borderRadius: BorderRadius.circular(5)),
                          labelText: 'Usuario'),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 3, color: Colors.blue),
                            borderRadius: BorderRadius.circular(5)),
                        labelText: 'Senha'),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

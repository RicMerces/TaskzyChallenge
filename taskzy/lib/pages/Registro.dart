import 'package:flutter/material.dart';

class Registro extends StatefulWidget {
  const Registro({Key? key}) : super(key: key);

  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF2EFE9),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 20, left: 30, right: 30),
            child: Column(
              children: [
                Row(
                    //icon
                    ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 100, right: 30),
                      child: RichText(
                        text: const TextSpan(
                            text: 'Bem-vinde! \n',
                            style: TextStyle(
                              color: Color(0xff306FD5),
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                            children: [
                              TextSpan(
                                text: 'Vai ser ótimo te conhecer.',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ]),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(labelText: 'Nome'),
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(labelText: 'Usuario'),
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(labelText: 'Email'),
                    ),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(labelText: 'Senha'),
                    ),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration:
                          InputDecoration(labelText: 'Confirmação de Senha'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

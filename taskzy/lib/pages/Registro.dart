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
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            labelText: 'Nome',
                            contentPadding: EdgeInsets.all(18),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0, color: Color(0xff306FD5)),
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            labelText: 'Usuario',
                            contentPadding: EdgeInsets.all(18),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Color(0xff306FD5)),
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      Padding(
                        padding: EdgeInsets.only(top: 14),
                        child: Text(
                          'Seja criativo!',
                        ),
                      ),
                    ]),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            labelText: 'E-mail',
                            contentPadding: EdgeInsets.all(18),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Color(0xff306FD5)),
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            labelText: 'Senha',
                            contentPadding: EdgeInsets.all(18),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Color(0xff306FD5)),
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      Padding(
                        padding: EdgeInsets.only(top: 14),
                        child: Text(
                          '- 8 ou mais caracteres',
                        ),
                      ),
                    ]),
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      Padding(
                        padding: EdgeInsets.only(top: 14),
                        child: Text(
                          '- Letras e números',
                        ),
                      ),
                    ]),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            labelText: 'Confirmação de Senha',
                            contentPadding: EdgeInsets.all(18),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Color(0xff306FD5)),
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                    Column(children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Já tem uma conta?',
                              style: TextStyle(
                                  color: Color(0xff4D4D4D), fontSize: 15),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Faça login.',
                                  style: TextStyle(
                                    color: Color(0xff306FD5),
                                    fontSize: 15,
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 40),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Registro',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xff306FD5),
                            fixedSize: Size(318, 67),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      )
                    ])
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

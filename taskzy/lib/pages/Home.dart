import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _nome = 'Exemplo';

  set nome(String newNome) {
    _nome = newNome;
  }

  String get nome {
    return _nome;
  }

  bool? _checkmark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Padding(
        padding: EdgeInsets.only(top: 40, left: 50, right: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Olá $nome,',
                  style: TextStyle(
                    color: Color(0xff306FD5),
                    fontSize: 25,
                  ),
                ),
                Image.asset('assets/images/Taskzy.png')
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(
                            value: _checkmark,
                            onChanged: (bool? x) {
                              print(x);
                              setState(() {
                                _checkmark = x;
                              });
                            },
                          ),
                          Column(
                            children: [Text('Ligar para médico')],
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}

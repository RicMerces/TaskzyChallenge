import 'package:flutter/material.dart';
import 'package:taskzy/pages/Login.dart';
import 'package:taskzy/pages/Registro.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  void abrirLogin() {
    print('Login');
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Login(),
        ));
  }

  void abrirRegistro() {
    print('Registro');
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Registro(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff306FD5),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 60, horizontal: 30),
        child: Column(
          children: [
            RichText(
              text: const TextSpan(
                text: 'Vamos começar a sua jornada no ',
                style: TextStyle(fontSize: 36),
                children: [
                  TextSpan(
                    text: 'Taskzy.',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            const Text(
              'Administre, organize e realize suas tasks como nunca antes.',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                height: 1.3,
              ),
            ),
            SizedBox(height: 150),
            Column(
              children: [
                TextButton(
                  onPressed: () => abrirLogin(),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Color(0xff306FD5), fontSize: 22),
                  ),
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    fixedSize: const Size(318, 67),
                    backgroundColor: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: TextButton(
                    onPressed: () => abrirRegistro(),
                    child: const Text(
                      'Cadastro',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      fixedSize: const Size(318, 67),
                      side: BorderSide(
                        width: 2,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

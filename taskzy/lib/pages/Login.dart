import 'package:flutter/material.dart';
import 'package:taskzy/pages/Start.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2EFE9),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Start(),
                          ));
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Color(0xffff306FD5),
                      size: 36,
                    )),
              )
            ],
          ),
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
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Color(0xff306FD5)),
                              borderRadius: BorderRadius.circular(5)),
                          labelText: 'Usuario'),
                    ),
                  ),
                  TextField(
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3, color: Color(0xff306FD5)),
                          borderRadius: BorderRadius.circular(5)),
                      labelText: 'Senha',
                      suffixIcon: IconButton(
                          icon: Icon(_isObscure
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined),
                          color: Color(0xff306FD5),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          }),
                    ),
                  ),
                ],
              )),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Não tem uma conta?',
                      style: TextStyle(color: Color(0xff4D4D4D), fontSize: 15),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Registre-se.',
                          style: TextStyle(
                            color: Color(0xff306FD5),
                            fontSize: 15,
                          ),
                        ))
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Login',
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
              )
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Registro extends StatefulWidget {
  const Registro({Key? key}) : super(key: key);

  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2EFE9),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 30, right: 30),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60, right: 30),
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
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Nome',
                  contentPadding: EdgeInsets.all(18),
                  border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 0, color: Color(0xff306FD5)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: Color(0xff306FD5),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  labelStyle: TextStyle(
                    color: Color(0xff306FD5),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Usuario',
                  contentPadding: EdgeInsets.all(18),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 3,
                      color: Color(0xff306FD5),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: Color(0xff306FD5),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  labelStyle: TextStyle(
                    color: Color(0xff306FD5),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  SizedBox(height: 30),
                  Text(
                    'Seja criativo!',
                    style: TextStyle(
                      color: Color(0xff4D4D4D),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
              SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  contentPadding: EdgeInsets.all(18),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 3,
                      color: Color(0xff306FD5),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: Color(0xff306FD5),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  labelStyle: TextStyle(
                    color: Color(0xff306FD5),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                obscureText: _isObscure,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  contentPadding: EdgeInsets.all(18),
                  suffixIcon: IconButton(
                    icon: Icon(_isObscure
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined),
                    color: Color(0xff306FD5),
                    onPressed: () {
                      setState(
                        () {
                          _isObscure = !_isObscure;
                        },
                      );
                    },
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: Color(0xff306FD5),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: Color(0xff306FD5),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  labelStyle: TextStyle(
                    color: Color(0xff306FD5),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 10),
                      Text(
                        '- 8 ou mais caracteres',
                        style: TextStyle(
                          color: Color(0xff4D4D4D),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '- Letras e números',
                        style: TextStyle(
                          color: Color(0xff4D4D4D),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: _isObscure,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Confirmação de Senha',
                  labelStyle: TextStyle(
                    color: Color(0xff306FD5),
                  ),
                  contentPadding: EdgeInsets.all(18),
                  suffixIcon: IconButton(
                    icon: Icon(_isObscure
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined),
                    onPressed: () {
                      setState(
                        () {
                          _isObscure = !_isObscure;
                        },
                      );
                    },
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: Color(0xff306FD5),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: Color(0xff306FD5),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Já tem uma conta?',
                    style: TextStyle(color: Color(0xff4D4D4D), fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Faça login.',
                      style: TextStyle(
                        color: Color(0xff306FD5),
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

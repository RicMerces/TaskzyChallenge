import 'package:flutter/material.dart';
import 'package:taskzy/pages/adicionar_task.dart';
import '../widget/home_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _nome = 'Exemplo';

  bool _checkmark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AdicionarTask(),
            ),
          );
        },
        child: const Icon(
          Icons.add,
        ),
        backgroundColor: Color(0xff306FD5),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 60, horizontal: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Olá $_nome,',
                  style: TextStyle(
                    color: Color(0xff306FD5),
                    fontSize: 25,
                  ),
                ),
                Image.asset('assets/images/Taskzy.png'),
              ],
            ),
            SizedBox(height: 50),
            HomeCard(
              checkmark: _checkmark,
              title: 'Ligar para médico',
              description: 'Dr. Jorge - (71) 99999-1234',
              date: '9h00 - 22/10/2022',
              onChanged: (value) {
                setState(
                  () {
                    _checkmark = !_checkmark;
                  },
                );
              },
            ),
            SizedBox(height: 20),
            HomeCard(
              checkmark: _checkmark,
              title: 'Ligar para médico',
              description: 'Dr. Jorge - (71) 99999-1234',
              date: '9h00 - 22/10/2022',
              onChanged: (value) {
                setState(
                  () {
                    _checkmark = !_checkmark;
                  },
                );
              },
            ),
            SizedBox(height: 20),
            HomeCard(
              checkmark: _checkmark,
              title: 'Ligar para médico',
              description: 'Dr. Jorge - (71) 99999-1234',
              date: '9h00 - 22/10/2022',
              onChanged: (value) {
                setState(
                  () {
                    _checkmark = !_checkmark;
                  },
                );
              },
            ),
            SizedBox(height: 20),
            HomeCard(
              checkmark: _checkmark,
              title: 'Ligar para médico',
              description: 'Dr. Jorge - (71) 99999-1234',
              date: '9h00 - 22/10/2022',
              onChanged: (value) {
                setState(
                  () {
                    _checkmark = !_checkmark;
                  },
                );
              },
            ),
            SizedBox(height: 20),
            HomeCard(
              checkmark: _checkmark,
              title: 'Ligar para médico',
              description: 'Dr. Jorge - (71) 99999-1234',
              date: '9h00 - 22/10/2022',
              onChanged: (value) {
                setState(
                  () {
                    _checkmark = !_checkmark;
                  },
                );
              },
            ),
            SizedBox(height: 20),
            HomeCard(
              checkmark: _checkmark,
              title: 'Ligar para médico',
              description: 'Dr. Jorge - (71) 99999-1234',
              date: '9h00 - 22/10/2022',
              onChanged: (value) {
                setState(
                  () {
                    _checkmark = !_checkmark;
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

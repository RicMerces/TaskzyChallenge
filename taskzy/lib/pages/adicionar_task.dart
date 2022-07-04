import 'package:flutter/material.dart';

class AdicionarTask extends StatefulWidget {
  const AdicionarTask({Key? key}) : super(key: key);

  @override
  _AdicionarTaskState createState() => _AdicionarTaskState();
}

class _AdicionarTaskState extends State<AdicionarTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          size: 30,
          color: Color(0xff306FD5),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20, left: 30, right: 30),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Titulo',
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
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Descrição',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 18, vertical: 50),
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
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                labelText: 'Data e Horário',
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
                suffixIcon: Icon(
                  Icons.calendar_today,
                  color: Color(0xff306FD5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

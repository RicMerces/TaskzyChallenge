import 'package:flutter/material.dart';
import 'package:taskzy/model/checkmark.dart';
import 'package:taskzy/pages/adicionar_task.dart';
import '../widget/home_card.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final nome = 'Exemplo';
  final List<Checkmark> listasDeTasks = [
    Checkmark(
        title: 'Ligar para médico',
        date: '9h00 - 22/10/2022',
        description: 'Dr. Jorge - (71) 99999-1234'),
    Checkmark(
        title: 'Assistir novo episodio',
        date: '21h00 - 23/10/2022',
        description: 'Novo episodio do seriado "Seriado"'),
    Checkmark(
        title: 'Partida de Golf',
        date: '7h00 - 24/10/2022',
        description: 'Partida de golf'),
    Checkmark(
        title: 'Ligar para médico',
        date: '9h00 - 22/10/2022',
        description: 'Dr. Jorge - (71) 99999-1234'),
    Checkmark(
        title: 'Assistir novo episodio',
        date: '21h00 - 23/10/2022',
        description: 'Novo episodio do seriado "Seriado"'),
    Checkmark(
        title: 'Partida de Golf',
        date: '7h00 - 24/10/2022',
        description: 'Partida de golf'),
    Checkmark(
        title: 'Ligar para médico',
        date: '9h00 - 22/10/2022',
        description: 'Dr. Jorge - (71) 99999-1234'),
    Checkmark(
        title: 'Assistir novo episodio',
        date: '21h00 - 23/10/2022',
        description: 'Novo episodio do seriado "Seriado"'),
    Checkmark(
        title: 'Partida de Golf',
        date: '7h00 - 24/10/2022',
        description: 'Partida de golf'),
  ];

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
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Olá $nome,',
                  style: const TextStyle(
                    color: Color(0xff306FD5),
                    fontSize: 25,
                  ),
                ),
                Image.asset('assets/images/Taskzy.png'),
              ],
            ),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, int index) {
                return HomeCard(modelo: listasDeTasks[index]);
              },
              itemCount: listasDeTasks.length,
            ),
          ],
        ),
      ),
    );
  }
}



// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   String nome = 'Exemplo';
//   bool _checkmark = false;

//   void toggleButtonSelect() {
//     _checkmark = !_checkmark;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => AdicionarTask(),
//             ),
//           );
//         },
//         child: const Icon(
//           Icons.add,
//         ),
//         backgroundColor: Color(0xff306FD5),
//       ),
//       body: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'Olá $nome,',
//                 style: const TextStyle(
//                   color: Color(0xff306FD5),
//                   fontSize: 25,
//                 ),
//               ),
//               Image.asset('assets/images/Taskzy.png'),
//             ],
//           ),
//           const SizedBox(height: 50),
//           ListView.builder(
//             shrinkWrap: true,
//             itemBuilder: (context, index) {
//               return HomeCard(
//                 checkmark: _checkmark,
//                 title: 'Ligar para médico',
//                 description: 'Dr. Jorge - (71) 99999-1234',
//                 date: '9h00 - 22/10/2022',
//                 onChanged: (value) {
//                   setState(
//                     () {
//                       _checkmark = !_checkmark;
//                     },
//                   );
//                 },
//               );
//             },
//             itemCount: 2,
//           ),
//         ],
//       ),
//     );
//   }
// }

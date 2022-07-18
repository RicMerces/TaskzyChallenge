import 'package:flutter/material.dart';
import 'package:taskzy/model/checkmark.dart';

class HomeCard extends StatefulWidget {
  // final bool checkmark;
  // final Function(bool?)? onChanged;

  // final String title;
  // final String? description;
  // final String? date;

  const HomeCard({Key? key, required this.modelo
      // this.onChanged,
      // required this.checkmark,
      // required this.title,
      // this.description = '',
      // this.date = '',
      })
      : super(key: key);

  final Checkmark modelo;

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            value: widget.modelo.checked,
            onChanged: (bool? value) {
              setState(() {
                widget.modelo.checked = value!;
              });
            },
            side: const BorderSide(
              color: Color(0xff306FD5),
              width: 1.5,
            ),
            activeColor: const Color(0xff306FD5),
            checkColor: const Color(0xff306FD5),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.modelo.title,
                style: const TextStyle(
                  fontSize: 20,
                  color: Color(0xff306FD5),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                widget.modelo.description,
                style: const TextStyle(
                  fontSize: 15,
                  color: Color(0xff306FD5),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                widget.modelo.date,
                style: const TextStyle(
                  fontSize: 13,
                  color: Color(0xff306FD5),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
          color:
              widget.modelo.checked == false ? const Color(0xffD0D9E6) : null,
          borderRadius: BorderRadius.circular(20),
          border: widget.modelo.checked == true
              ? Border.all(
                  width: 1.5,
                  color: const Color(0xff306FD5),
                )
              : Border.all(
                  width: 1.5,
                  color: const Color(0xffD0D9E6),
                )),
    );
  }
}

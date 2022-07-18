import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final bool checkmark;
  final Function(bool?)? onChanged;

  final String title;
  final String? description;
  final String? date;

  const HomeCard({
    Key? key,
    this.onChanged,
    required this.checkmark,
    required this.title,
    this.description = '',
    this.date = '',
  }) : super(key: key);

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
            value: checkmark,
            onChanged: onChanged ?? (value) {},
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
                title,
                style: const TextStyle(
                  fontSize: 20,
                  color: Color(0xff306FD5),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                description!,
                style: const TextStyle(
                  fontSize: 15,
                  color: Color(0xff306FD5),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                date!,
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
          color: checkmark == false ? const Color(0xffD0D9E6) : null,
          borderRadius: BorderRadius.circular(20),
          border: checkmark == true
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

import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  final String skill;
  const Skills({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.keyboard_double_arrow_right_outlined,
          color: Colors.white,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          skill,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w300,
              wordSpacing: 1.5),
          softWrap: true,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}

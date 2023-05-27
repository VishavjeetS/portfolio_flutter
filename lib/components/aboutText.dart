import 'package:flutter/material.dart';

class AboutTextStyle extends StatelessWidget {
  final String text;
  const AboutTextStyle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w100,
          wordSpacing: 1.5),
      softWrap: true,
    );
  }
}

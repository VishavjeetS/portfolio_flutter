import 'package:flutter/material.dart';

class ContactRight extends StatefulWidget {
  const ContactRight({super.key});

  @override
  State<ContactRight> createState() => _ContactRightState();
}

class _ContactRightState extends State<ContactRight> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const RotatedBox(
          quarterTurns: 45,
          child: Text(
            "vishavhanspal00@gmail.com",
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 18, color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 3 - 120,
          width: 150,
          child: const RotatedBox(
              quarterTurns: 45,
              child: Divider(
                color: Colors.white,
              )),
        ),
      ],
    );
  }
}

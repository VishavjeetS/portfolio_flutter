import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  final String title, university, batch;
  const Education(
      {super.key,
      required this.title,
      required this.university,
      required this.batch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black87.withOpacity(0.4),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w600),
            ),
            Text(
              university,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontWeight: FontWeight.w500),
            ),
            Text(
              batch,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

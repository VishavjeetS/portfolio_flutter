import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class AchievmentsCard extends StatefulWidget {
  final String title, description, source, icon;
  const AchievmentsCard(
      {super.key,
      required this.title,
      required this.description,
      required this.source,
      required this.icon});

  @override
  State<AchievmentsCard> createState() => _AchievmentsCardState();
}

class _AchievmentsCardState extends State<AchievmentsCard> {
  Color color = primaryColor.withOpacity(0.55);
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHovering = true;
          // value ? color = Colors.grey.shade700 : color = Colors.grey.shade800;
          value ? color = primaryColor : color = primaryColor.withOpacity(0.55);
        });
      },
      child: Padding(
          padding: const EdgeInsets.all(8),
          child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              height: 250,
              width: 450,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: color),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.red),
                              image: DecorationImage(
                                  image: AssetImage(widget.icon),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.description,
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 18,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  )
                ],
              ))),
    );
  }
}

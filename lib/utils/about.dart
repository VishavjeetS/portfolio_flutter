import 'package:flutter/material.dart';
import 'package:portfolio/components/education._card.dart';
import 'package:portfolio/utils/about_tablet.dart';
import 'package:portfolio/utils/about_web.dart';
import 'package:timelines/timelines.dart';

import '../components/aboutText.dart';
import '../components/skills.dart';
import '../constants/constants.dart';
import 'about_mobile.dart';

class About extends StatefulWidget {
  final Key aboutKey;
  const About({super.key, required this.aboutKey});

  @override
  State<About> createState() => _About();
}

class _About extends State<About> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      key: widget.aboutKey,
      width: double.infinity,
      child: width <= mobile
          ? const AboutMobile()
          : width <= tablet && !(width >= web)
              ? const AboutTablet()
              : const AboutWeb(),
    );
  }
}

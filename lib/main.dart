import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/screens/responsive.dart';

import 'screens/mobile.dart';
import 'screens/tablet.dart';
import 'screens/web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio-Vishav',
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home: const Responsive(mobile: Mobile(), tablet: Tablet(), web: Web()),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class Responsive extends StatefulWidget {
  final Widget mobile, tablet, web;
  const Responsive(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.web});

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < mobile) {
        return widget.mobile;
      } else if (constraints.maxWidth < tablet) {
        return widget.tablet;
      } else {
        return widget.web;
      }
    });
  }
}

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class MyTextButton extends StatefulWidget {
  final GlobalKey<State<StatefulWidget>> globalKey;
  final String title;
  IconData? icon;
  GlobalKey<ScaffoldState>? scaffoldKey;
  MyTextButton(
      {super.key,
      required this.globalKey,
      required this.title,
      this.icon,
      this.scaffoldKey});

  @override
  State<MyTextButton> createState() => _MyTextButtonState();
}

class _MyTextButtonState extends State<MyTextButton> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: TextButton(
        onPressed: () {
          Scrollable.ensureVisible(
            widget.globalKey.currentContext!,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
          );
          if (widget.scaffoldKey != null) {
            widget.scaffoldKey!.currentState?.openEndDrawer();
          }
        },
        child: width <= mobile
            ? ListTile(
                leading: Icon(
                  widget.icon,
                  color: Colors.white,
                ),
                title: Text(
                  widget.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                      fontSize: 20),
                ),
              )
            : Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ),
      ),
    );
  }
}

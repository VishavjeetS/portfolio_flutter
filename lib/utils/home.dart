import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class Home extends StatefulWidget {
  final Key homeKey;
  final GlobalKey<State<StatefulWidget>> aboutKey;
  const Home({super.key, required this.homeKey, required this.aboutKey});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      key: widget.homeKey,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hi, my name is",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w200),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Vishavjeet Singh",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 70,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "I develop things for mobile/web",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 60,
                      fontWeight: FontWeight.w400),
                  softWrap: true,
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(right: width < web ? 20 : 450),
                  child: Text(
                    "As a computer science student, my portfolio showcases software development expertise, data structures, and algorithm analysis. I prioritize creative and precise solutions that are robust and user-friendly.",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                    softWrap: true,
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Container(
                  width: 300,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white)),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        Scrollable.ensureVisible(
                            widget.aboutKey.currentContext!,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          shape: MaterialStateProperty.all(
                              const RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.white),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))))),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Check my portfolio!",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

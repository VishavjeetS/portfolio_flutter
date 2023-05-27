import 'package:flutter/material.dart';
import 'package:portfolio/components/contact_left.dart';
import 'package:portfolio/components/contact_right.dart';
import 'package:portfolio/utils/achievments.dart';
import 'package:portfolio/utils/projects.dart';
import 'package:portfolio/utils/home.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components/nav_items.dart';
import '../constants/constants.dart';
import '../utils/about.dart';
import '../utils/contact.dart';

class Web extends StatefulWidget {
  const Web({super.key});

  @override
  State<Web> createState() => _WebState();
}

class _WebState extends State<Web> {
  @override
  Widget build(BuildContext context) {
    final aboutKey = GlobalKey(debugLabel: "about");
    final homeKey = GlobalKey(debugLabel: "home");
    final projectKey = GlobalKey(debugLabel: "project");
    final contactKey = GlobalKey(debugLabel: "contact");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leadingWidth: 150,
        elevation: 0,
        leading: const Center(
          child: Text(
            "Portfolio",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          MyTextButton(globalKey: homeKey, title: "Home"),
          MyTextButton(globalKey: aboutKey, title: "About"),
          MyTextButton(globalKey: projectKey, title: "Projects"),
          MyTextButton(globalKey: contactKey, title: "Contact"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                launchUrl(Uri.parse(
                    "https://drive.google.com/file/d/14WuTThhfETqJB4n6V6eUGsr4YOBF24W4/view?usp=share_link"));
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(10))))),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Resume",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // color: primaryColor,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          primaryColor,
          primaryColor.withOpacity(0.85),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Row(
          children: [
            const ContactLeft(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 150,
                    ),

                    //home
                    Home(
                      homeKey: homeKey,
                      aboutKey: aboutKey,
                    ),

                    const SizedBox(
                      height: 60,
                    ),

                    //about
                    About(
                      aboutKey: aboutKey,
                    ),

                    const SizedBox(
                      height: 60,
                    ),

                    const Achievments(),

                    const SizedBox(
                      height: 40,
                    ),

                    //projects
                    Projects(
                      projectKey: projectKey,
                    ),

                    const SizedBox(
                      height: 80,
                    ),

                    //contact
                    Contact(
                      contactKey: contactKey,
                    ),
                    Column(
                      children: [
                        const Text(
                          "Developed by Vishavjeet Singh",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w200,
                              fontSize: 20),
                        ),
                        Text(
                          "Ref - Jeevanandham",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontWeight: FontWeight.w200,
                              fontSize: 18),
                        ),
                        const SizedBox(
                          height: 5,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const ContactRight()
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/components/nav_items.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants/constants.dart';
import '../utils/about.dart';
import '../utils/achievments.dart';
import '../utils/contact.dart';
import '../utils/home.dart';
import '../utils/projects.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  final _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final aboutKey = GlobalKey(debugLabel: "about");
    final homeKey = GlobalKey(debugLabel: "home");
    final projectKey = GlobalKey(debugLabel: "project");
    final contactKey = GlobalKey(debugLabel: "contact");

    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: primaryColor,
        leadingWidth: 100,
        leading: InkWell(
          onTap: () {
            _key.currentState!.openDrawer();
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: const [
                Text(
                  "<",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  "V",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  "/>",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
        ),
        elevation: 0,
        actions: [
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
      drawer: Drawer(
          backgroundColor: primaryColor.withOpacity(0.5),
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Column(
              children: [
                Container(
                  color: primaryColor,
                  child: Column(
                    children: [
                      const ListTile(
                        leading: Text(
                          "Vishavjeet Singh",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      ListTile(
                        leading: Text(
                          "Mobile/Web Developer",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 20,
                              fontWeight: FontWeight.w200),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextButton(
                    scaffoldKey: _key,
                    globalKey: homeKey,
                    title: "Home",
                    icon: Icons.home_outlined),
                MyTextButton(
                    scaffoldKey: _key,
                    globalKey: aboutKey,
                    title: "About",
                    icon: Icons.work_outline),
                MyTextButton(
                    scaffoldKey: _key,
                    globalKey: projectKey,
                    title: "Projects",
                    icon: Icons.work_outline),
                MyTextButton(
                    scaffoldKey: _key,
                    globalKey: contactKey,
                    title: "Contact",
                    icon: Icons.contact_phone_outlined),
              ],
            ),
          )),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          primaryColor,
          primaryColor.withOpacity(0.85),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
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
            ),
          ],
        ),
      ),
    );
  }
}

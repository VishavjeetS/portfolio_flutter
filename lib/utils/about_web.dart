import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../components/aboutText.dart';
import '../components/education._card.dart';
import '../components/skills.dart';
import '../constants/constants.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.8),
                      ),
                      child: const Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w200,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "About Me",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 250,
                      child: Divider(
                        color: Colors.white.withOpacity(0.8),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),

                // About Me
                Wrap(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AboutTextStyle(
                              text:
                                  "Hello, I'm Vishavjeet Singh, a recent graduate with a strong passion for technology. With expertise in Flutter and native Android development, I take pride in creating visually appealing and robust mobile applications."),
                          const SizedBox(
                            height: 10,
                          ),
                          const AboutTextStyle(
                              text:
                                  "My portfolio showcases a diverse range of projects that demonstrate my skills and versatility."),
                          const SizedBox(
                            height: 10,
                          ),
                          const AboutTextStyle(
                              text:
                                  "As a fresher in the industry, I'm excited to explore new opportunities and collaborations, particularly in freelance work. I thrive on teamwork, open communication, and proactive problem-solving to deliver exceptional results"),
                          const SizedBox(
                            height: 10,
                          ),
                          const AboutTextStyle(
                              text:
                                  "Keeping myself updated with the latest technological advancements, I strive to provide intuitive user experiences and optimize performance. Let's connect and embark on exciting ventures together!"),
                          const SizedBox(
                            height: 15,
                          ),
                          const AboutTextStyle(
                              text:
                                  "Here's the current technologies I'm working with recently:"),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Skills(skill: "Flutter"),
                                    Skills(skill: "Android"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Skills(skill: "Java"),
                                    Skills(skill: "MySQL")
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.8),
                      ),
                      child: const Center(
                        child: Text(
                          '2',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w200,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Education",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 150,
                      child: Divider(
                        color: Colors.white.withOpacity(0.8),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.8,
                width: MediaQuery.of(context).size.width / 3.2,
                child: Timeline.tileBuilder(
                  builder: TimelineTileBuilder.fromStyle(
                    contentsAlign: ContentsAlign.alternating,
                    contentsBuilder: (context, index) {
                      final detail = list[index];
                      return Education(
                          title: detail[0],
                          university: detail[1],
                          batch: detail[2]);
                    },
                    itemCount: list.length,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

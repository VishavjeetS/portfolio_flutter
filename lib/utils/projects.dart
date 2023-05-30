import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/project_card.dart';

class Projects extends StatefulWidget {
  final Key projectKey;
  const Projects({super.key, required this.projectKey});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  bool isSelected = false;
  bool secondCard = false;
  bool thirdCard = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      key: widget.projectKey,
      children: <Widget>[
        const Text(
          "What I have made till far?",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "projects with github links",
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w100),
        ),
        const SizedBox(
          height: 30,
        ),
        SingleChildScrollView(
          scrollDirection: width < tablet ? Axis.vertical : Axis.horizontal,
          child: width < tablet
              ? Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ProjectCard(
                        onTap: () {
                          launchUrl(Uri.parse(
                              "https://github.com/VishavjeetS/Moviz"));
                        },
                        title: "Moviz",
                        description:
                            "The Moviz app is developed using Flutter and utilizes the TMDB API for authentication and favoriting items. Getx Controller is employed to handle the application's state management efficiently.",
                        isSelected: isSelected,
                        footer: "Android . IOS",
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ProjectCard(
                          onTap: () {
                            launchUrl(Uri.parse(
                                "https://github.com/VishavjeetS/OBook"));
                          },
                          title: "OBook",
                          description:
                              "OBook is a media app that utilizes APIs like YTS for magnet details, TMDB for movies/TV shows, and Jinka for anime. Retrofit API handles data retrieval, while Room DB serves as the local storage solution.",
                          isSelected: secondCard,
                          footer: "Android",
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ProjectCard(
                        onTap: () {
                          launchUrl(Uri.parse(
                              "https://github.com/JaspreetSinghGithub/AgriHawk"));
                        },
                        title: "AgriHawk",
                        description:
                            "Agrihawk connects farmers and clients in agriculture. Farmers manage products and requests via a dynamic dashboard, while clients browse, search, and track request status.",
                        isSelected: thirdCard,
                        footer: "Android",
                      ),
                    )
                  ],
                )
              : Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ProjectCard(
                          onTap: () {
                            launchUrl(Uri.parse(
                                "https://github.com/VishavjeetS/Moviz"));
                          },
                          title: "Moviz",
                          description:
                              "The Moviz app is developed using Flutter and utilizes the TMDB API for authentication and favoriting items. Getx Controller is employed to handle the application's state management efficiently.",
                          isSelected: isSelected,
                          footer: "Android . IOS",
                        )),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ProjectCard(
                          onTap: () {
                            launchUrl(Uri.parse(
                                "https://github.com/VishavjeetS/OBook"));
                          },
                          title: "OBook",
                          description:
                              "OBook is a media app that utilizes APIs like YTS for magnet details, TMDB for movies/TV shows, and Jinka for anime. Retrofit API handles data retrieval, while Room DB serves as the local storage solution.",
                          isSelected: secondCard,
                          footer: "Android",
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ProjectCard(
                        onTap: () {
                          launchUrl(Uri.parse(
                              "https://github.com/JaspreetSinghGithub/AgriHawk"));
                        },
                        title: "AgriHawk",
                        description:
                            "Agrihawk connects farmers and clients in agriculture. Farmers manage products and requests via a dynamic dashboard, while clients browse, search, and track request status.",
                        isSelected: thirdCard,
                        footer: "Android",
                      ),
                    )
                  ],
                ),
        )
      ],
    );
  }
}

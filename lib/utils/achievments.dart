import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components/achievments_card.dart';

class Achievments extends StatefulWidget {
  const Achievments({super.key});

  @override
  State<Achievments> createState() => AchievmentsState();
}

class AchievmentsState extends State<Achievments> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 50.0, bottom: 10),
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
                    '3',
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
                "Achievements",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: width <= mobile
                    ? 150
                    : width <= tablet
                        ? 100
                        : 250,
                child: Divider(
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        if (width < tablet)
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AchievmentsCard(
                  onTap: () {
                    launchUrl(Uri.parse(
                        "https://drive.google.com/file/d/1a6LrvH7Bq2O7IpRtbB13bPGfj1wwblgJ/view?usp=share_link"));
                  },
                  title: "Machine Learning",
                  description: "Machine Learning Advanced Training",
                  source: "SimpliLearn",
                  icon: "assets/images/simp.png"),
              const SizedBox(
                height: 30,
              ),
              AchievmentsCard(
                  onTap: () {
                    launchUrl(Uri.parse(
                        "https://drive.google.com/file/d/10PBII2qnLacLcYtKtvHC1IFG0vqYEr80/view?usp=share_link"));
                  },
                  title: "Data Science",
                  description: "Data Science with R",
                  source: "Udemy",
                  icon: "assets/images/udemy.jpeg")
            ],
          )
        else
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AchievmentsCard(
                    onTap: () {
                      launchUrl(Uri.parse(
                          "https://drive.google.com/file/d/1a6LrvH7Bq2O7IpRtbB13bPGfj1wwblgJ/view?usp=share_link"));
                    },
                    title: "Machine Learning",
                    description: "Machine Learning Advanced Trainnig",
                    source: "SimpliLearn",
                    icon: "assets/images/simp.png"),
                AchievmentsCard(
                    onTap: () {
                      launchUrl(Uri.parse(
                          "https://drive.google.com/file/d/10PBII2qnLacLcYtKtvHC1IFG0vqYEr80/view?usp=share_link"));
                    },
                    title: "Data Science",
                    description: "Data Science with R",
                    source: "Udemy",
                    icon: "assets/images/udemy.jpeg")
              ],
            ),
          ),
        SizedBox(
          height: width < tablet ? 20 : 40,
        )
      ],
    );
  }
}

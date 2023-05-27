import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactLeft extends StatefulWidget {
  const ContactLeft({super.key});

  @override
  State<ContactLeft> createState() => _ContactLeftState();
}

class _ContactLeftState extends State<ContactLeft> {
  void _launchUrl(String url) {
    print(url);
    launchUrl(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {
            _launchUrl(instagramUrl);
          },
          icon: Image.asset(
            "images/instagram.png",
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        IconButton(
          onPressed: () {
            _launchUrl(linkeDinUrl);
          },
          icon: Image.asset(
            "images/linkedin.png",
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        IconButton(
          onPressed: () {
            _launchUrl(gitHubUrl);
          },
          icon: Image.asset(
            "images/github.png",
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 3 - 120,
          width: 150,
          child: const RotatedBox(
              quarterTurns: 45,
              child: Divider(
                color: Colors.white,
              )),
        ),
      ],
    );
  }
}

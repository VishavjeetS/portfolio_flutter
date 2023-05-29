import "package:flutter/material.dart";

import "../constants/constants.dart";

class ProjectCard extends StatefulWidget {
  final String title, description, footer;
  final bool isSelected;
  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.isSelected,
    required this.footer,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  Color color = primaryColor.withOpacity(0.55);
  Color iconColor = Colors.white;
  double height = 350;
  double width = 350;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          value
              ? {
                  color = primaryColor,
                  height = 320,
                  width = 320,
                  iconColor = secondaryColor
                }
              : {
                  color = primaryColor.withOpacity(0.55),
                  iconColor = Colors.white,
                  height = 350,
                  width = 350
                };
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.all(height == 350 ? 0 : 10),
        decoration: BoxDecoration(
            border: Border.all(
                color: height == 350 ? Colors.transparent : secondaryColor,
                width: 2),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          height: height,
          width: width,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              // Icons.filter_none_outlined,
                              Icons.apps_rounded,
                              size: 40,
                              color: iconColor,
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                "https://github.com/VishavjeetS/portfolio_flutter/blob/flutter_app/assets/images/github.png",
                                fit: BoxFit.cover,
                                height: 25,
                                width: 25,
                                color: iconColor,
                              )
                              // Image.asset("images/github.png",
                              //     fit: BoxFit.cover,
                              //     height: 25,
                              //     width: 25,
                              //     color: iconColor)
                              ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.title,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            color: Colors.white,
                            wordSpacing: 1.5),
                        softWrap: true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.description,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.white.withOpacity(0.7),
                            wordSpacing: 1.5),
                        softWrap: true,
                        overflow: TextOverflow.clip,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.footer,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w200,
                            color: iconColor),
                      )
                    ],
                  )
                ],
              ),
              // Positioned(
              //     top: -50,
              //     left: -50,
              //     bottom: -50,
              //     right: -50,
              //     child: Container(
              //       height: height + 200,
              //       width: width + 200,
              //       color: primaryColor.withOpacity(0.3),
              //     ))
            ],
          ),
        ),
      ),
    );
  }
}

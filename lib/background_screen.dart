import 'package:flutter/material.dart';
import 'package:flutter_cv/utils/global_constants.dart';
import 'package:flutter_cv/widgets/experience_item.dart';
import 'package:flutter_cv/widgets/skills_item.dart';

class BackgroundScreen extends StatelessWidget {
  const BackgroundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: main_color,
        elevation: 0.0,
        toolbarHeight: height * 0.1,
        title: const Text("Background"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 2,
                        spreadRadius: 2,
                        color: Colors.black26)
                  ]),
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                    child: Text(
                      "Education Background",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Divider(
                      color: Colors.black26,
                    ),
                  ),
                  ExperienceItem(
                    assetPath: "assets/college.jpg",
                    position: "Kajiado East Technical Institute",
                    company: "Diploma in I.C.T",
                    period: "May 2022 - To Date",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ExperienceItem(
                    assetPath: "assets/education.jpg",
                    position: "Arknet Computer College",
                    company: "Computer and Computer Applications",
                    period: "March 2009 - Nov 2009",
                  )
                ],
              )),
          const SizedBox(
            height: 24,
          ),
          Flexible(
            child: Scrollbar(
              thickness: 8,
              thumbVisibility: true,
              child: SingleChildScrollView(
                child: Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: Colors.black26)
                        ]),
                    width: width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 8.0),
                          child: Text(
                            "Skills",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Divider(
                            color: Colors.black26,
                          ),
                        ),
                        SkillsItem(
                          assetPath: "assets/flutter_logo.svg",
                          skillText: "Flutter Development",
                          rating: 5,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        SkillsItem(
                          assetPath: "assets/android_logo.svg",
                          skillText: "Android Development (Kotlin)",
                          rating: 4,
                        ),
                        SkillsItem(
                          assetPath: "assets/android_logo.svg",
                          skillText: "Android Development (Java)",
                          rating: 2,
                        ),
                        SkillsItem(
                          assetPath: "assets/python_logo.svg",
                          skillText: "Python",
                          rating: 3,
                        ),
                        SkillsItem(
                          assetPath: "assets/network.svg",
                          skillText: "Networking and Network Management",
                          rating: 4,
                        ),
                        SkillsItem(
                          assetPath: "assets/computer_logo.svg",
                          skillText: "Computer Applications",
                          rating: 4,
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

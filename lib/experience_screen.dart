import 'package:flutter/material.dart';
import 'package:flutter_cv/constants/app_colors.dart';
import 'package:flutter_cv/widgets/experience_item.dart';
import 'package:flutter_cv/widgets/experience_text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        elevation: 0.0,
        toolbarHeight: height * 0.1,
        title: const Text("Experience"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0, left: 8.0),
                      child: Text(
                        "Work Experience",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Divider(
                        color: Colors.black26,
                      ),
                    ),
                    const ExperienceItem(
                      assetPath: "assets/fine_looks_logo.png",
                      position: "Frontend / Mobile Developer",
                      company: "FineLooks",
                      period: "Oct 2023 - To Date",
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    const ExperienceItem(
                      assetPath: "assets/mombo_logo.png",
                      position: "Mobile Developer",
                      company: "Mombo Sacco",
                      period: "April 2024 - To Date",
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    const ExperienceItem(
                      assetPath: "assets/sternpay.png",
                      position: "Lead Mobile Developer",
                      company: "Sterpay",
                      period: "February 2024 - To Date",
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    const ExperienceItem(
                      assetPath: "assets/wiz_systems_logo.png",
                      position: "Flutter Consultant",
                      company: "Wiz Systems USA",
                      period: "January 2024 - March 2024",
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    const ExperienceItem(
                      assetPath: "assets/funconnect.jpg",
                      position: "Flutter Developer",
                      company: "Funconnect",
                      period: "January 2024 - March 2024",
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    const ExperienceItem(
                      assetPath: "assets/thebrand.png",
                      position: "Main Mobile Developer",
                      company: "The Brand Kenya",
                      period: "Dec 2022 - To Date",
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const ExperienceItem(
                      assetPath: "assets/achiel.png",
                      position: "Network Administrator",
                      company: "Achiel Technology Solutions",
                      period: "May 2012 - To Date",
                    )
                  ],
                )),
            const Column(
              children: [
                ExperienceTextWidget(
                  text:
                      "I am a highly skilled Flutter developer and network administrator. In my roles, I was responsible for designing, developing, and maintaining mobile applications using the Flutter framework, as well as providing network support to ensure the smooth operation of our company's computer systems and networks.",
                ),
                ExperienceTextWidget(
                  text:
                      "As a Flutter developer, I was responsible for creating user interfaces and implementing business logic using the Flutter framework. I was also responsible for testing and debugging applications, as well as collaborating with cross-functional teams to ensure the successful delivery of projects.",
                ),
                ExperienceTextWidget(
                  text:
                      "As a network administrator, I was responsible for the configuration, maintenance, and troubleshooting of our company's computer systems and networks. This includes tasks such as installing and configuring hardware and software, monitoring network performance, and providing technical support to users.",
                ),
                ExperienceTextWidget(
                  text:
                      "I have a strong understanding of computer networking principles, as well as experience with the Flutter framework and mobile application development. I also possess have excellent problem-solving skills and the ability to work independently and as part of a team.",
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  height: height * 0.2,
                  width: double.infinity,
                  color: AppColors.mainColor,
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  child: Image.asset(
                    "assets/working.png",
                    height: height * 0.2,
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}

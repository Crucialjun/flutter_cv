import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cv/background_screen.dart';
import 'package:flutter_cv/experience_screen.dart';
import 'package:flutter_cv/interests_screen.dart';
import 'package:flutter_cv/portfolio_screen.dart';
import 'package:flutter_cv/constants/app_colors.dart';

import 'package:flutter_cv/widgets/contact_item.dart';
import 'package:flutter_cv/widgets/cv_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainDashboard extends StatelessWidget {
  const MainDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
        elevation: 0.0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: AppColors.mainColor,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light),
        backgroundColor: AppColors.mainColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
              ),
              Container(
                height: 80.h,
                decoration: const BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24))),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 20.h,
                child: CircleAvatar(
                  backgroundColor: AppColors.backgroundGrey,
                  radius: 52.r,
                  child: CircleAvatar(
                    radius: 48.r,
                    backgroundImage: const AssetImage('assets/profile.jpeg'),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: 120.h,
                left: 0,
                child: const Column(
                  children: [
                    Text(
                      "Nicholas Otieno Ouma",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Native Android Developer",
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Flutter Developer",
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ContactItem(
                            icon: FontAwesomeIcons.locationDot,
                            title: "Nairobi, Kenya"),
                        SizedBox(
                          width: 16,
                        ),
                        ContactItem(
                            icon: FontAwesomeIcons.envelope,
                            title: "nich.otieno@gmail.com")
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ContactItem(
                            icon: FontAwesomeIcons.phone,
                            title: "+254726575615"),
                        SizedBox(
                          width: 16,
                        ),
                        ContactItem(
                            icon: FontAwesomeIcons.linkedin,
                            title: "nich-otieno"),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ContactItem(
                            icon: FontAwesomeIcons.github, title: "Crucialjun"),
                        SizedBox(
                          width: 16,
                        ),
                        ContactItem(
                            icon: FontAwesomeIcons.stackOverflow,
                            title: "crucialjun")
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ContactItem(
                            icon: FontAwesomeIcons.youtube,
                            title: "@Crucialtech"),
                        SizedBox(
                          width: 16,
                        ),
                        ContactItem(
                            icon: FontAwesomeIcons.hackerrank,
                            title: "Crucialjun")
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: Divider(
                        thickness: 2,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: LimitedBox(
                        child: Text(
                          "Dedicated Flutter and Android Native Developer with over 8 "
                          "years of experience in mobile application development. Adept at "
                          "all stages of software development, from design creation to maintenance. "
                          "Proficient in Java, Kotlin, Dart, and Flutter with a passion for  "
                          "collaborative teamwork and innovate problem-solving.",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                    top: 400.h,
                    left: 0,
                    right: 0,
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    elevation: 8,
                    margin: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: AppColors.backgroundGrey),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(24))),
                        width: MediaQuery.of(context).size.width,
                        height: 400,
                        child: GridView.count(
                          padding: const EdgeInsets.all(36),
                          crossAxisCount: 2,
                          crossAxisSpacing: 24,
                          mainAxisSpacing: 24,
                          childAspectRatio: (1 / 0.8),
                          //shrinkWrap: true,
                          children: [
                            InkWell(
                              onTap: (() {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const ExperienceScreen()));
                              }),
                              child: const CvItem(
                                  iconAssetPath: "assets/experience_icon.svg",
                                  title: "Experience"),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const BackgroundScreen()));
                              },
                              child: const CvItem(
                                  iconAssetPath: "assets/student_icon.svg",
                                  title: "Background"),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const InterestsScreen()));
                              },
                              child: const CvItem(
                                  iconAssetPath: "assets/intrest_icon.svg",
                                  title: "Intrests"),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const PortfolioScreen()));
                              },
                              child: const CvItem(
                                  iconAssetPath: "assets/portfolio_icon.svg",
                                  title: "Projects"),
                            ),
                          ],
                        )),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

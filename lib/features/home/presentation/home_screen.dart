import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cv/background_screen.dart';
import 'package:flutter_cv/constants/app_colors.dart';
import 'package:flutter_cv/experience_screen.dart';
import 'package:flutter_cv/features/chat/presentation/chat_screen.dart';
import 'package:flutter_cv/interests_screen.dart';
import 'package:flutter_cv/portfolio_screen.dart';
import 'package:flutter_cv/widgets/contact_item.dart';
import 'package:flutter_cv/widgets/cv_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const ChatScreen()));
        },
        label: const Text("Chat with My Cv"),
        icon: const Icon(Icons.message),
      ),
      appBar: AppBar(
        toolbarHeight: 0.0,
        elevation: 0.0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: AppColors.mainColor,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light),
        backgroundColor: AppColors.mainColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 124.h,
              child: Stack(
                children: [
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
                        backgroundImage:
                            const AssetImage('assets/profile.jpeg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              "Nicholas Otieno Ouma",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              "Native Android Developer",
              textAlign: TextAlign.center,
            ),
            const Text(
              "Flutter Developer",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 8,
            ),
            const Row(
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
            const SizedBox(
              height: 8,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContactItem(
                    icon: FontAwesomeIcons.phone, title: "+254726575615"),
                SizedBox(
                  width: 16,
                ),
                ContactItem(
                    icon: FontAwesomeIcons.linkedin, title: "nich-otieno"),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContactItem(icon: FontAwesomeIcons.github, title: "Crucialjun"),
                SizedBox(
                  width: 16,
                ),
                ContactItem(
                    icon: FontAwesomeIcons.stackOverflow, title: "crucialjun")
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContactItem(
                    icon: FontAwesomeIcons.youtube, title: "@Crucialtech"),
                SizedBox(
                  width: 16,
                ),
                ContactItem(
                    icon: FontAwesomeIcons.hackerrank, title: "Crucialjun")
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Divider(
                thickness: 2,
                color: Colors.grey,
              ),
            ),
            const Padding(
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
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
              child: const Text(
                "Career Goal",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: LimitedBox(
                child: Text(
                  "I aspire to become a highly skilled and innovative software developer, "
                  "consistently pushing the boundaries of technology to create software solutions "
                  "that positively impact businesses and individuals. My goal is to continuously "
                  "enhance my expertise in various programming languages and development methodologies "
                  "while staying at the forefront of emerging technologies. By collaborating with diverse "
                  "and dynamic teams, I aim to contribute to the development of cutting-edge applications "
                  "that solve real-world problems and enhance the user experience. Ultimately, I seek to "
                  "leave a lasting mark on the software development industry, not only as a proficient developer "
                  "but as a thought leader who inspires and mentors the next generation of tech enthusiasts.",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Card(
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
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding:
                        EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                    crossAxisCount: 2,
                    crossAxisSpacing: 24,
                    mainAxisSpacing: 24,
                    childAspectRatio: (1 / 0.8),
                    //shrinkWrap: true,
                    children: [
                      InkWell(
                        onTap: (() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ExperienceScreen()));
                        }),
                        child: const CvItem(
                            iconAssetPath: "assets/experience_icon.svg",
                            title: "Experience"),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const BackgroundScreen()));
                        },
                        child: const CvItem(
                            iconAssetPath: "assets/student_icon.svg",
                            title: "Background"),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const InterestsScreen()));
                        },
                        child: const CvItem(
                            iconAssetPath: "assets/intrest_icon.svg",
                            title: "Intrests"),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const PortfolioScreen()));
                        },
                        child: const CvItem(
                            iconAssetPath: "assets/portfolio_icon.svg",
                            title: "Projects"),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

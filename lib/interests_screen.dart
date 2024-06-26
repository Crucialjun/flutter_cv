import 'package:flutter/material.dart';
import 'package:flutter_cv/constants/app_colors.dart';
import 'package:flutter_cv/widgets/interest_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InterestsScreen extends StatelessWidget {
  const InterestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        elevation: 0.0,
        toolbarHeight: height * 0.1,
        title: const Text("Interests"),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            InterestItem(
              icon: FontAwesomeIcons.one,
              title: "Mobile development",
              text:
                  "I am interested in mobile development, and have skills in both iOS and Android development. I am knowledgeable about mobile design principles and have experience creating applications for smartphones and tablets.",
            ),
            InterestItem(
              icon: FontAwesomeIcons.two,
              title: "Programming languages",
              text:
                  "I have a strong interest in programming languages, and am constantly learning and staying up-to-date on the latest technologies. My expertise includes Dart and Kotlin, and I have experience with multiple other languages as well.",
            ),
            InterestItem(
              icon: FontAwesomeIcons.three,
              title: "Web Development",
              text:
                  "Web development is another area of interest for me, and I have skills in HTML, CSS, and JavaScript, as well as experience with frameworks such as AngularJS and React",
            ),
            InterestItem(
              icon: FontAwesomeIcons.four,
              title: "Artificial intelligence and Machine learning",
              text:
                  "Artificial intelligence and machine learning are rapidly growing fields that I am passionate about, and am always looking to expand my skills in these areas.",
            ),
            InterestItem(
              icon: FontAwesomeIcons.five,
              title: "User experience design and user interface design",
              text:
                  "I am also passionate about user experience and interface design, and have experience creating intuitive and visually appealing software that is easy to use.",
            ),
            InterestItem(
              icon: FontAwesomeIcons.six,
              title: "Continuous integration and delivery",
              text:
                  "Finally, I have experience with continuous integration and delivery processes, including automated testing and version control.",
            ),
          ]),
        ),
      ),
    );
  }
}

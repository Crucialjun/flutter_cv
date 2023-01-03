import 'package:flutter/material.dart';
import 'package:flutter_cv/utils/global_constants.dart';
import 'package:flutter_cv/widgets/interest_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InterestsScreen extends StatelessWidget {
  const InterestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: main_color,
        elevation: 0.0,
        toolbarHeight: height * 0.1,
        title: const Text("Interests"),
        centerTitle: true,
      ),
      body: SafeArea(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.start, children: const [
          InterestItem(
            icon: FontAwesomeIcons.one,
            title: "Algorithms and data structures",
            text:
                "These are fundamental concepts that are important for designing and implementing efficient software solutions.",
          ),
          InterestItem(
            icon: FontAwesomeIcons.two,
            title: "Software design and architecture",
            text:
                " Software developers may be interested in design patterns, software architecture, and other approaches for creating well-structured and maintainable software systems",
          )
        ]),
      ),
    );
  }
}

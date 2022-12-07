import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cv/utils/global_constants.dart';
import 'package:flutter_cv/utils/main_dashboard_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainDashboard extends StatelessWidget {
  const MainDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
        elevation: 0.0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: main_color,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light),
        backgroundColor: main_color,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                ),
                Container(height: 650, color: background_grey),
                Container(
                  height: 80,
                  decoration: const BoxDecoration(
                      color: main_color,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(24),
                          bottomRight: Radius.circular(24))),
                ),
                const Positioned(
                  left: 0,
                  right: 0,
                  top: 20,
                  child: CircleAvatar(
                    backgroundColor: background_grey,
                    radius: 52,
                    child: CircleAvatar(
                      radius: 48,
                      backgroundImage: AssetImage('assets/profile.jpeg'),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 120,
                  left: 0,
                  child: Column(
                    children: [
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
                        "Android Developer",
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        "Flutter Developer",
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Network Administrator at",
                            textAlign: TextAlign.center,
                          ),
                          InkWell(
                            onTap: (() {
                              MainDashBoardController()
                                  .launchSpecifiedUrl('https://flutter.io');
                            }),
                            child: const Text(
                              " Achiel Technology Solutions",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                FontAwesomeIcons.locationDot,
                                color: main_color,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text("Nairobi, Kenya"),
                            ],
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                FontAwesomeIcons.envelope,
                                color: main_color,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text("nich.otieno@gmail.com"),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                FontAwesomeIcons.phone,
                                color: main_color,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text("+254726575615"),
                            ],
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                FontAwesomeIcons.linkedin,
                                color: main_color,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text("nich-otieno"),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                FontAwesomeIcons.github,
                                color: main_color,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text("Crucialjun"),
                            ],
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                FontAwesomeIcons.stackOverflow,
                                color: main_color,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text("crucialjun"),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                FontAwesomeIcons.youtube,
                                color: main_color,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text("@Crucialtech"),
                            ],
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                FontAwesomeIcons.hackerrank,
                                color: main_color,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text("Crucialjun"),
                            ],
                          ),
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
                            "Methodical,client-focused native Android and Flutter software developer possessing over 8 years of experiencein mobile application development. Excels in every stage of the life cycle of software development, includingdesign creation, coding, debugging, testing, and maintenance.\n\n Proficient with object-oriented programming, Enjoys collaborating with colleagues and building cultures ofcross-functional working to provide a greater platform for the success of projects",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 600,
                    left: 0,
                    right: 0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      elevation: 8,
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: background_grey),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(24))),
                          width: MediaQuery.of(context).size.width,
                          height: 400,
                          child: GridView.count(
                            padding: const EdgeInsets.all(48),
                            crossAxisCount: 2,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                            childAspectRatio: (1 / 0.8),
                            shrinkWrap: true,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                color: main_color,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/experience_icon.svg",
                                      color: Colors.white,
                                      height: 48,
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const Text("Experience")
                                  ],
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                color: Colors.blue,
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                color: Colors.blue,
                              ),
                            ],
                          )),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cv/utils/global_constants.dart';

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
      body: Column(children: [
        Stack(
          children: [
            Container(
              height: 400,
              color: background_grey,
            ),
            Container(
              height: 100,
              decoration: const BoxDecoration(
                  color: main_color,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24))),
            ),
            const Positioned(
              left: 0,
              right: 0,
              top: 24,
              child: CircleAvatar(
                backgroundColor: background_grey,
                radius: 68,
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/profile.jpeg'),
                ),
              ),
            ),
            Positioned(
                right: 0,
                top: 168,
                left: 0,
                child: Column(
                  children: const [
                    Text(
                      "Nicholas Otieno",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Android Developer",
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Flutter Developer",
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Network Administrator at Achiel Technology Solutions",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ))
          ],
        )
      ]),
    );
  }
}

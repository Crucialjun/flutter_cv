import 'package:flutter/material.dart';
import 'package:flutter_cv/features/home/presentation/home_screen.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (_, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter CV',
              theme: ThemeData(
                primarySwatch: Colors.blue,
                fontFamily: GoogleFonts.poppins().fontFamily,
                textTheme: Typography.englishLike2018.apply(
                    fontSizeFactor: 1.sp,
                    bodyColor: Colors.black,
                    displayColor: Colors.black),
              ),
              home: const HomeScreen(
                
              ),
            ));
  }
}

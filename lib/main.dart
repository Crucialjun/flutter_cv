import 'package:flutter/material.dart';
import 'package:flutter_cv/main_dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CV',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainDashboard(),
    );
  }
}

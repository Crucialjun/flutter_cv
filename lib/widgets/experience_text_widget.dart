import 'package:flutter/material.dart';

class ExperienceTextWidget extends StatelessWidget {
  final String text;
  const ExperienceTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        child: Text(text));
  }
}

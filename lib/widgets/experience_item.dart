import 'package:flutter/material.dart';

class ExperienceItem extends StatelessWidget {
  final String assetPath;
  final String position;
  final String company;
  final String period;
  const ExperienceItem(
      {super.key,
      required this.assetPath,
      required this.position,
      required this.company,
      required this.period});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
            child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset(
            assetPath,
            width: 48,
            height: 48,
          ),
        )),
        const SizedBox(
          width: 8,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  position,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  company,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 12),
                ),
                Text(
                  period,
                  style: const TextStyle(fontSize: 10),
                )
              ]),
        )
      ],
    );
  }
}

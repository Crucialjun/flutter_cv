import 'package:flutter/material.dart';
import 'package:flutter_cv/utils/global_constants.dart';

class InterestItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String text;
  const InterestItem(
      {super.key, required this.icon, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 8,
        shadowColor: Colors.blueGrey,
        borderOnForeground: true,
        margin: const EdgeInsets.all(2),
        surfaceTintColor: main_color,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            children: [
              Icon(
                icon,
                color: main_color,
                size: 48,
              ),
              const SizedBox(
                width: 4,
              ),
              Flexible(
                child: Column(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(text)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

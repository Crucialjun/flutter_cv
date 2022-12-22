import 'package:flutter/material.dart';
import 'package:flutter_cv/utils/global_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactItem extends StatelessWidget {
  final IconData icon;
  final String title;
  const ContactItem({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: main_color,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(title),
      ],
    );
  }
}

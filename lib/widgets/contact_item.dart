import 'package:flutter/material.dart';
import 'package:flutter_cv/constants/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactItem extends StatelessWidget {
  final IconData icon;
  final String title;
  const ContactItem({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: AppColors.mainColor,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(title),
      ],
    );
  }
}

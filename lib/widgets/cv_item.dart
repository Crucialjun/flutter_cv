import 'package:flutter/material.dart';
import 'package:flutter_cv/constants/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CvItem extends StatelessWidget {
  final String iconAssetPath;
  final String title;
  const CvItem({
    super.key,
    required this.iconAssetPath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          color: AppColors.mainColor, borderRadius: BorderRadius.circular(24)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconAssetPath,
            colorFilter: ColorFilter.mode(Colors.white ,BlendMode.srcIn),
            height: 48,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}

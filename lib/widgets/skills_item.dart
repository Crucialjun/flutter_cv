import 'package:flutter/material.dart';
import 'package:flutter_cv/utils/global_constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SkillsItem extends StatelessWidget {
  final String skillText;
  final String assetPath;
  final double rating;
  const SkillsItem(
      {super.key,
      required this.skillText,
      required this.assetPath,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            assetPath,
            width: 68,
            fit: BoxFit.scaleDown,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  skillText,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 8,
                ),
                RatingBarIndicator(
                  rating: rating,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: main_color,
                  ),
                  itemCount: 5,
                  itemSize: 24.0,
                  direction: Axis.horizontal,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

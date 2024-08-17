import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';

class ExpectCard extends StatelessWidget {
  final String svgDarkPath;
  final String svgLightPath;
  final String title;
  final String subtitle;
  final bool isDarkMode;
  const ExpectCard({
    super.key,
    required this.svgDarkPath,
    required this.svgLightPath,
    required this.title,
    required this.subtitle,
    this.isDarkMode = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              svgLightPath,
              height: 24,
              width: 24,
              color: context.palette.iconColor,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              title,
              style: AppTextStyles.ktsSmall.copyWith(
                color: context.palette.textColor,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          subtitle,
          style: AppTextStyles.ktsSubtitle.copyWith(
            color: context.palette.detailColor,
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';

class AddOnCard extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final bool value;
  final ValueChanged<bool?> onChanged;
  const AddOnCard({
    super.key,
    this.title,
    this.subtitle,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Checkbox.adaptive(
              value: value,
              onChanged: onChanged,
            ),
            const SizedBox(
              height: 26,
            ),
          ],
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? '',
              style: AppTextStyles.ktsSmall.copyWith(
                color: context.palette.textColor,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              subtitle ?? '',
              style: AppTextStyles.ktsSubtitle.copyWith(
                color: context.palette.detailColor,
              ),
            ),
          ],
        ),
        const Spacer(),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '+ \$40.00',
              style: AppTextStyles.ktsSubtitle.copyWith(
                color: context.palette.textColor,
              ),
            ),
            const SizedBox(
              height: 26,
            ),
          ],
        ),
      ],
    );
  }
}

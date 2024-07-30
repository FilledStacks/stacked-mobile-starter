import 'package:flutter/material.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';

import 'notification_type_tile.dart';

class NotificationCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool emailValue;
  final bool smsValue;
  final bool inAppValue;
  final ValueChanged<bool> onEmailChanged;
  final ValueChanged<bool> onSmsChanged;
  final ValueChanged<bool> onInAppChanged;
  final VoidCallback? onTurnOfAll;

  const NotificationCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.emailValue = false,
    this.smsValue = false,
    this.inAppValue = false,
    required this.onEmailChanged,
    required this.onSmsChanged,
    required this.onInAppChanged,
    this.onTurnOfAll,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppTextStyles.ktsSmall.copyWith(
                color: context.palette.textColor,
              ),
            ),
            TextButton(
              onPressed: onTurnOfAll,
              child: Text(
                AppStrings.ksTurnOffAll,
                style: AppTextStyles.ktsSmall.copyWith(
                  color: context.palette.textColor,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          subtitle,
          style: AppTextStyles.ktsDetail.copyWith(
            color: context.palette.detailColor,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        NotificationTypeTile(
          title: AppStrings.ksEmail,
          value: emailValue,
          onChanged: onEmailChanged,
        ),
        const SizedBox(
          height: 16,
        ),
        NotificationTypeTile(
          title: AppStrings.ksSms,
          value: smsValue,
          onChanged: onSmsChanged,
        ),
        const SizedBox(
          height: 16,
        ),
        NotificationTypeTile(
          title: AppStrings.ksInApp,
          value: inAppValue,
          onChanged: onInAppChanged,
        ),
      ],
    );
  }
}

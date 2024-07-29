import 'package:flutter/material.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/app_text_styles.dart';

class AccountSettingsTile extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  const AccountSettingsTile({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: AppTextStyles.ktsSmall.copyWith(
          color: context.palette.textColor,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: context.palette.iconColor,
      ),
      onTap: onTap,
    );
  }
}

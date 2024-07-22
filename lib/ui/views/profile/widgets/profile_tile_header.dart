import 'package:flutter/material.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';

class ProfileTileHeader extends StatelessWidget {
  final String label;
  const ProfileTileHeader({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: AppTextStyles.ktsSmall.copyWith(
        color: context.palette.textColor,
      ),
    );
  }
}

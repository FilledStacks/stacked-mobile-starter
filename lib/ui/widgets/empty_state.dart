import 'package:flutter/material.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/generated/l10n.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';

class EmptyState extends StatelessWidget {
  final String message;
  const EmptyState({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 24,
        ),
        Image.asset(
          'assets/png/emptiness.png',
          height: 246,
          width: 240,
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          S.of(context).ksOppsSorry,
          style: AppTextStyles.ktsH4.copyWith(
            color: context.palette.textColor,
          ),
        ),
        Text(
          message,
          style: AppTextStyles.ktsSubtitle.copyWith(
            color: AppColors.kcSlate400,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/app_colors.dart';
import 'package:stacked_mobile_starter/ui/common/app_text_styles.dart';

class FilterCard extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback? onTap;
  const FilterCard({
    super.key,
    required this.title,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    if (isSelected) {
      return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: context.palette.primaryButtonColor,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: AppColors.kcSlate200,
          ),
        ),
        child: Ink(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 8,
            bottom: 8,
          ),
          child: Text(
            title,
            style: AppTextStyles.ktsSmall.copyWith(
              color: context.palette.primaryButtonTextColor,
            ),
          ),
        ),
      );
    }
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: context.palette.filterBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: context.palette.filterBorderColor,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        child: InkWell(
          borderRadius: BorderRadius.circular(6),
          onTap: onTap,
          child: Ink(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 8,
              bottom: 8,
            ),
            child: Text(
              title,
              style: AppTextStyles.ktsSmall.copyWith(
                color: context.palette.textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

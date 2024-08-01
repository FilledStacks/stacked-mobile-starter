import 'package:flutter/material.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/app_text_styles.dart';

class FilterCheckBoxTile extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool?>? onChanged;
  const FilterCheckBoxTile({
    super.key,
    required this.title,
    this.value = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile.adaptive(
      title: Text(
        title,
        style: AppTextStyles.ktsSmall.copyWith(
          color: context.palette.textColor,
        ),
      ),
      contentPadding: EdgeInsets.zero,
      activeColor: context.palette.primaryButtonColor,
      checkColor: context.palette.primaryButtonTextColor,
      controlAffinity: ListTileControlAffinity.leading,
      value: value,
      onChanged: onChanged,
    );
  }
}

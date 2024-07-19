import 'package:flutter/material.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/app_text_styles.dart';

class TransparentButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  const TransparentButton({
    super.key,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(6),
          child: Ink(
            padding: const EdgeInsets.all(3),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  text,
                  style: AppTextStyles.ktsSmall.copyWith(
                    color: context.palette.textColor,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.arrow_forward,
                  color: context.palette.iconColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

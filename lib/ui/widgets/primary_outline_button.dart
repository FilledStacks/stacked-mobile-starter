import 'package:flutter/material.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/app_text_styles.dart';

class PrimaryOulineButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final Widget? icon;
  const PrimaryOulineButton({
    super.key,
    required this.text,
    this.onTap,
  }) : icon = null;

  const PrimaryOulineButton.icon({
    super.key,
    required this.text,
    required this.icon,
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
        border: Border.all(
          color: context.palette.primaryButtonColor,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(6),
          child: Builder(
            builder: (context) {
              if (icon != null) {
                return Ink(
                  padding: const EdgeInsets.only(
                    left: 24,
                  ),
                  child: Row(
                    children: [
                      icon!,
                      const SizedBox(
                        width: 56,
                      ),
                      Text(
                        text,
                        textAlign: TextAlign.center,
                        style: AppTextStyles.ktsSmall.copyWith(
                          color: context.palette.primaryButtonColor,
                        ),
                      ),
                    ],
                  ),
                );
              }
              return Center(
                child: Text(
                  text,
                  style: AppTextStyles.ktsSmall.copyWith(
                    color: context.palette.primaryButtonColor,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

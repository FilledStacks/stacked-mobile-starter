import 'package:flutter/material.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;
  const CustomIconButton({
    super.key,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: context.palette.primaryButtonColor,
        borderRadius: BorderRadius.circular(96),
        border: Border.all(
          color: const Color(0xffE2E8F0),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(96),
        child: InkWell(
          borderRadius: BorderRadius.circular(96),
          onTap: onTap,
          child: SizedBox(
            height: 32,
            width: 32,
            child: Icon(
              icon,
              color: context.palette.primaryButtonTextColor,
            ),
          ),
        ),
      ),
    );
  }
}

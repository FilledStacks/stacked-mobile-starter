import 'package:flutter/material.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';

class GlassBox extends StatelessWidget {
  final String text;
  const GlassBox({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        text,
        style: AppTextStyles.ktsDetail.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}

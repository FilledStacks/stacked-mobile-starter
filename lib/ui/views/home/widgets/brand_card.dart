import 'package:flutter/material.dart';
import 'package:stacked_mobile_starter/data_models/data_models.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/app_text_styles.dart';

class BrandCard extends StatelessWidget {
  final BrandDataModel brandData;
  final VoidCallback? onTap;
  const BrandCard({
    super.key,
    required this.brandData,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(brandData.image ?? ''),
          fit: BoxFit.fill,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onTap,
          child: Ink(
            height: 76,
            width: 140,
            child: Center(
              child: Text(
                brandData.name ?? '',
                style: AppTextStyles.ktsH4.copyWith(
                  color: context.palette.textColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

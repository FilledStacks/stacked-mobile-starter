import 'package:flutter/material.dart';
import 'package:stacked_mobile_starter/data_models/data_models.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/app_text_styles.dart';

class CountryCodePicker extends StatelessWidget {
  final CountryInfoDataModel? countryInfo;
  final VoidCallback? onTap;
  const CountryCodePicker({
    super.key,
    this.countryInfo,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(2),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(2),
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                countryInfo?.dialCode ?? '--',
                style: AppTextStyles.ktsSmall.copyWith(
                  color: context.palette.textColor,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              RotatedBox(
                quarterTurns: 1,
                child: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 16,
                  color: context.palette.iconColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:stacked_mobile_starter/data_models/data_models.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';

class CarCard extends StatelessWidget {
  final CarDataModel carData;
  final double? width;
  final VoidCallback? onTap;
  const CarCard({
    super.key,
    required this.carData,
    this.width,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Material(
        color: Colors.transparent,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
        child: InkWell(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
          onTap: onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(carData.image ?? ''),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                carData.model ?? '--',
                style: AppTextStyles.ktsSmall.copyWith(
                  color: context.palette.textColor,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: carData.transmission ?? '--',
                  style: AppTextStyles.ktsDetail.copyWith(
                    color: context.palette.detailColor,
                  ),
                  children: [
                    const TextSpan(
                      text: ' ',
                    ),
                    TextSpan(
                      text: '.',
                      style: AppTextStyles.ktsDetail.copyWith(
                        color: context.palette.detailColor,
                      ),
                    ),
                    const TextSpan(
                      text: ' ',
                    ),
                    TextSpan(
                      text: carData.tankGas ?? '--',
                      style: AppTextStyles.ktsDetail.copyWith(
                        color: context.palette.detailColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              RichText(
                text: TextSpan(
                  text: '\$${carData.amount ?? '0.0'}',
                  style: AppTextStyles.ktsDetail.copyWith(
                    color: context.palette.textColor,
                  ),
                  children: [
                    const TextSpan(
                      text: ' ',
                    ),
                    TextSpan(
                      text: '/',
                      style: AppTextStyles.ktsDetail.copyWith(
                        color: context.palette.textColor,
                      ),
                    ),
                    const TextSpan(
                      text: ' ',
                    ),
                    TextSpan(
                      text: 'day',
                      style: AppTextStyles.ktsDetail.copyWith(
                        color: context.palette.textColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

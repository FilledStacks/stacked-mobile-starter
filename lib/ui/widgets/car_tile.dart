import 'package:flutter/material.dart';
import 'package:stacked_mobile_starter/data_models/data_models.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';

class CarTile extends StatelessWidget {
  final CarDataModel carData;
  final VoidCallback? onTap;

  const CarTile({
    super.key,
    required this.carData,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Material(
        color: Colors.transparent,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          bottomLeft: Radius.circular(8),
        ),
        child: InkWell(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            bottomLeft: Radius.circular(8),
          ),
          onTap: onTap,
          child: Row(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(carData.image ?? ''),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  Builder(
                    builder: (context) {
                      if (carData.amount == null) {
                        return const SizedBox.shrink();
                      }

                      return RichText(
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
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

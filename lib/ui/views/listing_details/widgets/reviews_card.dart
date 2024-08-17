import 'package:flutter/material.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';

class ReviewsCard extends StatelessWidget {
  const ReviewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 261,
      padding: const EdgeInsets.only(
        left: 16,
        top: 28,
        bottom: 16,
        right: 16,
      ),
      decoration: BoxDecoration(
        color: context.palette.primaryButtonTextColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: context.palette.filterBorderColor,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Jul 9, 2024',
            style: AppTextStyles.ktsDetail.copyWith(
              color: context.palette.detailColor,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'I really love the ambience in the streets of Mexico. There are lots of friendly locals and lots of delicious street foods.',
            style: AppTextStyles.ktsDetail.copyWith(
              color: context.palette.textColor,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'John S.',
            style: AppTextStyles.ktsDetail.copyWith(
              color: context.palette.textColor,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';
import 'package:stacked_mobile_starter/ui/widgets/widgets.dart';

class RangeInput extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  const RangeInput({
    super.key,
    this.controller,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return InputField(
      controller: controller,
      focusNode: focusNode,
      prefixIcon: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Text(
          '\$',
          style: AppTextStyles.ktsP.copyWith(
            color: context.palette.textColor,
          ),
        ),
      ),
    );
  }
}

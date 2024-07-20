import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';

class CustomPinField extends StatelessWidget {
  final int length;
  final bool obsctureText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final FormFieldValidator<String>? validator;
  final bool autoValidate;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onCompleted;
  const CustomPinField({
    super.key,
    this.length = 6,
    this.obsctureText = false,
    this.controller,
    this.focusNode,
    this.validator,
    this.autoValidate = false,
    this.onChanged,
    this.onCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: length,
      forceErrorState: autoValidate,
      obscureText: obsctureText,
      obscuringCharacter: '.',
      controller: controller,
      focusNode: focusNode,
      validator: validator,
      onChanged: onChanged,
      onCompleted: onCompleted,
      separatorBuilder: (index) {
        return const SizedBox(
          width: 20,
        );
      },
      defaultPinTheme: PinTheme(
        height: 40,
        width: 44,
        decoration: BoxDecoration(
          color: context.palette.inputFieldFilledColor,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: context.palette.inputFieldBorderColor,
          ),
        ),
        textStyle: AppTextStyles.ktsP.copyWith(
          color: context.palette.inputFieldContentColor,
        ),
      ),
      followingPinTheme: PinTheme(
        height: 40,
        width: 44,
        decoration: BoxDecoration(
          color: context.palette.inputFieldFilledColor,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: context.palette.inputFieldBorderColor,
          ),
        ),
        textStyle: AppTextStyles.ktsP.copyWith(
          color: context.palette.inputFieldContentColor,
        ),
      ),
    );
  }
}

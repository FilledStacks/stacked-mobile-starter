import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/data_models/data_models.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/app_text_styles.dart';

import 'intl_phone_field_model.dart';
import 'widgets/country_code_picker.dart';

class IntlPhoneField extends StackedView<IntlPhoneFieldModel> {
  final String? hint;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final ValueChanged<PhoneNumberInfoDataModel> onChange;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  const IntlPhoneField({
    super.key,
    this.hint,
    this.controller,
    this.focusNode,
    required this.onChange,
    this.validator,
    this.onFieldSubmitted,
  });

  @override
  Widget builder(
    BuildContext context,
    IntlPhoneFieldModel viewModel,
    Widget? child,
  ) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      keyboardType: TextInputType.phone,
      validator: validator,
      style: AppTextStyles.ktsP.copyWith(
        color: context.palette.inputFieldContentColor,
      ),
      onChanged: (value) {
        onChange.call(
          PhoneNumberInfoDataModel(
            countryISOCode: viewModel.selectedCountry?.code ?? '',
            countryCode: viewModel.selectedCountry?.dialCode ?? '',
            number: value,
          ),
        );
      },
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppTextStyles.ktsP.copyWith(
          color: context.palette.inputFieldHintColor,
        ),
        fillColor: context.palette.inputFieldFilledColor,
        filled: true,
        prefixIcon: CountryCodePicker(
          countryInfo: viewModel.selectedCountry,
          onTap: viewModel.showBottomSheet,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(
            color: context.palette.inputFieldBorderColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(
            color: context.palette.inputFieldBorderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(
            color: context.palette.textColor,
          ),
        ),
      ),
      onFieldSubmitted: onFieldSubmitted,
    );
  }

  @override
  void onViewModelReady(IntlPhoneFieldModel viewModel) {
    viewModel.setInitialCountry();
    super.onViewModelReady(viewModel);
  }

  @override
  IntlPhoneFieldModel viewModelBuilder(
    BuildContext context,
  ) =>
      IntlPhoneFieldModel();
}

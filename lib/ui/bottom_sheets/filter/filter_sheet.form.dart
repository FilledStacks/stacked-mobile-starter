// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String MinAmountValueKey = 'min_amount';
const String MaxAmountValueKey = 'max_amount';

final Map<String, TextEditingController> _FilterSheetTextEditingControllers =
    {};

final Map<String, FocusNode> _FilterSheetFocusNodes = {};

final Map<String, String? Function(String?)?> _FilterSheetTextValidations = {
  MinAmountValueKey: null,
  MaxAmountValueKey: null,
};

mixin $FilterSheet {
  TextEditingController get minAmountController =>
      _getFormTextEditingController(MinAmountValueKey);
  TextEditingController get maxAmountController =>
      _getFormTextEditingController(MaxAmountValueKey);

  FocusNode get minAmountFocusNode => _getFormFocusNode(MinAmountValueKey);
  FocusNode get maxAmountFocusNode => _getFormFocusNode(MaxAmountValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_FilterSheetTextEditingControllers.containsKey(key)) {
      return _FilterSheetTextEditingControllers[key]!;
    }

    _FilterSheetTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _FilterSheetTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_FilterSheetFocusNodes.containsKey(key)) {
      return _FilterSheetFocusNodes[key]!;
    }
    _FilterSheetFocusNodes[key] = FocusNode();
    return _FilterSheetFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    minAmountController.addListener(() => _updateFormData(model));
    maxAmountController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    minAmountController.addListener(() => _updateFormData(model));
    maxAmountController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          MinAmountValueKey: minAmountController.text,
          MaxAmountValueKey: maxAmountController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _FilterSheetTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _FilterSheetFocusNodes.values) {
      focusNode.dispose();
    }

    _FilterSheetTextEditingControllers.clear();
    _FilterSheetFocusNodes.clear();
  }
}

extension ValueProperties on FormStateHelper {
  bool get hasAnyValidationMessage => this
      .fieldsValidationMessages
      .values
      .any((validation) => validation != null);

  bool get isFormValid {
    if (!_autoTextFieldValidation) this.validateForm();

    return !hasAnyValidationMessage;
  }

  String? get minAmountValue => this.formValueMap[MinAmountValueKey] as String?;
  String? get maxAmountValue => this.formValueMap[MaxAmountValueKey] as String?;

  set minAmountValue(String? value) {
    this.setData(
      this.formValueMap..addAll({MinAmountValueKey: value}),
    );

    if (_FilterSheetTextEditingControllers.containsKey(MinAmountValueKey)) {
      _FilterSheetTextEditingControllers[MinAmountValueKey]?.text = value ?? '';
    }
  }

  set maxAmountValue(String? value) {
    this.setData(
      this.formValueMap..addAll({MaxAmountValueKey: value}),
    );

    if (_FilterSheetTextEditingControllers.containsKey(MaxAmountValueKey)) {
      _FilterSheetTextEditingControllers[MaxAmountValueKey]?.text = value ?? '';
    }
  }

  bool get hasMinAmount =>
      this.formValueMap.containsKey(MinAmountValueKey) &&
      (minAmountValue?.isNotEmpty ?? false);
  bool get hasMaxAmount =>
      this.formValueMap.containsKey(MaxAmountValueKey) &&
      (maxAmountValue?.isNotEmpty ?? false);

  bool get hasMinAmountValidationMessage =>
      this.fieldsValidationMessages[MinAmountValueKey]?.isNotEmpty ?? false;
  bool get hasMaxAmountValidationMessage =>
      this.fieldsValidationMessages[MaxAmountValueKey]?.isNotEmpty ?? false;

  String? get minAmountValidationMessage =>
      this.fieldsValidationMessages[MinAmountValueKey];
  String? get maxAmountValidationMessage =>
      this.fieldsValidationMessages[MaxAmountValueKey];
}

extension Methods on FormStateHelper {
  setMinAmountValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[MinAmountValueKey] = validationMessage;
  setMaxAmountValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[MaxAmountValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    minAmountValue = '';
    maxAmountValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      MinAmountValueKey: getValidationMessage(MinAmountValueKey),
      MaxAmountValueKey: getValidationMessage(MaxAmountValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _FilterSheetTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _FilterSheetTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      MinAmountValueKey: getValidationMessage(MinAmountValueKey),
      MaxAmountValueKey: getValidationMessage(MaxAmountValueKey),
    });

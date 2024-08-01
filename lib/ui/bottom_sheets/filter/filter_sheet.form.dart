// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String MinValueKey = 'min';
const String MaxValueKey = 'max';

final Map<String, TextEditingController> _FilterSheetTextEditingControllers =
    {};

final Map<String, FocusNode> _FilterSheetFocusNodes = {};

final Map<String, String? Function(String?)?> _FilterSheetTextValidations = {
  MinValueKey: null,
  MaxValueKey: null,
};

mixin $FilterSheet {
  TextEditingController get minController =>
      _getFormTextEditingController(MinValueKey);
  TextEditingController get maxController =>
      _getFormTextEditingController(MaxValueKey);

  FocusNode get minFocusNode => _getFormFocusNode(MinValueKey);
  FocusNode get maxFocusNode => _getFormFocusNode(MaxValueKey);

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
    minController.addListener(() => _updateFormData(model));
    maxController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    minController.addListener(() => _updateFormData(model));
    maxController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          MinValueKey: minController.text,
          MaxValueKey: maxController.text,
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

  String? get minValue => this.formValueMap[MinValueKey] as String?;
  String? get maxValue => this.formValueMap[MaxValueKey] as String?;

  set minValue(String? value) {
    this.setData(
      this.formValueMap..addAll({MinValueKey: value}),
    );

    if (_FilterSheetTextEditingControllers.containsKey(MinValueKey)) {
      _FilterSheetTextEditingControllers[MinValueKey]?.text = value ?? '';
    }
  }

  set maxValue(String? value) {
    this.setData(
      this.formValueMap..addAll({MaxValueKey: value}),
    );

    if (_FilterSheetTextEditingControllers.containsKey(MaxValueKey)) {
      _FilterSheetTextEditingControllers[MaxValueKey]?.text = value ?? '';
    }
  }

  bool get hasMin =>
      this.formValueMap.containsKey(MinValueKey) &&
      (minValue?.isNotEmpty ?? false);
  bool get hasMax =>
      this.formValueMap.containsKey(MaxValueKey) &&
      (maxValue?.isNotEmpty ?? false);

  bool get hasMinValidationMessage =>
      this.fieldsValidationMessages[MinValueKey]?.isNotEmpty ?? false;
  bool get hasMaxValidationMessage =>
      this.fieldsValidationMessages[MaxValueKey]?.isNotEmpty ?? false;

  String? get minValidationMessage =>
      this.fieldsValidationMessages[MinValueKey];
  String? get maxValidationMessage =>
      this.fieldsValidationMessages[MaxValueKey];
}

extension Methods on FormStateHelper {
  setMinValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[MinValueKey] = validationMessage;
  setMaxValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[MaxValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    minValue = '';
    maxValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      MinValueKey: getValidationMessage(MinValueKey),
      MaxValueKey: getValidationMessage(MaxValueKey),
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
      MinValueKey: getValidationMessage(MinValueKey),
      MaxValueKey: getValidationMessage(MaxValueKey),
    });

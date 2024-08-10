// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String PasswordValueKey = 'password';

final Map<String, TextEditingController>
    _EditPasswordSheetTextEditingControllers = {};

final Map<String, FocusNode> _EditPasswordSheetFocusNodes = {};

final Map<String, String? Function(String?)?>
    _EditPasswordSheetTextValidations = {
  PasswordValueKey: null,
};

mixin $EditPasswordSheet {
  TextEditingController get passwordController =>
      _getFormTextEditingController(PasswordValueKey);

  FocusNode get passwordFocusNode => _getFormFocusNode(PasswordValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_EditPasswordSheetTextEditingControllers.containsKey(key)) {
      return _EditPasswordSheetTextEditingControllers[key]!;
    }

    _EditPasswordSheetTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _EditPasswordSheetTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_EditPasswordSheetFocusNodes.containsKey(key)) {
      return _EditPasswordSheetFocusNodes[key]!;
    }
    _EditPasswordSheetFocusNodes[key] = FocusNode();
    return _EditPasswordSheetFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    passwordController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    passwordController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          PasswordValueKey: passwordController.text,
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

    for (var controller in _EditPasswordSheetTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _EditPasswordSheetFocusNodes.values) {
      focusNode.dispose();
    }

    _EditPasswordSheetTextEditingControllers.clear();
    _EditPasswordSheetFocusNodes.clear();
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

  String? get passwordValue => this.formValueMap[PasswordValueKey] as String?;

  set passwordValue(String? value) {
    this.setData(
      this.formValueMap..addAll({PasswordValueKey: value}),
    );

    if (_EditPasswordSheetTextEditingControllers.containsKey(
        PasswordValueKey)) {
      _EditPasswordSheetTextEditingControllers[PasswordValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasPassword =>
      this.formValueMap.containsKey(PasswordValueKey) &&
      (passwordValue?.isNotEmpty ?? false);

  bool get hasPasswordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey]?.isNotEmpty ?? false;

  String? get passwordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey];
}

extension Methods on FormStateHelper {
  setPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PasswordValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    passwordValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      PasswordValueKey: getValidationMessage(PasswordValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _EditPasswordSheetTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _EditPasswordSheetTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      PasswordValueKey: getValidationMessage(PasswordValueKey),
    });

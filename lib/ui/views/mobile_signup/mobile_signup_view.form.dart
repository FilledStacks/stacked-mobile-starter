// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String PhoneValueKey = 'phone';

final Map<String, TextEditingController>
    _MobileSignupViewTextEditingControllers = {};

final Map<String, FocusNode> _MobileSignupViewFocusNodes = {};

final Map<String, String? Function(String?)?> _MobileSignupViewTextValidations =
    {
  PhoneValueKey: null,
};

mixin $MobileSignupView {
  TextEditingController get phoneController =>
      _getFormTextEditingController(PhoneValueKey);

  FocusNode get phoneFocusNode => _getFormFocusNode(PhoneValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_MobileSignupViewTextEditingControllers.containsKey(key)) {
      return _MobileSignupViewTextEditingControllers[key]!;
    }

    _MobileSignupViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _MobileSignupViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_MobileSignupViewFocusNodes.containsKey(key)) {
      return _MobileSignupViewFocusNodes[key]!;
    }
    _MobileSignupViewFocusNodes[key] = FocusNode();
    return _MobileSignupViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    phoneController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    phoneController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          PhoneValueKey: phoneController.text,
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

    for (var controller in _MobileSignupViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _MobileSignupViewFocusNodes.values) {
      focusNode.dispose();
    }

    _MobileSignupViewTextEditingControllers.clear();
    _MobileSignupViewFocusNodes.clear();
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

  String? get phoneValue => this.formValueMap[PhoneValueKey] as String?;

  set phoneValue(String? value) {
    this.setData(
      this.formValueMap..addAll({PhoneValueKey: value}),
    );

    if (_MobileSignupViewTextEditingControllers.containsKey(PhoneValueKey)) {
      _MobileSignupViewTextEditingControllers[PhoneValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasPhone =>
      this.formValueMap.containsKey(PhoneValueKey) &&
      (phoneValue?.isNotEmpty ?? false);

  bool get hasPhoneValidationMessage =>
      this.fieldsValidationMessages[PhoneValueKey]?.isNotEmpty ?? false;

  String? get phoneValidationMessage =>
      this.fieldsValidationMessages[PhoneValueKey];
}

extension Methods on FormStateHelper {
  setPhoneValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PhoneValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    phoneValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      PhoneValueKey: getValidationMessage(PhoneValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _MobileSignupViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _MobileSignupViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      PhoneValueKey: getValidationMessage(PhoneValueKey),
    });

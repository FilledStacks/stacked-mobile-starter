// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String FirstNameValueKey = 'first_name';
const String LastNameValueKey = 'last_name';

final Map<String, TextEditingController>
    _EditAccountNameSheetTextEditingControllers = {};

final Map<String, FocusNode> _EditAccountNameSheetFocusNodes = {};

final Map<String, String? Function(String?)?>
    _EditAccountNameSheetTextValidations = {
  FirstNameValueKey: null,
  LastNameValueKey: null,
};

mixin $EditAccountNameSheet {
  TextEditingController get firstNameController =>
      _getFormTextEditingController(FirstNameValueKey);
  TextEditingController get lastNameController =>
      _getFormTextEditingController(LastNameValueKey);

  FocusNode get firstNameFocusNode => _getFormFocusNode(FirstNameValueKey);
  FocusNode get lastNameFocusNode => _getFormFocusNode(LastNameValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_EditAccountNameSheetTextEditingControllers.containsKey(key)) {
      return _EditAccountNameSheetTextEditingControllers[key]!;
    }

    _EditAccountNameSheetTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _EditAccountNameSheetTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_EditAccountNameSheetFocusNodes.containsKey(key)) {
      return _EditAccountNameSheetFocusNodes[key]!;
    }
    _EditAccountNameSheetFocusNodes[key] = FocusNode();
    return _EditAccountNameSheetFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    firstNameController.addListener(() => _updateFormData(model));
    lastNameController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    firstNameController.addListener(() => _updateFormData(model));
    lastNameController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          FirstNameValueKey: firstNameController.text,
          LastNameValueKey: lastNameController.text,
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

    for (var controller in _EditAccountNameSheetTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _EditAccountNameSheetFocusNodes.values) {
      focusNode.dispose();
    }

    _EditAccountNameSheetTextEditingControllers.clear();
    _EditAccountNameSheetFocusNodes.clear();
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

  String? get firstNameValue => this.formValueMap[FirstNameValueKey] as String?;
  String? get lastNameValue => this.formValueMap[LastNameValueKey] as String?;

  set firstNameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({FirstNameValueKey: value}),
    );

    if (_EditAccountNameSheetTextEditingControllers.containsKey(
        FirstNameValueKey)) {
      _EditAccountNameSheetTextEditingControllers[FirstNameValueKey]?.text =
          value ?? '';
    }
  }

  set lastNameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({LastNameValueKey: value}),
    );

    if (_EditAccountNameSheetTextEditingControllers.containsKey(
        LastNameValueKey)) {
      _EditAccountNameSheetTextEditingControllers[LastNameValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasFirstName =>
      this.formValueMap.containsKey(FirstNameValueKey) &&
      (firstNameValue?.isNotEmpty ?? false);
  bool get hasLastName =>
      this.formValueMap.containsKey(LastNameValueKey) &&
      (lastNameValue?.isNotEmpty ?? false);

  bool get hasFirstNameValidationMessage =>
      this.fieldsValidationMessages[FirstNameValueKey]?.isNotEmpty ?? false;
  bool get hasLastNameValidationMessage =>
      this.fieldsValidationMessages[LastNameValueKey]?.isNotEmpty ?? false;

  String? get firstNameValidationMessage =>
      this.fieldsValidationMessages[FirstNameValueKey];
  String? get lastNameValidationMessage =>
      this.fieldsValidationMessages[LastNameValueKey];
}

extension Methods on FormStateHelper {
  setFirstNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[FirstNameValueKey] = validationMessage;
  setLastNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[LastNameValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    firstNameValue = '';
    lastNameValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      FirstNameValueKey: getValidationMessage(FirstNameValueKey),
      LastNameValueKey: getValidationMessage(LastNameValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _EditAccountNameSheetTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _EditAccountNameSheetTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      FirstNameValueKey: getValidationMessage(FirstNameValueKey),
      LastNameValueKey: getValidationMessage(LastNameValueKey),
    });

import 'package:stacked_mobile_starter/ui/common/app_strings.dart';

import 'string_util.dart';

class Validator {
  static String? validateEmail(String? s) {
    if (StringUtil.isEmpty(s)) {
      return AppStrings.ksEmailCannotBeEmpty;
    } else if (!StringUtil.isValidEmail(s!)) {
      return AppStrings.ksEmailNotValid;
    } else {
      return null;
    }
  }

  static String? validatePassword(String? s) {
    if (StringUtil.isEmpty(s)) {
      return AppStrings.ksPasswordCannotBeEmpty;
    } else if (s!.length < 4) {
      return AppStrings.ksPasswordMustBeGreaterThanFour;
    } else {
      return null;
    }
  }

  static String? validateFirstName(String? s) {
    if (StringUtil.isEmpty(s)) {
      return AppStrings.ksFirstNameCannotBeEmpty;
    } else {
      return null;
    }
  }

  static String? validateLastName(String? s) {
    if (StringUtil.isEmpty(s)) {
      return AppStrings.ksLastNameCannotBeEmpty;
    } else {
      return null;
    }
  }
}

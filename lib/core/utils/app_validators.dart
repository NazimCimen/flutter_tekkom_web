import 'package:flutter/material.dart';
import 'package:tekkom_web/product/constants/string_constants.dart';

@immutable
final class AppValidators {
  const AppValidators._();

  static const String emailRegExp =
      r'^[^<>()\[\]\\.,;:\s@\"]+(\.[^<>()\[\]\\.,;:\s@\"]+)*|(\".+\")@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return StringConstants.emailValidateError1;
    }
    final validateEmail = RegExp(emailRegExp);
    if (!validateEmail.hasMatch(value)) {
      return StringConstants.emailValidateError2;
    }
    return null;
  }

  static String? messageValidator(String? value) {
    if (value == null || value.isEmpty) {
      return StringConstants.msgValidateError;
    }
    return null;
  }

  static String? nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return StringConstants.nameValidateError;
    }
    return null;
  }
}

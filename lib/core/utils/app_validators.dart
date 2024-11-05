import 'package:flutter/material.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';

/// Contains validation functions for form fields.
@immutable
final class AppValidators {
  const AppValidators._();

  /// Regular expression pattern for validating email addresses.
  static const String emailRegExp =
      r'^[^<>()\[\]\\.,;:\s@\"]+(\.[^<>()\[\]\\.,;:\s@\"]+)*|(\".+\")@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  /// Validates an email address. Returns an error message if the [value] is
  /// empty or does not match the email format.
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

  /// Validates a message field. Returns an error message if the [value] is empty.
  static String? messageValidator(String? value) {
    if (value == null || value.isEmpty) {
      return StringConstants.msgValidateError;
    }
    return null;
  }

  /// Validates a name field. Returns an error message if the [value] is empty.
  static String? nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return StringConstants.nameValidateError;
    }
    return null;
  }
}

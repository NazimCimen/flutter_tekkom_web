import 'package:flutter/material.dart';

@immutable
final class CustomInputDecoration {
  const CustomInputDecoration._();
  static InputDecoration inputDecoration({
    required BuildContext context,
    required String hintText,
  }) =>
      InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.error,
          ),
        ),
      );
}

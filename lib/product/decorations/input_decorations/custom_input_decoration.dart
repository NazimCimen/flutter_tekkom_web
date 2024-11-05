import 'package:flutter/material.dart';
import 'package:tekkom_web/core/size/app_border_radius_extensions.dart';

@immutable
final class CustomInputDecoration {
  const CustomInputDecoration._();
  static InputDecoration inputDecoration({
    required BuildContext context,
    required String labelText,
  }) =>
      InputDecoration(
        filled: true,
        fillColor: Theme.of(context).colorScheme.tertiary,
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: context.cBorderRadiusAllLow,
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: context.cBorderRadiusAllLow,
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: context.cBorderRadiusAllLow,
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.error,
          ),
        ),
      );
}

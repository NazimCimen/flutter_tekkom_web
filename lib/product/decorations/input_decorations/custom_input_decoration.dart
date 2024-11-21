import 'package:flutter/material.dart';
import 'package:tekkom_web/core/size/app_border_radius_extensions.dart';

@immutable
final class CustomInputDecoration {
  const CustomInputDecoration._();
  static InputDecoration filledInputDecoration({
    required BuildContext context,
    required String hintText,
  }) =>
      InputDecoration(
        filled: true,
        fillColor: Theme.of(context).colorScheme.tertiary,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: context.cBorderRadiusAllLow / 2,
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: context.cBorderRadiusAllLow / 2,
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: context.cBorderRadiusAllLow / 2,
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.error,
          ),
        ),
      );

  static InputDecoration outlineInputDecoration({
    required BuildContext context,
    required String hintText,
  }) =>
      InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: context.cBorderRadiusAllLow / 2,
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.secondaryContainer,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: context.cBorderRadiusAllLow / 2,
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.secondaryContainer,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: context.cBorderRadiusAllLow / 2,
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: context.cBorderRadiusAllLow / 2,
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.error,
          ),
        ),
      );
}

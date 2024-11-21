import 'package:flutter/material.dart';
import 'package:tekkom_web/core/size/app_border_radius_extensions.dart';

@immutable
final class CustomBoxDecoration {
  const CustomBoxDecoration._();

  static BoxDecoration customHeaderDecoration(
    BuildContext context,
    bool isTransparent,
  ) {
    return BoxDecoration(
      border: Border(
        bottom: isTransparent
            ? BorderSide.none
            : BorderSide(
                color: Theme.of(context).colorScheme.outline.withOpacity(0.4),
              ),
      ),
      color: isTransparent
          ? Colors.transparent
          : Theme.of(context).colorScheme.surface,
    );
  }

  static BoxDecoration customBoxDecoration(BuildContext context) =>
      BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: context.cBorderRadiusAllLow,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.scrim.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      );
}

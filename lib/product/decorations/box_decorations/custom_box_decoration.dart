import 'package:flutter/material.dart';

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
}

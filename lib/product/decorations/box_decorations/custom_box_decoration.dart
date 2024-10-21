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
        bottom: BorderSide(
          color: Theme.of(context).colorScheme.tertiary.withOpacity(0.4),
        ),
      ),
      color: isTransparent
          ? Colors.transparent
          : Theme.of(context).scaffoldBackgroundColor,
    );
  }
}

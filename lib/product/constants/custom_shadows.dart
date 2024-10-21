import 'package:flutter/material.dart';

@immutable
final class CustomShadows {
  const CustomShadows._();

  static List<Shadow> customLowShadow(BuildContext context) => [
        Shadow(
          offset: const Offset(1.5, 1.5),
          blurRadius: 2,
          color: Theme.of(context).colorScheme.scrim.withOpacity(0.7),
        ),
      ];
}

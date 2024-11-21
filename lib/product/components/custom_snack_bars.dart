import 'package:flutter/material.dart';

@immutable
final class CustomSnackBars {
  const CustomSnackBars._();
  static void showErrorSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        content: Center(
          child: Text(
            message,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.surface,
                ),
          ),
        ),
      ),
    );
  }
}

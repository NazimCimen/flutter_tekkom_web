import 'package:flutter/material.dart';
import 'package:tekkom_web/core/size/app_border_radius_extensions.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  final bool isLoading;
  const CustomElevatedButtonWidget({
    required this.onPress,
    required this.text,
    required this.isLoading,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: context.cPaddingLarge,
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: ContinuousRectangleBorder(
          borderRadius: context.borderRadiusAllLow,
        ),
      ),
      onPressed: onPress,
      child: isLoading
          ? Padding(
              padding: context.cPaddingSmall / 2,
              child: CircularProgressIndicator(
                color: Theme.of(context).colorScheme.secondary,
              ),
            )
          : FittedBox(
              child: Text(
                maxLines: 1,
                text,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.surface,
                    ),
              ),
            ),
    );
  }
}

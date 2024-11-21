import 'package:flutter/material.dart';
import 'package:tekkom_web/core/base/base_stateless.dart';
import 'package:tekkom_web/core/size/app_border_radius_extensions.dart';

class CustomTextButton extends BaseStateless<void> {
  final VoidCallback onPressed;
  final String text;
  final bool isHeaderTransparent;
  final bool isCurrentPage;
  const CustomTextButton({
    required this.text,
    required this.onPressed,
    required this.isHeaderTransparent,
    required this.isCurrentPage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ElevatedButton.styleFrom(
        shape: ContinuousRectangleBorder(
          borderRadius: context.cBorderRadiusAllLow,
        ),
        backgroundColor:
            isCurrentPage ? colorScheme(context).primary : Colors.transparent,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: !isHeaderTransparent && isCurrentPage
                  ? Theme.of(context).colorScheme.surface
                  : isHeaderTransparent
                      ? Theme.of(context).colorScheme.surface
                      : Theme.of(context).colorScheme.scrim,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tekkom_web/core/base/base_stateless.dart';
import 'package:tekkom_web/core/size/app_border_radius_extensions.dart';
import 'package:tekkom_web/core/size/constant_size.dart';

class CustomIconButton extends BaseStateless<void> {
  final IconData icon;
  final String text;
  final VoidCallback launchUrl;
  final bool isDark;
  final bool isHover;
  const CustomIconButton({
    required this.icon,
    required this.launchUrl,
    required this.text,
    required this.isDark,
    required this.isHover,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: launchUrl,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: !isHover ? context.cBorderRadiusAllLow : null,
          color:
              !isHover ? colorScheme(context).primary.withOpacity(0.5) : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isDark
                  ? colorScheme(context).scrim
                  : colorScheme(context).surface,
            ),
            SizedBox(width: context.cLowValue),
            Text(
              text,
              style: textTheme(context).bodyMedium?.copyWith(
                    color: isDark
                        ? colorScheme(context).scrim
                        : colorScheme(context).surface,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

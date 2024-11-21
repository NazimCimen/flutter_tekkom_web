import 'package:flutter/material.dart';
import 'package:tekkom_web/core/size/constant_size.dart';

class FooterLink extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const FooterLink({
    required this.title,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(bottom: context.cLowValue),
        child: Row(
          children: [
            Icon(
              Icons.arrow_right,
              color: Theme.of(context).colorScheme.surface,
              size: context.cMediumValue,
            ),
            SizedBox(width: context.cLowValue),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.outlineVariant,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

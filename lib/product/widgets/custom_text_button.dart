import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final bool isHeaderTransparent;
  const CustomTextButton({
    required this.text,
    required this.onPressed,
    required this.isHeaderTransparent,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: isHeaderTransparent
                  ? Theme.of(context).colorScheme.surface
                  : Theme.of(context).colorScheme.scrim,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}

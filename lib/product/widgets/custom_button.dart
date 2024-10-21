import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final bool isFocused;
  const CustomButton({
    required this.text,
    required this.onPressed,
    required this.isFocused,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: isFocused
            ? Theme.of(context).colorScheme.tertiaryFixed
            : Colors.transparent,
        fixedSize: isFocused ? const Size(80, 30) : null,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: isFocused
                  ? Theme.of(context).scaffoldBackgroundColor
                  : Theme.of(context).colorScheme.onSurface,
            ),
      ),
    );
  }
}

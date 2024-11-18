import 'package:flutter/material.dart';

class CustomTitleTextLargeWidget extends StatelessWidget {
  final String text;
  const CustomTitleTextLargeWidget({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.displayMedium?.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}

class CustomTitleTextMediumWidget extends StatelessWidget {
  final String text;
  const CustomTitleTextMediumWidget({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.displaySmall?.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}

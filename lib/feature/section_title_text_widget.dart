import 'package:flutter/material.dart';

class SectionTitleTextWidget extends StatelessWidget {
  final String text;
  const SectionTitleTextWidget({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.displayMedium?.copyWith(
          color: Theme.of(context).colorScheme.onSurface,
          fontWeight: FontWeight.bold),
    );
  }
}

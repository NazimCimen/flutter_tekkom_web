import 'package:flutter/material.dart';
import 'package:tekkom_web/responsive/responsive.dart';

class CustomTitleTextLargeWidget extends StatelessWidget {
  final String text;
  const CustomTitleTextLargeWidget({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      text,
      style: Responsive.isMobile(context)
          ? Theme.of(context).textTheme.displaySmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
                fontWeight: FontWeight.bold,
              )
          : Theme.of(context).textTheme.displayMedium?.copyWith(
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
    return SelectableText(
      textAlign: TextAlign.center,
      text,
      style: Theme.of(context).textTheme.displaySmall?.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}

class CustomTitleTextSmallWidget extends StatelessWidget {
  final String text;
  const CustomTitleTextSmallWidget({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      textAlign: TextAlign.center,
      text,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}

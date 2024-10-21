import 'package:flutter/material.dart';

class CustomTextTitleWidget extends StatelessWidget {
  final String title;

  const CustomTextTitleWidget({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.displaySmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primary,
          ),
    );
  }
}

class CustomTextSubTitleWidget extends StatelessWidget {
  final String subTitle;

  const CustomTextSubTitleWidget({
    required this.subTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primary,
            overflow: TextOverflow.ellipsis,
          ),
    );
  }
}

class CustomTextGreySubTitleWidget extends StatelessWidget {
  final String subTitle;
  final int? maxLine;
  const CustomTextGreySubTitleWidget({
    required this.subTitle,
    this.maxLine,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: maxLine,
      subTitle,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.tertiary,
            overflow: TextOverflow.ellipsis,
          ),
    );
  }
}

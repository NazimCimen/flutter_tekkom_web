import 'package:flutter/material.dart';
import 'package:tekkom_web/core/base/base_stateless.dart';

class CustomTitle extends BaseStateless<void> {
  final String title;
  const CustomTitle({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      title,
      style: textTheme(context).headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
            height: 2,
          ),
    );
  }
}

class CustomDescription extends BaseStateless<void> {
  final String desc;
  const CustomDescription({
    required this.desc,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      desc,
      style:
          textTheme(context).bodyLarge?.copyWith(fontStyle: FontStyle.normal),
    );
  }
}

class CustomSubtitle extends BaseStateless<void> {
  final String subtitle;
  const CustomSubtitle({
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      subtitle,
      style: textTheme(context).titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            height: 1.5,
          ),
    );
  }
}

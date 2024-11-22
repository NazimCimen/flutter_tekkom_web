import 'package:flutter/material.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';
import 'package:tekkom_web/core/base/base_stateless.dart';

class CopyrightWidget extends BaseStateless<void> {
  const CopyrightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SelectableText(
            StringConstants.footer_copyrights,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.outlineVariant,
                ),
          ),
        ),
        Center(
          child: SelectableText(
            cursorColor: colorScheme(context).surface,
            StringConstants.footer_copyrights_dev,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.outlineVariant,
                ),
          ),
        ),
      ],
    );
  }
}

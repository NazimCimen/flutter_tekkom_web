import 'package:flutter/material.dart';
import 'package:tekkom_web/core/base/base_stateless.dart';

class CopyrightWidget extends BaseStateless<void> {
  const CopyrightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SelectableText(
            'Copyright © 2024. Tüm Hakları Saklıdır.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.outlineVariant,
                ),
          ),
        ),
        Center(
          child: SelectableText(
            cursorColor: colorScheme(context).surface,
            'Flutter 3.22.0 ile geliştirildi. Nazım Çimen +90 552 346 18 42',
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

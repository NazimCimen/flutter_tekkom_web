import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/responsive/responsive.dart';

class FooterHeaderWidget extends StatelessWidget {
  const FooterHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          StringConstants.appName,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.surface,
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(height: context.cMediumValue),
        SelectableText(
          'Araç Tamir-Bakım / İş Makineleri Tamiri / Yakıt Tasarruf Cihazı',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.outlineVariant,
              ),
        ),
        SizedBox(height: context.cMediumValue),
        Row(
          children: [
            SelectableText(
              'Sosyal Medya',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.surface,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            if (Responsive.isDesktop(context))
              SizedBox(width: context.cMediumValue * 2),
            if (!Responsive.isDesktop(context)) const Spacer(),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.facebook,
                color: Theme.of(context).colorScheme.surface,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.twitter,
                color: Theme.of(context).colorScheme.surface,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.linkedin,
                color: Theme.of(context).colorScheme.surface,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.instagram,
                color: Theme.of(context).colorScheme.surface,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}

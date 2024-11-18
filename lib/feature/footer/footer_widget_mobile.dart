import 'package:flutter/material.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/feature/footer/widgets/copyright_widget.dart';
import 'package:tekkom_web/feature/footer/widgets/footer_header_widget.dart';
import 'package:tekkom_web/feature/footer/widgets/navigate_pages-widget.dart';
import 'package:tekkom_web/feature/footer/widgets/navigate_services_widget.dart';

class FooterWidgetMobile extends StatelessWidget {
  const FooterWidgetMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      padding: context.cPaddingMedium,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FooterHeaderWidget(),
          Divider(color: Theme.of(context).colorScheme.outline),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NavigatePagesWidget(),
              Spacer(),
              NavigateServicesWidget(),
            ],
          ),
          Divider(color: Theme.of(context).colorScheme.outline),
          const CopyrightWidget(),
        ],
      ),
    );
  }
}

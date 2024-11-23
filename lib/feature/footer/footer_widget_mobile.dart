import 'package:flutter/material.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/feature/footer/widgets/copyright_widget.dart';
import 'package:tekkom_web/feature/footer/widgets/footer_header_widget.dart';
import 'package:tekkom_web/feature/footer/widgets/navigate_pages_widget.dart';
import 'package:tekkom_web/feature/footer/widgets/navigate_services_widget.dart';
import 'package:tekkom_web/responsive/responsive.dart';

class FooterWidgetMobile extends StatelessWidget {
  const FooterWidgetMobile({required this.scrollController, super.key});
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      padding: context.cPaddingMedium,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FooterHeaderWidget(),
          if (!Responsive.isMobile(context))
            Divider(color: Theme.of(context).colorScheme.outline),
          if (!Responsive.isMobile(context))
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NavigatePagesWidget(
                  scrollController: scrollController,
                ),
                const Spacer(),
                NavigateServicesWidget(
                  scrollController: scrollController,
                ),
              ],
            ),
          Divider(color: Theme.of(context).colorScheme.outline),
          const CopyrightWidget(),
          if (Responsive.isMobile(context))
            SizedBox(height: context.cXxLargeValue),
        ],
      ),
    );
  }
}

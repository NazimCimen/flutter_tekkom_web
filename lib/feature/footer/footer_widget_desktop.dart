import 'package:flutter/material.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/feature/footer/widgets/copyright_widget.dart';
import 'package:tekkom_web/feature/footer/widgets/footer_header_widget.dart';
import 'package:tekkom_web/feature/footer/widgets/navigate_pages_widget.dart';
import 'package:tekkom_web/feature/footer/widgets/navigate_services_widget.dart';

class FooterWidgetDesktop extends StatelessWidget {
  const FooterWidgetDesktop({required this.scrollController, super.key});
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      padding: context.cPaddingMedium,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              const FooterHeaderWidget(),
              const Spacer(),
              NavigatePagesWidget(
                scrollController: scrollController,
              ),
              const Spacer(),
              NavigateServicesWidget(
                scrollController: scrollController,
              ),
              const Spacer(),
            ],
          ),
          Divider(color: Theme.of(context).colorScheme.outline),
          const CopyrightWidget(),
        ],
      ),
    );
  }
}

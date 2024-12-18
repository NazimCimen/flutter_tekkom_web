import 'package:flutter/material.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';
import 'package:tekkom_web/config/routes/app_routes.dart';
import 'package:tekkom_web/config/routes/navigator_service.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/feature/footer/widgets/footer_link_widget.dart';

class NavigateServicesWidget extends StatelessWidget {
  const NavigateServicesWidget({required this.scrollController, super.key});
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringConstants.our_services_small,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.surface,
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(height: context.cLowValue),
        FooterLink(
          title: StringConstants.our_services1,
          onTap: () {
            scrollController.jumpTo(0);
            NavigatorService.pushNamedAndRemoveUntil(AppRoutes.carReapierView);
          },
        ),
        FooterLink(
          title: StringConstants.our_services2,
          onTap: () {
            scrollController.jumpTo(0);
            NavigatorService.pushNamedAndRemoveUntil(
              AppRoutes.repairMachineryView,
            );
          },
        ),
        FooterLink(
          title: StringConstants.our_services3,
          onTap: () {
            scrollController.jumpTo(0);
            NavigatorService.pushNamedAndRemoveUntil(
              AppRoutes.fuelSavingView,
            );
          },
        ),
        SizedBox(height: context.cMediumValue),
      ],
    );
  }
}

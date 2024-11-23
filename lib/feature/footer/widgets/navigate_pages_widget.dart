import 'package:flutter/material.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';
import 'package:tekkom_web/config/routes/app_routes.dart';
import 'package:tekkom_web/config/routes/navigator_service.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/feature/footer/widgets/footer_link_widget.dart';

class NavigatePagesWidget extends StatelessWidget {
  const NavigatePagesWidget({
    required this.scrollController,
    super.key,
  });
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringConstants.footer_pages_title,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.surface,
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(height: context.cLowValue),
        FooterLink(
          title: StringConstants.main_screen,
          onTap: () {
            scrollController.jumpTo(0);
            NavigatorService.pushNamedAndRemoveUntil(AppRoutes.initialRoute);
          },
        ),
        FooterLink(
          title: StringConstants.about_us,
          onTap: () {
            scrollController.jumpTo(0);
            NavigatorService.pushNamedAndRemoveUntil(AppRoutes.aboutUsView);
          },
        ),
        FooterLink(
          title: StringConstants.our_services,
          onTap: () {
            scrollController.jumpTo(0);
            NavigatorService.pushNamedAndRemoveUntil(AppRoutes.ourServicesView);
          },
        ),
        FooterLink(
          title: StringConstants.contact_us,
          onTap: () {
            scrollController.jumpTo(0);
            NavigatorService.pushNamedAndRemoveUntil(AppRoutes.contactView);
          },
        ),
        SizedBox(height: context.cMediumValue),
      ],
    );
  }
}

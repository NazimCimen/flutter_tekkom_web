import 'package:flutter/material.dart';
import 'package:tekkom_web/config/routes/app_routes.dart';
import 'package:tekkom_web/config/routes/navigator_service.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/feature/footer/widgets/footer_link_widget.dart';

class NavigateServicesWidget extends StatelessWidget {
  const NavigateServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hizmetlerimiz',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.surface,
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(height: context.cLowValue),
        FooterLink(
          title: 'Araç Tamir Ve Bakımı',
          onTap: () {
            NavigatorService.pushNamed(AppRoutes.carReapierView);
          },
        ),
        FooterLink(
          title: 'Yakıt Tasarruf Cihazı',
          onTap: () {
            NavigatorService.pushNamed(AppRoutes.fuelSavingView);
          },
        ),
        FooterLink(
          title: 'İş Makineleri Tamir Ve Bakımı',
          onTap: () {
            NavigatorService.pushNamed(AppRoutes.repairMachineryView);
          },
        ),
        SizedBox(height: context.cMediumValue),
      ],
    );
  }
}

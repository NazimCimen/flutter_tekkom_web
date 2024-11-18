import 'package:flutter/material.dart';
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
            //   NavigatorService.instance.navigateTo('/services/car-maintenance');
          },
        ),
        FooterLink(
          title: 'Yakıt Tasarruf Cihazı',
          onTap: () {
            //      NavigatorService.instance.navigateTo('/services/fuel-saving');
          },
        ),
        FooterLink(
          title: 'İş Makineleri Tamir Ve Bakımı',
          onTap: () {
            //    NavigatorService.instance.navigateTo('/services/machine-maintenance');
          },
        ),
        SizedBox(height: context.cMediumValue),
      ],
    );
  }
}

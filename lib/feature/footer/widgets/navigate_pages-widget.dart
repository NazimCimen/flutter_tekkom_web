import 'package:flutter/material.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/feature/footer/widgets/footer_link_widget.dart';

class NavigatePagesWidget extends StatelessWidget {
  const NavigatePagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sayfalar',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.surface,
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(height: context.cLowValue),
        FooterLink(
          title: 'Anasayfa',
          onTap: () {
            // NavigatorService.instance.navigateTo('/home');
          },
        ),
        FooterLink(
          title: 'Kurumsal',
          onTap: () {
            //   NavigatorService.instance.navigateTo('/about');
          },
        ),
        FooterLink(
          title: 'Hizmetlerimiz',
          onTap: () {
            //   NavigatorService.instance.navigateTo('/services');
          },
        ),
        FooterLink(
          title: 'İletişim',
          onTap: () {
            //    NavigatorService.instance.navigateTo('/contact');
          },
        ),
        SizedBox(height: context.cMediumValue),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/utils/image_enum.dart';
import 'package:tekkom_web/responsive/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsSection extends StatelessWidget {
  const ContactUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.getWidth(context),
      height: Responsive.isDesktop(context)
          ? context.cXxLargeValue * 3
          : context.cXxLargeValue * 5,
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
      child: Responsive.isDesktop(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _ContactInfoWidget(
                  assetPath: ImageEnumsSvg.ic_phone.toPathSvg,
                  info: 'Bizi aramaktan çekinmeyin:\n+90 536 78 92',
                ),
                SizedBox(
                    width: Responsive.isTablet(context)
                        ? context.cLowValue
                        : context.cXxLargeValue),
                _ContactInfoWidget(
                  assetPath: ImageEnumsSvg.ic_location.toPathSvg,
                  info:
                      'Aşağıpınarbaşı Mahallesi\n16722Sokak No: 8\nSelçuklu/KONYA',
                ),
                SizedBox(
                    width: Responsive.isTablet(context)
                        ? context.cLowValue
                        : context.cXxLargeValue),
                _ContactInfoWidget(
                  assetPath: ImageEnumsSvg.ic_mail.toPathSvg,
                  info: ' E-posta adresimiz:\n cimennazim.27@gmail.com',
                ),
              ],
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => _launchWhatsApp('phoneNumber'),
                    child: _ContactInfoWidget(
                      assetPath: ImageEnumsSvg.ic_phone.toPathSvg,
                      info: 'Bizi aramaktan çekinmeyin:\n+90 536 78 92',
                    ),
                  ),
                  SizedBox(height: context.cXLargeValue),
                  _ContactInfoWidget(
                    assetPath: ImageEnumsSvg.ic_location.toPathSvg,
                    info:
                        'Aşağıpınarbaşı Mahallesi\n16722Sokak No: 8\nSelçuklu/KONYA',
                  ),
                  SizedBox(height: context.cXLargeValue),
                  _ContactInfoWidget(
                    assetPath: ImageEnumsSvg.ic_mail.toPathSvg,
                    info: ' E-posta adresimiz:\n cimennazim.27@gmail.com',
                  ),
                ],
              ),
            ),
    );
  }

  Future<void> _launchWhatsApp(String phone) async {
    final Uri url = Uri.parse('https://wa.me/$phone');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'WhatsApp açılamadı';
    }
  }
}

class _ContactInfoWidget extends StatelessWidget {
  final String assetPath;
  final String info;
  const _ContactInfoWidget({
    required this.assetPath,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          assetPath,
          width: ConstantSizes.xxLarge.value,
          height: ConstantSizes.xxLarge.value,
          fit: BoxFit.cover,
        ),
        SelectableText(
          autofocus: true,
          info,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Theme.of(context).colorScheme.surface),
        )
      ],
    );
  }
}

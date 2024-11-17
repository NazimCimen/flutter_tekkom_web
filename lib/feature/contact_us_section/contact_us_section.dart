import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/core/utils/image_enum.dart';
import 'package:tekkom_web/feature/contact_us_section/google_map_widget.dart';
import 'package:tekkom_web/responsive/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsSection extends StatelessWidget {
  const ContactUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.getWidth(context),
      height: ConstantSizes.smallPageHeight.value,
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
      child: Padding(
        padding: context.cPaddingSmall,
        child: Responsive.isMobile(context)
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Flexible(
                    child: GoogleMapWidget(),
                  ),
                  SizedBox(height: context.cXLargeValue * 2),
                  Flexible(
                    child: GestureDetector(
                      onTap: () => _launchWhatsApp('phoneNumber'),
                      child: _ContactInfoWidget(
                        assetPath: ImageEnumsSvg.ic_phone.toPathSvg,
                        info: 'Bizi aramaktan çekinmeyin:\n+90 536 78 92',
                      ),
                    ),
                  ),
                  SizedBox(height: context.cXLargeValue),
                  Flexible(
                    child: _ContactInfoWidget(
                      assetPath: ImageEnumsSvg.ic_location.toPathSvg,
                      info:
                          'Aşağıpınarbaşı Mahallesi\n16722Sokak No: 8\nSelçuklu/KONYA',
                    ),
                  ),
                  SizedBox(height: context.cXLargeValue),
                  Flexible(
                    child: _ContactInfoWidget(
                      assetPath: ImageEnumsSvg.ic_mail.toPathSvg,
                      info: ' E-posta adresimiz:\n cimennazim.27@gmail.com',
                    ),
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Flexible(
                    child: SizedBox(
                      height: 300,
                      width: 500,
                      child: GoogleMapWidget(),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: _ContactInfoWidget(
                            assetPath: ImageEnumsSvg.ic_phone.toPathSvg,
                            info: 'Bizi aramaktan çekinmeyin:\n+90 536 78 92',
                          ),
                        ),
                        SizedBox(height: context.cLargeValue),
                        Flexible(
                          child: _ContactInfoWidget(
                            assetPath: ImageEnumsSvg.ic_location.toPathSvg,
                            info:
                                'Aşağıpınarbaşı Mahallesi\n16722Sokak No: 8\nSelçuklu/KONYA',
                          ),
                        ),
                        SizedBox(height: context.cLargeValue),
                        Flexible(
                          child: _ContactInfoWidget(
                            assetPath: ImageEnumsSvg.ic_mail.toPathSvg,
                            info:
                                ' E-posta adresimiz:\n cimennazim.27@gmail.com',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ), /*Responsive.isDesktop(context)
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
                        : context.cXxLargeValue,),
                _ContactInfoWidget(
                  assetPath: ImageEnumsSvg.ic_location.toPathSvg,
                  info:
                      'Aşağıpınarbaşı Mahallesi\n16722Sokak No: 8\nSelçuklu/KONYA',
                ),
                SizedBox(
                    width: Responsive.isTablet(context)
                        ? context.cLowValue
                        : context.cXxLargeValue,),
                _ContactInfoWidget(
                  assetPath: ImageEnumsSvg.ic_mail.toPathSvg,
                  info: ' E-posta adresimiz:\n cimennazim.27@gmail.com',
                ),
              ],
            )
          : Padding(
              padding: context.cPaddingSmall,
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
            ),*/
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
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Flexible(
          child: SvgPicture.asset(
            assetPath,
            fit: BoxFit.cover,
            height: context.cMediumValue * 3,
          ),
        ),
        SizedBox(
          width: context.cMediumValue,
        ),
        Expanded(
          flex: 3,
          child: SelectableText(
            autofocus: true,
            info,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).colorScheme.surface,
                ),
          ),
        ),
      ],
    );
  }
}

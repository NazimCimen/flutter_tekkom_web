import 'package:flutter/material.dart';
import 'package:tekkom_web/core/base/base_stateless.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/product/constants/custom_shadows.dart';
import 'package:tekkom_web/responsive/responsive.dart';

class DescriptionWithImageWidget extends BaseStateless<void> {
  const DescriptionWithImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Responsive.getWidth(context),
      height: context.cXxLargeValue * 7,
      child: const Stack(
        children: [
          _BackgroundImage(),
          _ShadowOnWidget(),
          Align(child: _Description()),
        ],
      ),
    );
  }
}

class _ShadowOnWidget extends BaseStateless<void> {
  const _ShadowOnWidget();

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        color: colorScheme(context).scrim.withOpacity(0.4),
      ),
    );
  }
}

class _Description extends BaseStateless<void> {
  const _Description();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.cXxLargeValue * 15,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Responsive.isDesktop(context)
              ? context.cXLargeValue * 5
              : Responsive.isTablet(context)
                  ? context.cMediumValue * 2
                  : context.cMediumValue,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableText.rich(
              textAlign: TextAlign.center,
              TextSpan(
                children: [
                  TextSpan(
                    text: 'SİZİ ',
                    style: textTheme(context).displayMedium?.copyWith(
                          color: colorScheme(context).primary,
                          fontWeight: FontWeight.bold,
                          shadows: CustomShadows.customLowShadow(context),
                        ),
                  ),
                  TextSpan(
                    text: 'DİNLİYORUZ',
                    style: textTheme(context).displayMedium?.copyWith(
                          color: colorScheme(context).surface,
                          fontWeight: FontWeight.bold,
                          shadows: CustomShadows.customLowShadow(context),
                        ),
                  ),
                ],
              ),
            ),
            SelectableText(
              textAlign: TextAlign.center,
              'Her türlü çözüm önerileri sunuyoruz',
              style: textTheme(context).bodyMedium?.copyWith(
                    color: colorScheme(context).surface,
                  ),
            ),
            SizedBox(height: context.cXLargeValue),
            SelectableText(
              textAlign: TextAlign.center,
              'Sizlere anında hizmet üretiyoruz. Kaliteli ekipmanımız ve işinde uzman çalışanlarımızla sizlere dört dörtlük hizmet sunuyoruz.',
              style: textTheme(context).bodyLarge?.copyWith(
                    color: colorScheme(context).surface,
                  ),
            ),
            SizedBox(height: context.cLargeValue),
            SelectableText(
              textAlign: TextAlign.center,
              'Belirttiğiniz sorunları, ürün ve hizmetleri önce sizden dinliyor sonra, üstün kalite ile araç bakım hizmetlerini sizlere sunuyoruz.',
              style: textTheme(context).bodyLarge?.copyWith(
                    color: colorScheme(context).surface,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/bg_test7.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

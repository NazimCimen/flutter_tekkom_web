import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/core/utils/image_enum.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';
import 'package:tekkom_web/responsive/responsive.dart';

class AboutUsSection extends StatelessWidget {
  const AboutUsSection({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Responsive.getWidth(context),
      child: Padding(
        padding: context.cPaddingxLarge,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: context.cXLargeValue),
            Text(
              StringConstants.about_us.tr(),
              style: TextStyle(
                fontSize: ConstantSizes.xLarge.value,
                color: Theme.of(context).colorScheme.tertiaryFixed,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: context.cLargeValue * 2),
            Image.asset(
              ImageEnumsPng.img_about_us.toPathPng,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: ConstantSizes.large.value),
            Text(
              StringConstants.mining_description1.tr(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: context.cLargeValue),
            Text(
              StringConstants.mining_description2.tr(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: context.cXLargeValue),
            Text(
              StringConstants.mining_description3.tr(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}

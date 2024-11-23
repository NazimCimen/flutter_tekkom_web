import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';
import 'package:tekkom_web/core/size/app_border_radius_extensions.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/product/constants/app_constants.dart';
import 'package:tekkom_web/product/widgets/section_title_text_widget.dart';
import 'package:tekkom_web/responsive/responsive.dart';

class BrandCarousel extends StatelessWidget {
  const BrandCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.cPaddingMedium,
      child: Column(
        children: [
          SizedBox(
            height:
                !Responsive.isMobile(context) ? context.cXxLargeValue * 1.5 : 0,
          ),
          if (Responsive.isMobile(context))
            CustomTitleTextSmallWidget(
              text: StringConstants.brand_slider_title,
            ),
          if (!Responsive.isMobile(context))
            CustomTitleTextMediumWidget(
              text: StringConstants.brand_slider_title,
            ),
          SizedBox(height: context.cMediumValue),
          SelectableText(
            textAlign: TextAlign.center,
            StringConstants.brand_slider_sub_title,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onTertiary),
          ),
          SizedBox(height: context.cXLargeValue),
          CarouselSlider(
            options: CarouselOptions(
              height: Responsive.isMobile(context)
                  ? context.cLargeValue * 4
                  : context.cXxLargeValue * 2,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 2),
              enlargeCenterPage: true,
              viewportFraction: 0.3,
            ),
            items: AppConstants.brandLogos.map((logoPath) {
              return Builder(
                builder: (BuildContext context) {
                  return Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: context.cBorderRadiusAllLow,
                    ),
                    child: Padding(
                      padding: context.cPaddingMedium,
                      child: SvgPicture.asset(
                        logoPath,
                        height: Responsive.isMobile(context)
                            ? context.cLargeValue * 3
                            : context.cXxLargeValue,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(height: context.cXxLargeValue * 1.5),
        ],
      ),
    );
  }
}

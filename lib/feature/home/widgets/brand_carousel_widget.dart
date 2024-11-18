import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tekkom_web/core/size/app_border_radius_extensions.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/feature/section_title_text_widget.dart';

class BrandCarousel extends StatelessWidget {
  final List<String> brandLogos = [
    'assets/images/car_audi.png',
    'assets/images/car_bmw.png',
    'assets/images/car_citroen.png',
    'assets/images/car_ford.png',
    'assets/images/car_honda.png',
    'assets/images/car_kia.png',
    'assets/images/car_land_rover.png',
    'assets/images/car_mazda.png',
    'assets/images/car_mercedes.png',
    'assets/images/car_mitsubishi.png',
    'assets/images/car_opel.png',
    'assets/images/car_skoda.png',
    'assets/images/car_volvo.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTitleTextMediumWidget(
          text: ' Her Marka ve Model İçin Güvenilir Hizmet',
        ),
        SizedBox(height: context.cMediumValue),
        Text(
          textAlign: TextAlign.center,
          'Her Marka ve Modeldeki Araçlarınızın Tamirini ve Bakımını Yapıyoruz.',
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Theme.of(context).colorScheme.onTertiary),
        ),
        SizedBox(height: context.cXLargeValue),
        CarouselSlider(
          options: CarouselOptions(
            height: 150,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 2),
            enlargeCenterPage: true,
            viewportFraction: 0.3,
          ),
          items: brandLogos.map((logoPath) {
            return Builder(
              builder: (BuildContext context) {
                return Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: context.cBorderRadiusAllLow,
                  ),
                  child: Padding(
                    padding: context.cPaddingMedium,
                    child: Image.asset(
                      logoPath,
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}

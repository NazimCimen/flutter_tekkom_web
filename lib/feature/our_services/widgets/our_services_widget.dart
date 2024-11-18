import 'package:flutter/material.dart';
import 'package:tekkom_web/core/size/app_border_radius_extensions.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/core/utils/image_enum.dart';
import 'package:tekkom_web/feature/section_title_text_widget.dart';
import 'package:tekkom_web/product/constants/some_constants.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';
import 'package:tekkom_web/product/widgets/custom_elevated_button.dart';
import 'package:tekkom_web/responsive/responsive.dart';

class OurServicesSection extends StatelessWidget {
  const OurServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    final isTablet = Responsive.isTablet(context);

    return SizedBox(
      width: Responsive.getWidth(context),
      child: Column(
        children: [
          SizedBox(height: context.cXxLargeValue),
          CustomTitleTextLargeWidget(
            text: StringConstants.our_services_small,
          ),
          SizedBox(height: context.cLowValue),
          Text(
            textAlign: TextAlign.center,
            'Araç ve iş makineleri tamirinde uzman ekibimizle güvenilir hizmet sunarken, \nyakıt tasarruf cihazlarımızla da verimliliğinizi artırıyoruz.',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onTertiary),
          ),
          SizedBox(height: context.cXLargeValue),
          if (isDesktop)
            Padding(
              padding: SomeConstants.pageHorizontolPadding(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: _ServiceWidget(
                      imagePath: ImageEnumsPng.img_services1.toPathPng,
                      title: 'Araç Tamir ve Bakımı',
                      desc:
                          'Günümüzün En Önemli İhtiyaçlarından Birisi Şüphesiz ki Ulaşımdır Bu İhtiyacımızı Karşılayabilmek İçin Motorlu Taşıtlar (Otomobil,Motorsiklet vb.) Kullanırız Fakat Yıllar Geçtikçe Araçlarımızda Bazı Sorunlar Meydana Gelir ve Eğer  Bu Sorunlar Zamanında Uzman Kişilerce Kontrol Edilmez ve Onarımı Yapılmazsa Çok Büyük Problemlere Yol Açabilir Eğer ki Aracınızda Herhangi Bir Sorun Varsa 30 Yıllık Deneyimi ve Bilgisi Olan Ustalarımızdan Yardım Talep Edebilirsiniz ',
                    ),
                  ),
                  Flexible(
                    child: _ServiceWidget(
                      imagePath: ImageEnumsPng.img_services2.toPathPng,
                      title: 'İş Makineleri Tamir ve Bakımı',
                      desc:
                          'Günümüzün En Önemli İhtiyaçlarından Birisi Şüphesiz ki Ulaşımdır Bu İhtiyacımızı Karşılayabilmek İçin Motorlu Taşıtlar (Otomobil,Motorsiklet vb.) Kullanırız Fakat Yıllar Geçtikçe Araçlarımızda Bazı Sorunlar Meydana Gelir ve Eğer  Bu Sorunlar Zamanında Uzman Kişilerce Kontrol Edilmez ve Onarımı Yapılmazsa Çok Büyük Problemlere Yol Açabilir Eğer ki Aracınızda Herhangi Bir Sorun Varsa 30 Yıllık Deneyimi ve Bilgisi Olan Ustalarımızdan Yardım Talep Edebilirsiniz ',
                    ),
                  ),
                  Flexible(
                    child: _ServiceWidget(
                      imagePath: ImageEnumsPng.img_services3.toPathPng,
                      title: 'Yakıt Tasarruf Cihazı',
                      desc:
                          'Günümüzün En Önemli İhtiyaçlarından Birisi Şüphesiz ki Ulaşımdır Bu İhtiyacımızı Karşılayabilmek İçin Motorlu Taşıtlar (Otomobil,Motorsiklet vb.) Kullanırız Fakat Yıllar Geçtikçe Araçlarımızda Bazı Sorunlar Meydana Gelir ve Eğer  Bu Sorunlar Zamanında Uzman Kişilerce Kontrol Edilmez ve Onarımı Yapılmazsa Çok Büyük Problemlere Yol Açabilir Eğer ki Aracınızda Herhangi Bir Sorun Varsa 30 Yıllık Deneyimi ve Bilgisi Olan Ustalarımızdan Yardım Talep Edebilirsiniz ',
                    ),
                  ),
                ],
              ),
            ),
          if (!isDesktop)
            Padding(
              padding: context.cPaddingLarge,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _ServiceWidget(
                    imagePath: ImageEnumsPng.img_services1.toPathPng,
                    title: 'Araç Tamir ve Bakımı',
                    desc:
                        'Günümüzün En Önemli İhtiyaçlarından Birisi Şüphesiz ki Ulaşımdır Bu İhtiyacımızı Karşılayabilmek İçin Motorlu Taşıtlar (Otomobil,Motorsiklet vb.) Kullanırız Fakat Yıllar Geçtikçe Araçlarımızda Bazı Sorunlar Meydana Gelir ve Eğer  Bu Sorunlar Zamanında Uzman Kişilerce Kontrol Edilmez ve Onarımı Yapılmazsa Çok Büyük Problemlere Yol Açabilir Eğer ki Aracınızda Herhangi Bir Sorun Varsa 30 Yıllık Deneyimi ve Bilgisi Olan Ustalarımızdan Yardım Talep Edebilirsiniz ',
                  ),
                  SizedBox(height: context.cMediumValue),
                  _ServiceWidget(
                    imagePath: ImageEnumsPng.img_services2.toPathPng,
                    title: 'İş Makineleri Tamir ve Bakımı',
                    desc:
                        'Günümüzün En Önemli İhtiyaçlarından Birisi Şüphesiz ki Ulaşımdır Bu İhtiyacımızı Karşılayabilmek İçin Motorlu Taşıtlar (Otomobil,Motorsiklet vb.) Kullanırız Fakat Yıllar Geçtikçe Araçlarımızda Bazı Sorunlar Meydana Gelir ve Eğer  Bu Sorunlar Zamanında Uzman Kişilerce Kontrol Edilmez ve Onarımı Yapılmazsa Çok Büyük Problemlere Yol Açabilir Eğer ki Aracınızda Herhangi Bir Sorun Varsa 30 Yıllık Deneyimi ve Bilgisi Olan Ustalarımızdan Yardım Talep Edebilirsiniz ',
                  ),
                  SizedBox(height: context.cMediumValue),
                  _ServiceWidget(
                    imagePath: ImageEnumsPng.img_services3.toPathPng,
                    title: 'Yakıt Tasarruf Cihazı',
                    desc:
                        'Günümüzün En Önemli İhtiyaçlarından Birisi Şüphesiz ki Ulaşımdır Bu İhtiyacımızı Karşılayabilmek İçin Motorlu Taşıtlar (Otomobil,Motorsiklet vb.) Kullanırız Fakat Yıllar Geçtikçe Araçlarımızda Bazı Sorunlar Meydana Gelir ve Eğer  Bu Sorunlar Zamanında Uzman Kişilerce Kontrol Edilmez ve Onarımı Yapılmazsa Çok Büyük Problemlere Yol Açabilir Eğer ki Aracınızda Herhangi Bir Sorun Varsa 30 Yıllık Deneyimi ve Bilgisi Olan Ustalarımızdan Yardım Talep Edebilirsiniz ',
                  ),
                ],
              ),
            ),
          SizedBox(height: context.cXxLargeValue),
          Container(
            width: Responsive.getWidth(context),
            height: 400,
            child: Stack(
              children: [
                // Arka plan resmi
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/bg_test4.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Theme.of(context).colorScheme.scrim.withOpacity(0.5),
                        Colors.transparent,
                      ],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: context.cXxLargeValue * 11,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: isDesktop
                            ? context.cXLargeValue * 5
                            : isTablet
                                ? context.cMediumValue * 2
                                : context.cMediumValue,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'SİZİ ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                TextSpan(
                                  text: 'DİNLİYORUZ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .surface,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.end,
                            'Her türlü çözüm önerileri sunuyoruz',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.surface,
                                ),
                          ),
                          SizedBox(height: context.cXLargeValue),
                          Text(
                            textAlign: TextAlign.end,
                            'Sizlere anında hizmet üretiyoruz. Kaliteli ekipmanımız ve işinde uzman çalışanlarımızla sizlere dört dörtlük hizmet sunuyoruz.',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.surface,
                                ),
                          ),
                          SizedBox(height: context.cLargeValue),
                          Text(
                            textAlign: TextAlign.end,
                            'Belirttiğiniz sorunları, ürün ve hizmetleri önce sizden dinliyor sonra, üstün kalite ile araç bakım hizmetlerini sizlere sunuyoruz.',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.surface,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          /*   Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/images/bg_test3.png',
                  fit: BoxFit.cover,
                  width: Responsive.getWidth(context),
                  //    height: context.cXxLargeValue * 7,
                ),
              ),
              Positioned.fill(
                child: Container(
                  color: Theme.of(context).colorScheme.scrim.withOpacity(0.1),
                ),
              ),
              SizedBox(
                width: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'SİZİ ',
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.surface,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          TextSpan(
                            text: 'DİNLİYORUZ',
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Her türlü çözüm önerileri sunuyoruz',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.surface,
                          ),
                    ),
                    SizedBox(height: context.cXxLargeValue),
                    Text(
                      'Sizlere anında hizmet üretiyoruz. Kaliteli ekipmanımız ve işinde uzman çalışanlarımızla sizlere dört dörtlük hizmet sunuyoruz.',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Theme.of(context).colorScheme.surface,
                          ),
                    ),
                    SizedBox(height: context.cLargeValue),
                    Text(
                      'Belirttiğiniz sorunları, ürün ve hizmetleri önce sizden dinliyor sonra, üstün kalite ile araç bakım hizmetlerini sizlere sunuyoruz.',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Theme.of(context).colorScheme.surface,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),*/
          /*    SizedBox(
            width: Responsive.getWidth(context),
            height: ConstantSizes.largePageHeight.value,
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    'assets/images/bg_test3.png',
                    fit: BoxFit.cover,
                    width: Responsive.getWidth(context),
                    height: context.cXxLargeValue * 7,
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    color: Theme.of(context).colorScheme.scrim.withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ),*/
        ],
      ),
    );
  }
}

class _ServiceWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String desc;
  const _ServiceWidget({
    required this.imagePath,
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: Responsive.isMobile(context)
            ? double.maxFinite
            : Responsive.isTablet(context)
                ? context.cXLargeValue * 17
                : context.cXLargeValue * 15,
        padding: context.cPaddingLarge,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: context.cBorderRadiusAllLow / 2,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: context.cBorderRadiusAllLow / 2,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: Responsive.isMobile(context)
                    ? double.maxFinite
                    : Responsive.isTablet(context)
                        ? context.cXLargeValue * 17
                        : context.cXLargeValue * 15,
              ),
            ),
            SizedBox(height: context.cMediumValue),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: context.cLowValue),
            Text(
              desc,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: context.cLowValue),
            CustomElevatedButtonWidget(
              text: StringConstants.contact_us,
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}

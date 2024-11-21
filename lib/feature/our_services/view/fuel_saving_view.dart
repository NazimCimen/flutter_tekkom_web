import 'package:flutter/material.dart';
import 'package:tekkom_web/config/routes/app_routes.dart';
import 'package:tekkom_web/core/base/base_stateless.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/core/utils/image_enum.dart';
import 'package:tekkom_web/feature/base_ui/base_layout.dart';
import 'package:tekkom_web/feature/footer/footer_widget_desktop.dart';
import 'package:tekkom_web/feature/footer/footer_widget_mobile.dart';
import 'package:tekkom_web/feature/header/header_desktop.dart';
import 'package:tekkom_web/feature/home/widgets/brand_carousel_widget.dart';
import 'package:tekkom_web/product/constants/custom_shadows.dart';
import 'package:tekkom_web/responsive/responsive.dart';

class FuelSavingView extends StatefulWidget {
  const FuelSavingView({
    super.key,
  });

  @override
  State<FuelSavingView> createState() => _CarRepairServiceViewState();
}

class _CarRepairServiceViewState extends BaseLayout<FuelSavingView> {
  _CarRepairServiceViewState();
  @override
  Widget buildBody() {
    return _BodyContent(
      scrollController: scrollController,
      sectionKeys: sectionKeys,
    );
  }

  @override
  Widget buildHeaderDesktop() {
    return HeaderDesktop(
      currentPage: AppRoutes.fuelSavingView,
      scrollController: scrollController,
    );
  }
}

class _BodyContent extends BaseStateless<void> {
  const _BodyContent({
    required this.scrollController,
    required this.sectionKeys,
  });

  final ScrollController scrollController;
  final List<GlobalKey<State<StatefulWidget>>> sectionKeys;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                key: sectionKeys.first,
              ),
              SizedBox(
                width: Responsive.getWidth(context),
                height: ConstantSizes.smallPageHeight.value / 1.3,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        ImageEnumsPng.img_services3.toPathPng,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned.fill(
                      child: Container(
                        color: Theme.of(context)
                            .colorScheme
                            .scrim
                            .withOpacity(0.4),
                      ),
                    ),
                    Align(
                      child: Padding(
                        padding: context.cPaddingMedium,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Yakıt Tasarrufu Cihazı',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge
                                  ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                    fontWeight: FontWeight.bold,
                                    shadows:
                                        CustomShadows.customLowShadow(context),
                                  ),
                            ),
                            SizedBox(height: context.cMediumValue),
                            Text(
                              textAlign: TextAlign.center,
                              'Araçlarınızın yakıt verimliliğini artırarak, daha az yakıt tüketimi ve çevre dostu bir sürüş deneyimi sağlıyoruz.',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontStyle: FontStyle.italic,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    shadows:
                                        CustomShadows.customLowShadow(context),
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: context.pageHorizontolPadding(context),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: context.cXLargeValue),
                    _title(context, 'Yakıt Tasarrufu Cihazı'),
                    _description(
                      context,
                      'Günümüzde, artan yakıt maliyetleri ve çevresel kaygılar, araç sahiplerini ve işletmeleri daha verimli çözümler aramaya itmektedir. Firmamız, yakıt tasarrufu sağlamak için geliştirdiği özel cihazlar ile hem ekonomik hem de çevresel faydalar sunmaktadır. Yakıt tasarrufu cihazlarımız, motor performansını artırarak yakıt tüketimini azaltır ve çevreye duyarlı bir sürüş deneyimi sunar.',
                    ),
                    _title(context, 'Yakıt Tasarrufu Cihazı Neden Önemlidir?'),
                    _description(
                      context,
                      'Yüksek yakıt tüketimi, hem bireysel araç sahipleri hem de ticari işletmeler için ciddi bir maliyet kaynağıdır. Yakıt tasarrufu cihazları, araçların daha verimli çalışmasını sağlayarak, uzun vadede yakıt giderlerini önemli ölçüde düşürür. Bunun yanı sıra, çevre dostu bir yaklaşım benimseyen bu cihazlar, karbon salınımını da azaltır, böylece sürdürülebilir bir gelecek için katkı sağlar.',
                    ),
                    _title(
                      context,
                      'Yakıt Tasarrufu Cihazı Kullanmanın Avantajları',
                    ),
                    _subTitle(context, 'Düşük İşletme Maliyetleri:'),
                    _description(
                      context,
                      'Azalan yakıt tüketimi, işletme giderlerinizi düşürür ve kâr marjınızı artırır.',
                    ),
                    _subTitle(context, 'Daha Az Karbon Salınımı: '),
                    _description(
                      context,
                      'Cihaz, çevre dostu bir çözüm sunarak emisyonları azaltır ve daha temiz bir çevre için katkıda bulunur.',
                    ),
                    _subTitle(
                      context,
                      'Hızlı Yatırım Getirisi:',
                    ),
                    _description(
                      context,
                      'Düşük maliyetli bir yatırımla, yakıt tasarrufu cihazı kısa süre içinde kendisini amorti eder ve uzun vadeli tasarruflar sağlar.',
                    ),
                    _title(
                      context,
                      'Sürdürülebilir Bir Gelecek İçin Yakıt Tasarrufu',
                    ),
                    _description(
                      context,
                      'Yakıt tasarrufu cihazlarımız, sadece araç sahiplerinin değil, çevrenin de dostudur. Firmamız, çevreye duyarlı, verimli ve ekonomik çözümler sunarak hem bireysel kullanıcılar hem de ticari araç işletmeleri için sürdürülebilir bir gelecek inşa etmeyi hedeflemektedir.Hemen yakıt tasarrufu cihazımızı edinin ve sürüşünüzü daha verimli hale getirin!',
                    ),
                    SizedBox(height: context.cMediumValue),
                  ],
                ),
              ),
              BrandCarousel(),
              const Responsive(
                desktop: FooterWidgetDesktop(),
                mobile: FooterWidgetMobile(),
                tablet: FooterWidgetMobile(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  SelectableText _subTitle(BuildContext context, String text) {
    return SelectableText(
      text,
      style: textTheme(context).titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            height: 1.5,
          ),
    );
  }

  SelectableText _description(BuildContext context, String text) {
    return SelectableText(
      text,
      style:
          textTheme(context).bodyLarge?.copyWith(fontStyle: FontStyle.normal),
    );
  }

  SelectableText _title(BuildContext context, String text) {
    return SelectableText(
      text,
      style: textTheme(context).headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
            height: 2,
          ),
    );
  }
}

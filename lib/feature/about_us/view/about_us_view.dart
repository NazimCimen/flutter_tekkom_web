import 'package:flutter/material.dart';
import 'package:tekkom_web/config/routes/app_routes.dart';
import 'package:tekkom_web/core/base/base_stateless.dart';
import 'package:tekkom_web/core/utils/image_enum.dart';
import 'package:tekkom_web/feature/base_ui/base_layout.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/feature/footer/footer_widget_desktop.dart';
import 'package:tekkom_web/feature/footer/footer_widget_mobile.dart';
import 'package:tekkom_web/feature/header/header_desktop.dart';
import 'package:tekkom_web/feature/home/widgets/brand_carousel_widget.dart';
import 'package:tekkom_web/feature/our_services/widgets/our_services_widget.dart';
import 'package:tekkom_web/product/constants/custom_shadows.dart';
import 'package:tekkom_web/responsive/responsive.dart';

class AboutUsView extends StatefulWidget {
  const AboutUsView({super.key});

  @override
  State<AboutUsView> createState() => _OurServicesViewState();
}

class _OurServicesViewState extends BaseLayout<AboutUsView> {
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
      currentPage: AppRoutes.aboutUsView,
      scrollController: scrollCont,
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
                        ImageEnumsPng.bg_about.toPathPng,
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
                              'HAKKIMIZDA',
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
                            Text(
                              textAlign: TextAlign.center,
                              'Kaliteli hizmet anlayışıyla araç ve iş makinelerinize değer katıyor, her türlü bakım ve tamir işlemini titizlikle gerçekleştiriyoruz.',
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
              SizedBox(height: context.cXxLargeValue),
              Padding(
                padding: context.pageHorizontolPadding(context),
                child: Column(
                  children: [
                    _title(context, 'HAKKIMIZDA/BİZ KİMİZ?'),
                    SizedBox(height: context.cMediumValue),
                    _description(context,
                        'Firmamız, oto tamir ve bakım hizmetlerinde güçlü bir deneyime sahip, her tür aracın bakımını ve onarımını gerçekleştirebilen bir işletmedir. Araçlarınızın uzun ömürlü olabilmesi, güvenli ve verimli bir şekilde çalışabilmesi için en iyi bakım çözümlerini sunuyoruz.Sizlere araç bakımında sadece rutin servis hizmeti değil, aynı zamanda motor verimliliğini artırmaya yönelik yakıt tasarruf cihazları da sunuyoruz. Bu cihazlar, aracınızın yakıt tüketimini optimize ederek, hem çevre dostu bir sürüş sağlar hem de uzun vadede ekonomik faydalar sunar.Sürekli gelişmeye ve yenilikçi çözümler üretmeye odaklanarak, her zaman müşteri memnuniyetini ön planda tutuyoruz. Yola güvenle çıkabilmeniz için aracınızın bakımını doğru bir şekilde yaparak, performansını en üst seviyeye çıkarıyoruz.Araç bakımınızı yüksek kaliteli malzemelerle gerçekleştiriyor, herhangi bir arıza durumunda hızlı ve etkili çözümler sunuyoruz. Aracınızın tüm ihtiyaçlarına tek noktadan, güvenilir bir şekilde cevap veriyoruz.Her zaman güvenli ve konforlu bir sürüş deneyimi için, bakım ve onarım ihtiyaçlarınızı bize emanet edebilirsiniz.'),
                  ],
                ),
              ),
              SizedBox(height: context.cXLargeValue),
              OurServicesSection(
                scrollController: scrollController,
              ),
              SizedBox(height: context.cLargeValue),
              BrandCarousel(),
              SizedBox(height: context.cXLargeValue),
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

  SelectableText _description(BuildContext context, String text) {
    return SelectableText(
      text,
      style: textTheme(context)
          .bodyLarge
          ?.copyWith(fontStyle: FontStyle.normal, height: 2),
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

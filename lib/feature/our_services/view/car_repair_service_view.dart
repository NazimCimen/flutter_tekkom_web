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
import 'package:tekkom_web/product/widgets/section_background_widget.dart';
import 'package:tekkom_web/responsive/responsive.dart';

class CarRepairServiceView extends StatefulWidget {
  const CarRepairServiceView({
    super.key,
  });

  @override
  State<CarRepairServiceView> createState() => _CarRepairServiceViewState();
}

class _CarRepairServiceViewState extends BaseLayout<CarRepairServiceView> {
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
      currentPage: AppRoutes.carReapierView,
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
              SectionBackgroundWidget(
                title: 'Araç Tamir ve Bakımı',
                desc:
                    'Aracınızda oluşan mekanik veya elektriksel arızaların hızlı ve kaliteli bir şekilde onarılmasını sağlarız.',
                bgImagePath: ImageEnumsPng.img_services1.toPathPng,
              ),
              const _Body(),
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
}

class _Body extends BaseStateless<void> {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.pageHorizontolPadding(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: context.cXLargeValue),
          _title(context, 'Araç Bakım ve Tamir Hizmetleri'),
          _description(
            context,
            'Aracınız, günlük yaşamın vazgeçilmez bir parçası. Ancak, güvenli ve konforlu bir sürüş deneyimi için düzenli bakım ve tamir hizmetleri olmazsa olmazdır. Aracınızın ihtiyaç duyduğu tüm hizmetleri eksiksiz bir şekilde sunarak, hem performansını artırıyor hem de sizi olası arızalara karşı koruyoruz.',
          ),
          _title(context, 'Neden Araç Bakımı ve Tamiri Önemlidir?'),
          _description(
            context,
            'Aracınızın düzenli olarak kontrol edilmesi ve gerekli işlemlerin zamanında yapılması, sadece aracınızın ömrünü uzatmakla kalmaz, aynı zamanda sizi beklenmedik maliyetlerden kurtarır.\n- Yakıt Tasarrufu: İyi bakılmış bir araç, yakıtı daha verimli kullanır ve yakıt maliyetlerini düşürür.\n- Güvenli Sürüş: Fren, direksiyon ve lastik gibi kritik parçaların kontrolü, sizi ve sevdiklerinizi trafikte güvende tutar.\n- Arıza Riskini Azaltma: Periyodik kontroller, potansiyel sorunların önceden tespit edilmesine olanak tanır.',
          ),
          _title(context, 'Neler Yapıyoruz?'),
          _description(
            context,
            'Aracınızın markası veya modeli ne olursa olsun, ihtiyaç duyduğu tüm bakım ve tamir işlemleri için doğru yerdesiniz.',
          ),
          _subTitle(context, 'Periyodik Bakım:'),
          _description(
            context,
            'Aracınızın düzenli bakımı, sorunsuz bir sürüş için temel bir gerekliliktir. Yağ ve filtre değişimi, sıvı kontrolleri, fren ve lastik kontrolleri gibi rutin işlemleri özenle gerçekleştiriyoruz.',
          ),
          _subTitle(context, 'Mekanik Tamir:'),
          _description(
            context,
            'Motorda, fren sisteminde veya diğer mekanik parçalarda oluşabilecek arızaları tespit ediyor ve hızlı bir şekilde onarıyoruz.',
          ),
          _subTitle(
            context,
            'Elektrik ve Elektronik Sistem Onarımı:',
          ),
          _description(
            context,
            'Aracınızın elektrik aksamında oluşabilecek sorunları tespit ediyor ve gerekli müdahaleleri yapıyoruz. Farlar, göstergeler, akü ve diğer elektrikli parçaların kontrolü ve onarımı hizmetlerimiz arasında.',
          ),
          _subTitle(context, 'Detaylı Kontroller ve Arıza Tespiti:'),
          _description(
            context,
            'Modern cihazlarla yaptığımız detaylı arıza tespit işlemleri, aracınızın hangi noktalarda bakım veya tamire ihtiyaç duyduğunu hızlı ve doğru bir şekilde belirlememizi sağlar.',
          ),
          SizedBox(height: context.cMediumValue),
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

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

class RepairMachineryView extends StatefulWidget {
  const RepairMachineryView({
    super.key,
  });

  @override
  State<RepairMachineryView> createState() => _CarRepairServiceViewState();
}

class _CarRepairServiceViewState extends BaseLayout<RepairMachineryView> {
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
      currentPage: AppRoutes.repairMachineryView,
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
                title: 'İş Makineları Tamir ve Bakımı',
                desc:
                    'İş makinelerinizin verimli çalışmasını sağlamak için bakım ve tamir hizmeti sunar, uzun ömürlü ve güvenli kullanım garantileriz.',
                bgImagePath: ImageEnumsPng.img_services2.toPathPng,
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
          _title(context, 'İş Makinaları Tamir ve Bakımı'),
          _description(
            context,
            'İş makineleri, zorlu koşullarda ve yoğun kullanımda çalışan, yüksek performans gerektiren araçlardır. Bu makinelerin düzgün çalışması, sadece işlerin zamanında ve verimli bir şekilde yapılmasını sağlamakla kalmaz, aynı zamanda güvenlik açısından da kritik öneme sahiptir. İş makinelerinin düzenli bakımı, uzun ömürlü ve kesintisiz çalışma için şarttır.',
          ),
          _title(context, 'İş Makinaları Bakımı Neden Önemlidir?'),
          _description(
            context,
            'İş makineleri, inşaat, madencilik, tarım gibi sektörlerde hayati rol oynar. Bu makinelerin zamanında bakımı, arızaların önlenmesi, büyük tamir maliyetlerinin engellenmesi ve makinelerin ömrünün uzatılması için gereklidir. Düzenli bakım, makinelerin performansını artırır ve beklenmedik arızaların önüne geçer.',
          ),
          _title(context, 'Bakım ve Onarım Süreçleri'),
          _description(
            context,
            'İş makinelerinin bakımı, sadece motor yağı değişimi gibi temel işlemlerle sınırlı değildir. Her makine, kullanım alanına ve modeline göre farklı bakım ihtiyaçları gerektirir. Arızaların erken tespiti, iş makinelerinin yüksek performansla çalışmaya devam etmesini sağlar. Bakım sırasında şu işlemler yapılabilir:\n-Yağ değişimi ve filtrelerin kontrolü: Motor yağı ve filtreler, makinelerin sağlıklı çalışabilmesi için düzenli olarak değiştirilmelidir. \n- Hidrolik sistem bakımı: Hidrolik sistemlerin bakımı, iş makinelerinin güç aktarımını etkileyen kritik bir faktördür.\n- Elektrik ve akü kontrolü: Elektriksel bileşenler ve aküler düzenli olarak kontrol edilmeli, arızalar erken tespit edilmelidir.\n- Fren ve süspansiyon sistemi bakımı: Makinelerin güvenliği için fren sistemlerinin düzenli olarak kontrol edilmesi gerekmektedir.',
          ),
          _title(context, 'Arıza Onarımları'),
          _description(
            context,
            'İş makinelerindeki arızalar, büyük kayıplara yol açabilir. Bu nedenle, meydana gelen her türlü arızanın hızlı ve doğru bir şekilde tespit edilmesi ve onarılması çok önemlidir. Arıza onarım süreci, makinelerin eski verimliliğine kavuşturulmasını sağlar ve işlerin aksamadan devam etmesini temin eder.Yapılan onarımlar şunları içerebilir:',
          ),
          _subTitle(context, 'Periyodik Bakım:'),
          _description(
            context,
            'Aracınızın düzenli bakımı, sorunsuz bir sürüş için temel bir gerekliliktir. Yağ ve filtre değişimi, sıvı kontrolleri, fren ve lastik kontrolleri gibi rutin işlemleri özenle gerçekleştiriyoruz.',
          ),
          _subTitle(context, 'Motor onarımı: '),
          _description(
            context,
            'Motor arızaları genellikle ciddi sonuçlar doğurur. Motorun parçalarının onarılması veya değiştirilmesi gerekebilir.',
          ),
          _subTitle(
            context,
            'Hidrolik sistem onarımı: ',
          ),
          _description(
            context,
            'Hidrolik sistemde meydana gelen arızalar, makinelerin çalışmasını engelleyebilir. Bu tür onarımlar zamanında yapılmalıdır.',
          ),
          _subTitle(
            context,
            'Elektrik ve elektronik sistem onarımı:',
          ),
          _description(
            context,
            'Elektriksel arızalar da makinelerin işlevselliğini bozabilir. Bu tip arızaların tespiti ve onarımı hızla gerçekleştirilmelidir.',
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

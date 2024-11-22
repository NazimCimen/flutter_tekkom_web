import 'package:flutter/material.dart';
import 'package:tekkom_web/config/routes/app_routes.dart';
import 'package:tekkom_web/core/utils/image_enum.dart';
import 'package:tekkom_web/feature/base_ui/base_layout.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/feature/footer/footer_widget_desktop.dart';
import 'package:tekkom_web/feature/footer/footer_widget_mobile.dart';
import 'package:tekkom_web/feature/header/header_desktop.dart';
import 'package:tekkom_web/feature/our_services/widgets/our_services_widget.dart';
import 'package:tekkom_web/product/widgets/section_background_widget.dart';
import 'package:tekkom_web/responsive/responsive.dart';

class OurServicesView extends StatefulWidget {
  const OurServicesView({super.key});

  @override
  State<OurServicesView> createState() => _OurServicesViewState();
}

class _OurServicesViewState extends BaseLayout<OurServicesView> {
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
      currentPage: AppRoutes.ourServicesView,
      scrollController: scrollCont,
    );
  }
}

class _BodyContent extends StatelessWidget {
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
              SectionBackgroundWidget(
                title: 'HİZMETLERİMİZ',
                desc:
                    'Araç ve iş makineleri tamirinde uzman ekibimizle güvenilir hizmet sunarken, \nyakıt tasarruf cihazlarımızla da verimliliğinizi artırıyoruz.',
                bgImagePath: ImageEnumsPng.bg_services.toPathPng,
              ),
              OurServicesSection(
                scrollController: scrollController,
              ),
              SizedBox(height: context.cXxLargeValue),
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

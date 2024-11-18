import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/feature/header/header_desktop.dart';
import 'package:tekkom_web/feature/header/header_drawer.dart';
import 'package:tekkom_web/feature/header/header_mobile.dart';
import 'package:tekkom_web/feature/footer/footer_widget_desktop.dart';
import 'package:tekkom_web/feature/home/widgets/brand_carousel_widget.dart';
import 'package:tekkom_web/feature/footer/footer_widget_mobile.dart';
import 'package:tekkom_web/feature/home/widgets/main_page.dart';
import 'package:tekkom_web/feature/home/mixin/home_view_mixin.dart';
import 'package:tekkom_web/feature/our_services/widgets/our_services_widget.dart';
import 'package:tekkom_web/responsive/responsive.dart';
part 'home_sub_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);

    return Scaffold(
      key: scaffoldKey,
      drawer: isMobile ? HeaderDrawer(sectionNavButton: scrollToSection) : null,
      floatingActionButton: !isHeaderTransparent
          ? _FloatActionButton(
              floatButtonPressed: () {
                scrollToSection(0);
              },
            )
          : null,
      body: SafeArea(
        child: Stack(
          children: [
            _BodyContent(
              scrollController: scrollController,
              sectionKeys: sectionKeys,
            ),
            if (Responsive.isDesktop(context))
              HeaderDesktop(
                isHeaderTransparent: isHeaderTransparent,
              ),
            if (!Responsive.isDesktop(context))
              HeaderMobile(
                scaffoldKey: scaffoldKey,
                isHeaderTransparent: isHeaderTransparent,
              ),
          ],
        ),
      ),
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
              const MainPage(),
              const OurServicesSection(),
              SizedBox(height: context.cXxLargeValue),
              BrandCarousel(),
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

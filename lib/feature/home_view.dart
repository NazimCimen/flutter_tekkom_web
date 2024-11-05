import 'package:flutter/material.dart';
import 'package:tekkom_web/feature/about_us_section/about_us_section.dart';
import 'package:tekkom_web/feature/about_us_section/about_us_section_desktop.dart';
import 'package:tekkom_web/feature/contact_us_section/contact_us_section.dart';
import 'package:tekkom_web/feature/header/header_desktop.dart';
import 'package:tekkom_web/feature/header/header_drawer.dart';
import 'package:tekkom_web/feature/header/header_mobile.dart';
import 'package:tekkom_web/feature/home_section/home_section.dart';
import 'package:tekkom_web/feature/home_view_mixin.dart';
import 'package:tekkom_web/feature/our_services_section/our_services_view.dart';
import 'package:tekkom_web/responsive/responsive.dart';

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
      body: SafeArea(
        child: Stack(
          children: [
            _BodyContent(
              scrollController: scrollController,
              sectionKeys: sectionKeys,
              isMobile: isMobile,
              homeSectionButton: () {
                scrollToSection(3);
              },
            ),
            if (Responsive.isDesktop(context))
              HeaderDesktop(
                sectionNavButton: scrollToSection,
                isHeaderTransparent: isHeaderTransparent,
              ),
            if (!Responsive.isDesktop(context))
              HeaderMobile(
                sectionNavButton: scrollToSection,
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
    required this.isMobile,
    required this.homeSectionButton,
  });

  final ScrollController scrollController;
  final List<GlobalKey<State<StatefulWidget>>> sectionKeys;
  final bool isMobile;
  final VoidCallback homeSectionButton;

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
              HomeSection(
                isMobile: isMobile,
                homeSectionButton: homeSectionButton,
              ),
              OurServicesSection(key: sectionKeys[1]),
              Responsive(
                mobile: AboutUsSection(key: sectionKeys[2]),
                tablet: AboutUsSection(key: sectionKeys[2]),
                desktop: AboutUsSectionDesktop(key: sectionKeys[2]),
              ),
              ContactUsSection(
                key: sectionKeys[3],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

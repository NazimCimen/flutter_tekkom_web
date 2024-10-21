import 'package:flutter/material.dart';
import 'package:tekkom_web/feature/header/header_desktop.dart';
import 'package:tekkom_web/feature/header/header_drawer.dart';
import 'package:tekkom_web/feature/header/header_mobile.dart';
import 'package:tekkom_web/feature/home_view_mixin.dart';
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
            if (!isMobile)
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: HeaderDesktop(
                  sectionNavButton: scrollToSection,
                  isHeaderTransparent: isHeaderTransparent,
                ),
              ),
            if (isMobile)
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
              /*  HomeSection(
                isMobile: isMobile,
                homeSectionButton: homeSectionButton,
              ),
              Responsive(
                mobile: TexttileSection(key: sectionKeys[1]),
                tablet: TexttileSection(key: sectionKeys[1]),
                desktop: TexttileSectionDesktop(key: sectionKeys[1]),
              ),
              Responsive(
                mobile: MiningSection(key: sectionKeys[2]),
                tablet: MiningSection(key: sectionKeys[2]),
                desktop: MiningSectionDesktop(key: sectionKeys[2]),
              ),
              FooterSection(
                key: sectionKeys[3],
              ),*/
            ],
          ),
        ],
      ),
    );
  }
}

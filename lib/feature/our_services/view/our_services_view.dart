import 'package:flutter/material.dart';
import 'package:tekkom_web/feature/header/header_desktop.dart';
import 'package:tekkom_web/feature/header/header_drawer.dart';
import 'package:tekkom_web/feature/header/header_mobile.dart';
import 'package:tekkom_web/feature/our_services/mixin/our_services_mixin.dart';
import 'package:tekkom_web/responsive/responsive.dart';

class OurServicesView extends StatefulWidget {
  const OurServicesView({super.key});
  @override
  State<OurServicesView> createState() => _HomeViewState();
}

class _HomeViewState extends State<OurServicesView> with OurServicesMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Responsive.isMobile(context)
          ? HeaderDrawer(sectionNavButton: scrollToSection)
          : null,
      /* floatingActionButton: !isHeaderTransparent
          ? _FloatActionButton(
              floatButtonPressed: () {
                scrollToSection(0);
              },
            )
          : null,*/
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Container(color: Colors.red, child: Text('olacak')),
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

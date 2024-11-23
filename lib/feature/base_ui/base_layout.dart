import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tekkom_web/core/base/base_stateless.dart';
import 'package:tekkom_web/feature/base_ui/base_mixin.dart';
import 'package:tekkom_web/core/base/base_stateful.dart';
import 'package:tekkom_web/feature/footer/footer_widget_desktop.dart';
import 'package:tekkom_web/feature/footer/footer_widget_mobile.dart';
import 'package:tekkom_web/feature/header/provider/header_provider.dart';
import 'package:tekkom_web/feature/header/header_drawer.dart';
import 'package:tekkom_web/feature/header/header_mobile.dart';
import 'package:tekkom_web/responsive/responsive.dart';

abstract class BaseLayout<T extends StatefulWidget>
    extends BaseStateful<T, ChangeNotifier> with BaseScrollMixin<T> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: !Responsive.isDesktop(context)
          ? HeaderDrawer(
              sectionNavButton: scrollToSection,
              scrollController: scrollController,
            )
          : null,
      floatingActionButton: !context.watch<HeaderProvider>().isHeaderTransparent
          ? _FloatActionButton(
              floatButtonPressed: () {
                scrollToSection(0);
              },
            )
          : null,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: [
                  buildBody(),
                  Responsive(
                    desktop: FooterWidgetDesktop(
                      scrollController: scrollController,
                    ),
                    mobile: FooterWidgetMobile(
                      scrollController: scrollController,
                    ),
                    tablet: FooterWidgetMobile(
                      scrollController: scrollController,
                    ),
                  ),
                ],
              ),
            ),
            if (Responsive.isDesktop(context)) buildHeaderDesktop(),
            if (!Responsive.isDesktop(context)) const HeaderMobile(),
          ],
        ),
      ),
    );
  }

  Widget buildBody();
  Widget buildHeaderDesktop();
}

class _FloatActionButton extends BaseStateless<void> {
  const _FloatActionButton({
    required this.floatButtonPressed,
  });
  final VoidCallback floatButtonPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: colorScheme(context).secondaryContainer,
      onPressed: floatButtonPressed,
      child: const FaIcon(FontAwesomeIcons.arrowUp),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';
import 'package:tekkom_web/config/routes/app_routes.dart';
import 'package:tekkom_web/core/base/base_stateless.dart';
import 'package:tekkom_web/core/utils/image_enum.dart';
import 'package:tekkom_web/feature/base_ui/base_layout.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/feature/header/header_desktop.dart';
import 'package:tekkom_web/feature/our_services/widgets/our_services_widget.dart';
import 'package:tekkom_web/product/widgets/section_background_widget.dart';

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
    return Column(
      children: [
        SizedBox(
          key: sectionKeys.first,
        ),
        SectionBackgroundWidget(
          title: StringConstants.our_services,
          desc: StringConstants.our_services_description,
          bgImagePath: ImageEnumsPng.bg_services.toPathPng,
        ),
        OurServicesSection(
          scrollController: scrollController,
        ),
        SizedBox(height: context.cXxLargeValue),
      ],
    );
  }
}

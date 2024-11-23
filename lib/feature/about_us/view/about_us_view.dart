import 'package:flutter/material.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';
import 'package:tekkom_web/config/routes/app_routes.dart';
import 'package:tekkom_web/core/base/base_stateless.dart';
import 'package:tekkom_web/core/utils/image_enum.dart';
import 'package:tekkom_web/feature/base_ui/base_layout.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/feature/header/header_desktop.dart';
import 'package:tekkom_web/feature/home/widgets/brand_carousel_widget.dart';
import 'package:tekkom_web/feature/our_services/widgets/our_services_widget.dart';
import 'package:tekkom_web/product/widgets/section_background_widget.dart';

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
          bgImagePath: ImageEnumsPng.bg_about.toPathPng,
          title: StringConstants.about_us,
          desc: StringConstants.about_us_description,
        ),
        SizedBox(height: context.cXxLargeValue),
        Padding(
          padding: context.pageHorizontolPadding(context),
          child: Column(
            children: [
              _title(context, StringConstants.about_us_title),
              SizedBox(height: context.cMediumValue),
              _description(
                context,
                StringConstants.about_us_content,
              ),
            ],
          ),
        ),
        SizedBox(height: context.cXLargeValue),
        OurServicesSection(
          scrollController: scrollController,
        ),
        SizedBox(height: context.cLargeValue),
        const BrandCarousel(),
        SizedBox(height: context.cXLargeValue),
      ],
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

import 'package:flutter/material.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';
import 'package:tekkom_web/config/routes/app_routes.dart';
import 'package:tekkom_web/core/base/base_stateless.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/core/utils/image_enum.dart';
import 'package:tekkom_web/feature/base_ui/base_layout.dart';
import 'package:tekkom_web/feature/header/header_desktop.dart';
import 'package:tekkom_web/feature/home/widgets/brand_carousel_widget.dart';
import 'package:tekkom_web/product/widgets/section_background_widget.dart';

class FuelSavingView extends StatefulWidget {
  const FuelSavingView({
    super.key,
  });

  @override
  State<FuelSavingView> createState() => _CarRepairServiceViewState();
}

class _CarRepairServiceViewState extends BaseLayout<FuelSavingView> {
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
      currentPage: AppRoutes.fuelSavingView,
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          key: sectionKeys.first,
        ),
        SectionBackgroundWidget(
          title: StringConstants.our_services3,
          desc: StringConstants.our_services3_sub_desc,
          bgImagePath: ImageEnumsPng.img_services3.toPathPng,
        ),
        const _Body(),
        const BrandCarousel(),
      ],
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
          _title(
            context,
            StringConstants.our_services3,
          ),
          _description(
            context,
            StringConstants.our_services3_desc,
          ),
          _title(
            context,
            StringConstants.our_services3_subtitle1,
          ),
          _description(
            context,
            StringConstants.our_services3_subtitle2_desc1,
          ),
          _title(
            context,
            StringConstants.our_services3_subtitle2,
          ),
          _subTitle(
            context,
            StringConstants.our_services3_subtitle3,
          ),
          _description(
            context,
            StringConstants.our_services3_subtitle2_desc3,
          ),
          _subTitle(
            context,
            StringConstants.our_services3_subtitle4,
          ),
          _description(
            context,
            StringConstants.our_services3_subtitle2_desc4,
          ),
          _subTitle(
            context,
            StringConstants.our_services3_subtitle5,
          ),
          _description(
            context,
            StringConstants.our_services3_subtitle2_desc5,
          ),
          _title(
            context,
            StringConstants.our_services3_subtitle6,
          ),
          _description(
            context,
            StringConstants.our_services3_subtitle2_desc6,
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

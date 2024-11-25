import 'package:flutter/material.dart';
import 'package:tekkom_web/config/routes/app_routes.dart';
import 'package:tekkom_web/feature/base_ui/base_layout.dart';
import 'package:tekkom_web/feature/header/header_desktop.dart';
import 'package:tekkom_web/feature/home/widgets/brand_carousel_widget.dart';
import 'package:tekkom_web/feature/home/widgets/description_with_image_widget.dart';
import 'package:tekkom_web/feature/home/widgets/main_page.dart';
import 'package:tekkom_web/feature/our_services/widgets/our_services_widget.dart';
import 'package:tekkom_web/product/constants/app_constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends BaseLayout<HomeView> {
  _HomeViewState();

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
      currentPage: AppRoutes.initialRoute,
      scrollController: scrollController,
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
    return Column(
      children: [
        SizedBox(
          key: sectionKeys.first,
        ),
        const MainPage(),
        OurServicesSection(
          scrollController: scrollController,
        ),
        const DescriptionWithImageWidget(),
        BrandCarousel(
          brandPaths: AppConstants.brandLogos,
        ),
      ],
    );
  }
}

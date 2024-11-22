import 'package:flutter/material.dart';
import 'package:tekkom_web/config/routes/app_routes.dart';
import 'package:tekkom_web/config/routes/navigator_service.dart';
import 'package:tekkom_web/core/base/base_stateful.dart';
import 'package:tekkom_web/core/base/base_stateless.dart';
import 'package:tekkom_web/core/size/app_border_radius_extensions.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/core/utils/image_enum.dart';
import 'package:tekkom_web/product/widgets/section_title_text_widget.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';
import 'package:tekkom_web/product/widgets/custom_elevated_button.dart';
import 'package:tekkom_web/responsive/responsive.dart';

class OurServicesSection extends BaseStateless<void> {
  final ScrollController scrollController;

  const OurServicesSection({
    required this.scrollController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return SizedBox(
      width: Responsive.getWidth(context),
      child: Column(
        children: [
          SizedBox(height: context.cXxLargeValue * 1.5),
          CustomTitleTextLargeWidget(
            text: StringConstants.our_services_small,
          ),
          SizedBox(height: context.cLowValue),
          SelectableText(
            textAlign: TextAlign.center,
            'Araç ve iş makineleri tamirinde uzman ekibimizle güvenilir hizmet sunarken, \nyakıt tasarruf cihazlarımızla da verimliliğinizi artırıyoruz.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onTertiary,
                  fontStyle: FontStyle.italic,
                ),
          ),
          SizedBox(height: context.cXLargeValue),
          if (isDesktop)
            Padding(
              padding: context.pageHorizontolPadding(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: _HoverContainer(
                      imagePath: ImageEnumsPng.img_services1.toPathPng,
                      title: 'Araç Tamir Ve Bakımı',
                      scrollController: scrollController,
                      route: AppRoutes.carReapierView,
                    ),
                  ),
                  Flexible(
                    child: _HoverContainer(
                      imagePath: ImageEnumsPng.img_services2.toPathPng,
                      title: 'İş Makineleri Tamir Ve Bakımı',
                      scrollController: scrollController,
                      route: AppRoutes.repairMachineryView,
                    ),
                  ),
                  Flexible(
                    child: _HoverContainer(
                      imagePath: ImageEnumsPng.img_services3.toPathPng,
                      scrollController: scrollController,
                      title: 'Yakıt Tasarruf Cihazı',
                      route: AppRoutes.fuelSavingView,
                    ),
                  ),
                ],
              ),
            ),
          if (!isDesktop)
            Padding(
              padding: context.cPaddingLarge,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _HoverContainer(
                    imagePath: ImageEnumsPng.img_services1.toPathPng,
                    title: 'Araç Tamir Ve Bakımı',
                    scrollController: scrollController,
                    route: AppRoutes.carReapierView,
                  ),
                  SizedBox(height: context.cLargeValue),
                  _HoverContainer(
                    imagePath: ImageEnumsPng.img_services2.toPathPng,
                    title: 'İş Makineleri Tamir Ve Bakımı',
                    scrollController: scrollController,
                    route: AppRoutes.repairMachineryView,
                  ),
                  SizedBox(height: context.cLargeValue),
                  _HoverContainer(
                    imagePath: ImageEnumsPng.img_services3.toPathPng,
                    title: 'Yakıt Tasarruf Cihazı',
                    scrollController: scrollController,
                    route: AppRoutes.fuelSavingView,
                  ),
                ],
              ),
            ),
          SizedBox(height: context.cXLargeValue),
          Padding(
            padding: context.cPaddingMedium,
            child: SelectableText(
              textAlign: TextAlign.center,
              'Hizmetlerimizle işlerinizi kolaylaştırmak ve güvenilir çözümler sunmak için buradayız. '
              'Daha fazla bilgi için bizimle iletişime geçebilirsiniz.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontStyle: FontStyle.italic,
                    color: Theme.of(context).colorScheme.onTertiary,
                  ),
            ),
          ),
          SizedBox(height: context.cLowValue),
          CustomElevatedButtonWidget(
            isLoading: false,
            text: 'BİZE ULAŞIN',
            onPress: () {
              NavigatorService.pushNamedAndRemoveUntil(AppRoutes.contactView);
            },
          ),
          SizedBox(height: context.cXxLargeValue * 1.5),
        ],
      ),
    );
  }
}

class _HoverContainer extends StatefulWidget {
  const _HoverContainer({
    required this.scrollController,
    required this.imagePath,
    required this.title,
    required this.route,
  });
  final String imagePath;
  final String title;
  final ScrollController scrollController;
  final String route;

  @override
  State<_HoverContainer> createState() => _HoverContainerState();
}

class _HoverContainerState
    extends BaseStateful<_HoverContainer, ChangeNotifier> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.scrollController.jumpTo(0);
        NavigatorService.pushNamed(
          widget.route,
        );
      },
      child: MouseRegion(
        onEnter: (event) {
          onEnter(0);
        },
        onExit: (event) {
          onExit(0);
        },
        child: Stack(
          children: [
            Container(
              width: context.cXLargeValue * 10,
              height: context.cXLargeValue * 8,
              decoration: BoxDecoration(
                borderRadius: context.cBorderRadiusAllLow,
                image: DecorationImage(
                  image: AssetImage(widget.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: context.cLowValue),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      colorScheme.scrim.withOpacity(0.7),
                      Colors.transparent,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.vertical(
                    top: context.cBorderRadiusAllLow.topLeft,
                  ),
                ),
                child: Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.surface,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            if (isHovered)
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    color: colorScheme.scrim.withOpacity(0.6),
                    borderRadius: context.cBorderRadiusAllLow,
                  ),
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colorScheme.primary,
                        shape: ContinuousRectangleBorder(
                          borderRadius: context.cBorderRadiusAllLow,
                        ),
                      ),
                      onPressed: () {
                        widget.scrollController.jumpTo(0);
                        NavigatorService.pushNamed(
                          widget.route,
                        );
                      },
                      child: Text(
                        'İncele',
                        style: textTheme.bodyMedium
                            ?.copyWith(color: colorScheme.surface),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

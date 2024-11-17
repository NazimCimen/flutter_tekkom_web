import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/utils/image_enum.dart';
import 'package:tekkom_web/feature/request_call_back/request_call_back_view.dart';
import 'package:tekkom_web/product/constants/some_constants.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';
import 'package:tekkom_web/responsive/responsive.dart';

class HomeSection extends StatelessWidget {
  final VoidCallback homeSectionButton;
  const HomeSection({
    required this.isMobile,
    required this.homeSectionButton,
    super.key,
  });

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    final isMobile = Responsive.isMobile(context);

    return SizedBox(
      width: Responsive.getWidth(context),
      height: ConstantSizes.largePageHeight.value,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              ImageEnumsPng.bg_home.toPathPng,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Theme.of(context).colorScheme.scrim.withOpacity(0.6),
            ),
          ),
          Padding(
            padding: SomeConstants.pageHorizontolPadding(context),
            child: !isDesktop
                ? Column(
                    children: [
                      Flexible(
                        child: FadeInUp(
                          child: _HomeInfoWidget(
                            isMobile: isMobile,
                            isDesktop: isDesktop,
                            homeSectionButton: homeSectionButton,
                          ),
                        ),
                      ),
                      Expanded(
                        child: FadeInUp(child: const RequestCallbackForm()),
                      ),
                    ],
                  )
                : Row(
                    children: [
                      Flexible(
                        flex: 60,
                        child: FadeInLeft(
                          child: _HomeInfoWidget(
                            isMobile: isMobile,
                            isDesktop: isDesktop,
                            homeSectionButton: homeSectionButton,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 40,
                        child: FadeInRight(child: const RequestCallbackForm()),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}

class _HomeInfoWidget extends StatelessWidget {
  const _HomeInfoWidget({
    required this.isMobile,
    required this.isDesktop,
    required this.homeSectionButton,
  });

  final bool isMobile;
  final bool isDesktop;
  final VoidCallback homeSectionButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: context.cLargeValue * 4),
        Align(
          child: Image.asset(
            ImageEnumsPng.logo.toPathPng,
            width: !isMobile ? 200 : 170,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: ConstantSizes.xLarge.value * 2),
        Text(
          textAlign: TextAlign.center,
          StringConstants.appName,
          style: isDesktop
              ? Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: Theme.of(context).colorScheme.surface,
                    fontWeight: FontWeight.bold,
                  )
              : Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colorScheme.surface,
                    fontWeight: FontWeight.bold,
                  ),
        ),
        SizedBox(
          height: ConstantSizes.large.value,
        ),
        if (!isDesktop)
          Flexible(
            child: Text(
              StringConstants.main_screen_description.tr(),
              maxLines: 4,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    overflow: TextOverflow.ellipsis,
                    color: Theme.of(context).colorScheme.surface,
                  ),
            ),
          ),
        if (isDesktop)
          Flexible(
            child: Text(
              StringConstants.main_screen_description,
              maxLines: 15,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    overflow: TextOverflow.ellipsis,
                    color: Theme.of(context).colorScheme.surface,
                  ),
            ),
          ),
        SizedBox(height: ConstantSizes.xLarge.value),
      ],
    );
  }
}

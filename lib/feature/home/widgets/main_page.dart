import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/core/utils/image_enum.dart';
import 'package:tekkom_web/feature/contact/widget/request_call_back_widget.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';
import 'package:tekkom_web/responsive/responsive.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

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
              'assets/images/bg_test9.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Theme.of(context).colorScheme.scrim.withOpacity(0.5),
            ),
          ),
          Padding(
            padding: context.pageHorizontolPadding(context),
            child: !isDesktop
                ? Column(
                    children: [
                      Flexible(
                        child: FadeInUp(
                          child: _HomeInfoWidget(
                            isMobile: isMobile,
                            isDesktop: isDesktop,
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
  });

  final bool isMobile;
  final bool isDesktop;

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
            width: isMobile
                ? context.cXxLargeValue * 5
                : isDesktop
                    ? context.cXxLargeValue * 7
                    : context.cXxLargeValue * 4,
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
        SizedBox(height: context.cXxLargeValue),
      ],
    );
  }
}

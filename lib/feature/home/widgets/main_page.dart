import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:tekkom_web/core/base/base_stateless.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/core/utils/image_enum.dart';
import 'package:tekkom_web/feature/contact/widget/contact_form_widget.dart';
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
      height: isDesktop
          ? ConstantSizes.largePageHeight.value + 100
          : isMobile
              ? ConstantSizes.largePageHeight.value + 150
              : ConstantSizes.largePageHeight.value + 120,
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
              color: Theme.of(context).colorScheme.scrim.withOpacity(0.5),
            ),
          ),
          Padding(
            padding: context.pageHorizontolPadding(context),
            child: !isDesktop
                ? Column(
                    children: [
                      SizedBox(height: context.cMediumValue * 6),
                      FadeInUp(
                        child: const _HomeInfoWidget(),
                      ),
                      SizedBox(height: context.cMediumValue),
                      FadeInUp(
                        child: const ContactFormWidget(
                          isOnContactPage: false,
                        ),
                      ),
                    ],
                  )
                : Row(
                    children: [
                      Flexible(
                        flex: 60,
                        child: FadeInLeft(
                          child: const _HomeInfoWidget(),
                        ),
                      ),
                      Expanded(
                        flex: 40,
                        child: FadeInRight(
                          child: const ContactFormWidget(
                            isOnContactPage: false,
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}

class _HomeInfoWidget extends BaseStateless<void> {
  const _HomeInfoWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Responsive.isDesktop(context)
          ? EdgeInsets.only(right: context.cMediumValue)
          : EdgeInsets.zero,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            child: Image.asset(
              ImageEnumsPng.logo.toPathPng,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: context.cMediumValue),
          SelectableText(
            StringConstants.main_screen_description,
            style: Responsive.isMobile(context)
                ? Theme.of(context).textTheme.titleMedium?.copyWith(
                      overflow: TextOverflow.ellipsis,
                      color: Theme.of(context).colorScheme.surface,
                    )
                : Theme.of(context).textTheme.titleLarge?.copyWith(
                      overflow: TextOverflow.ellipsis,
                      color: Theme.of(context).colorScheme.surface,
                    ),
          ),
        ],
      ),
    );
  }
}

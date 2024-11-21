import 'package:flutter/material.dart';
import 'package:tekkom_web/config/routes/app_routes.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/core/utils/image_enum.dart';
import 'package:tekkom_web/feature/base_ui/base_layout.dart';
import 'package:tekkom_web/feature/contact/widget/contact_form_widget.dart';
import 'package:tekkom_web/feature/contact/widget/contact_info_widget.dart';
import 'package:tekkom_web/feature/footer/footer_widget_desktop.dart';
import 'package:tekkom_web/feature/footer/footer_widget_mobile.dart';
import 'package:tekkom_web/feature/header/header_desktop.dart';
import 'package:tekkom_web/product/constants/custom_shadows.dart';
import 'package:tekkom_web/responsive/responsive.dart';

class ContactView extends StatefulWidget {
  const ContactView({super.key});

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends BaseLayout<ContactView> {
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
      currentPage: AppRoutes.contactView,
      scrollController: scrollCont,
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
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        children: [
          Column(
            children: [
              SizedBox(
                key: sectionKeys.first,
              ),
              SizedBox(
                width: Responsive.getWidth(context),
                height: ConstantSizes.smallPageHeight.value / 1.3,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        ImageEnumsPng.bg_contact.toPathPng,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned.fill(
                      child: Container(
                        color: Theme.of(context)
                            .colorScheme
                            .scrim
                            .withOpacity(0.4),
                      ),
                    ),
                    Align(
                      child: Padding(
                        padding: context.cPaddingMedium,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SelectableText(
                              'İLETİŞİM',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge
                                  ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                    fontWeight: FontWeight.bold,
                                    shadows:
                                        CustomShadows.customLowShadow(context),
                                  ),
                            ),
                            SizedBox(height: context.cMediumValue),
                            SelectableText(
                              textAlign: TextAlign.center,
                              'Sizin için en iyi çözümleri sunuyoruz! Sorularınızı, önerilerinizi veya ihtiyaçlarınızı bize iletmek için aşağıdaki formu doldurun.İhtiyacınız olan her konuda en kısa sürede sizinle iletişime geçeceğiz.',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontStyle: FontStyle.italic,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    shadows:
                                        CustomShadows.customLowShadow(context),
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: context.cXxLargeValue),
              Padding(
                padding: context.pageHorizontolPadding(context),
                child: const ContactFormWidget(),
              ),
              SizedBox(height: context.cXxLargeValue),
              Padding(
                padding: context.pageHorizontolPadding(context),
                child: SizedBox(
                  width: Responsive.getWidth(context),
                  height: Responsive.isDesktop(context)
                      ? context.cXxLargeValue * 8
                      : context.cXxLargeValue * 12,
                  child: const ContactInfoWidget(),
                ),
              ),
              SizedBox(height: context.cXxLargeValue),
              const Responsive(
                desktop: FooterWidgetDesktop(),
                mobile: FooterWidgetMobile(),
                tablet: FooterWidgetMobile(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

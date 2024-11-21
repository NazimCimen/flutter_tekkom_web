import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';
import 'package:tekkom_web/config/routes/app_routes.dart';
import 'package:tekkom_web/core/base/base_stateful.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/core/utils/app_validators.dart';
import 'package:tekkom_web/feature/base_ui/base_layout.dart';
import 'package:tekkom_web/feature/contact/mixin/contact_form_view_mixin.dart';
import 'package:tekkom_web/feature/contact/widget/contact_info_widget.dart';
import 'package:tekkom_web/feature/contact/widget/google_map_widget.dart';
import 'package:tekkom_web/feature/contact/widget/request_call_back_widget.dart';
import 'package:tekkom_web/feature/footer/footer_widget_desktop.dart';
import 'package:tekkom_web/feature/footer/footer_widget_mobile.dart';
import 'package:tekkom_web/feature/header/header_desktop.dart';
import 'package:tekkom_web/product/constants/custom_shadows.dart';
import 'package:tekkom_web/product/widgets/custom_text_form_field.dart';
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
                        'assets/images/bg_contact.png',
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
                            Text(
                              'BİZE ULAŞIN',
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
                            Text(
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
                child: const RequestCallbackForm(),
              ),
              SizedBox(height: context.cXxLargeValue),
              Padding(
                padding: context.pageHorizontolPadding(context),
                child: SizedBox(
                  width: Responsive.getWidth(context),
                  height: context.cXxLargeValue * 8,
                  child: const ContactInfoWidget(),
                ),
              ),
              SizedBox(height: context.cXxLargeValue),

              /* Padding(
                padding: context.pageHorizontolPadding(context),
                child: Row(
                  children: [
                    const Expanded(child: FormWidget()),
                    Expanded(
                      child: SizedBox(
                        height: ConstantSizes.xxLarge.value * 7.5,
                        child: const GoogleMapWidget(),
                      ),
                    ),
                  ],
                ),
              ),*/
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

class FormWidget extends StatefulWidget {
  const FormWidget({
    super.key,
  });

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends BaseStateful<FormWidget, ChangeNotifier>
    with ContactFromViewMixin {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.pageHorizontolPadding(context),
      child: Form(
        autovalidateMode: validateMode,
        key: formKey,
        child: Column(
          children: [
            if (feedbackMessage != null)
              Padding(
                padding: context.cPaddingSmall,
                child: Text(
                  feedbackMessage!,
                  style: TextStyle(
                    color: sendMailSucces
                        ? Theme.of(context).colorScheme.tertiaryContainer
                        : Theme.of(context).colorScheme.secondaryContainer,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            SizedBox(height: ConstantSizes.large.value),
            FadeInUp(
              child: Text(
                StringConstants.form_title,
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            SizedBox(
              height: ConstantSizes.xLarge.value,
            ),
            FadeInUp(
              child: CustomTextFormField(
                controller: nameController,
                validator: (value) => AppValidators.nameValidator(value),
                hintText: StringConstants.form_name_hint,
                maxLines: 1,
                isMainSection: false,
              ),
            ),
            SizedBox(height: ConstantSizes.large.value),
            FadeInUp(
              child: CustomTextFormField(
                controller: mailController,
                validator: (value) => AppValidators.emailValidator(value),
                hintText: StringConstants.form_mail_hint,
                maxLines: 1,
                isMainSection: false,
              ),
            ),
            SizedBox(height: ConstantSizes.large.value),
            FadeInUp(
              child: CustomTextFormField(
                controller: msgController,
                validator: (value) => AppValidators.messageValidator(value),
                hintText: StringConstants.form_msg_hint,
                maxLines: 16,
                isMainSection: false,
              ),
            ),
            SizedBox(height: ConstantSizes.large.value),
            FadeInUp(
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: Theme.of(context).colorScheme.tertiaryFixed,
                  fixedSize: const Size(150, 40),
                ),
                onPressed: () async {
                  await sendMessageButton();
                },
                child: isLoading
                    ? Padding(
                        padding: context.cPaddingSmall / 2,
                        child: CircularProgressIndicator(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      )
                    : Text(
                        StringConstants.form_send_button,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                      ),
              ),
            ),
            SizedBox(height: ConstantSizes.large.value),
          ],
        ),
      ),
    );
  }
}

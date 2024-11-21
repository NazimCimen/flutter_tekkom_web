import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:tekkom_web/core/base/base_stateless.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/feature/header/provider/header_provider.dart';
import 'package:tekkom_web/feature/language_selector/presentation/language_selector_widget.dart';
import 'package:tekkom_web/product/components/custom_snack_bars.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';
import 'package:tekkom_web/product/decorations/box_decorations/custom_box_decoration.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder:
          (BuildContext context, HeaderProvider controller, Widget? child) {
        if (controller.errorMsg != null) {
          SchedulerBinding.instance.addPostFrameCallback(
            (_) {
              CustomSnackBars.showErrorSnackbar(context, controller.errorMsg!);
              controller.snackBarDuration();
            },
          );
        }
        return const _Body();
      },
    );
  }
}

class _Body extends BaseStateless<HeaderProvider> {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Visibility(
            visible: watchViewModel(context).isHeaderTransparent,
            child: SizedBox(
              height: context.cXLargeValue,
              child: Container(
                padding: context.pageHorizontolPadding(context),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Theme.of(context)
                          .colorScheme
                          .outline
                          .withOpacity(0.4),
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    _ContactHeaderInfo(
                      icon: Icons.phone,
                      launchUrl: context.read<HeaderProvider>().handleWhatsApp,
                      text: StringConstants.contact_info_phone,
                    ),
                    SizedBox(
                      width: context.cMediumValue,
                    ),
                    _ContactHeaderInfo(
                      icon: Icons.mail_outline,
                      launchUrl: context.read<HeaderProvider>().handleEmail,
                      text: StringConstants.contact_info_mail,
                    ),
                    SizedBox(
                      width: context.cMediumValue,
                    ),
                    _ContactHeaderInfo(
                      icon: Icons.location_on_outlined,
                      launchUrl: context.read<HeaderProvider>().handleMap,
                      text: StringConstants.contact_info_mail,
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                        top: context.cLowValue / 2,
                        bottom: context.cLowValue / 2,
                      ),
                      child: const LanguageSelectorWidget(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: ConstantSizes.xLarge.value * 2,
            width: double.maxFinite,
            padding: context.pageHorizontolPadding(context),
            decoration: CustomBoxDecoration.customHeaderDecoration(
              context,
              watchViewModel(context).isHeaderTransparent,
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.menu_outlined,
                      color: watchViewModel(context).isHeaderTransparent
                          ? colorScheme(context).surface
                          : colorScheme(context).scrim,
                    ),
                  ),
                ),
                const Spacer(),
                SelectableText(
                  StringConstants.appName,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: watchViewModel(context).isHeaderTransparent
                            ? Theme.of(context).colorScheme.surface
                            : Theme.of(context).colorScheme.scrim,
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

class _ContactHeaderInfo extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback launchUrl;
  const _ContactHeaderInfo({
    required this.icon,
    required this.launchUrl,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: launchUrl,
      child: Icon(
        icon,
        color: Theme.of(context).colorScheme.surface,
      ),
    );
  }
}

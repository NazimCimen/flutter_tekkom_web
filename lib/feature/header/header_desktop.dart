import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:tekkom_web/config/routes/navigator_service.dart';
import 'package:tekkom_web/core/base/base_stateful.dart';
import 'package:tekkom_web/core/base/base_stateless.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/feature/header/provider/header_provider.dart';
import 'package:tekkom_web/feature/language_selector/presentation/language_selector_widget.dart';
import 'package:tekkom_web/product/components/custom_snack_bars.dart';
import 'package:tekkom_web/product/constants/feature_items.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';
import 'package:tekkom_web/product/decorations/box_decorations/custom_box_decoration.dart';
import 'package:tekkom_web/product/widgets/custom_icon_button.dart';
import 'package:tekkom_web/product/widgets/custom_text_button.dart';

class HeaderDesktop extends BaseStateless<void> {
  final String currentPage;
  final ScrollController scrollController;
  const HeaderDesktop({
    required this.currentPage,
    required this.scrollController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<HeaderProvider>(
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
        return _Body(
          isCurrentPage: currentPage,
          scrollController: scrollController,
        );
      },
    );
  }
}

class _Body extends StatefulWidget {
  const _Body({
    required this.scrollController,
    required this.isCurrentPage,
  });
  final String isCurrentPage;
  final ScrollController scrollController;

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends BaseStateful<_Body, HeaderProvider> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Visibility(
            visible: watchViewModel().isHeaderTransparent,
            child: SizedBox(
              height: context.cXLargeValue,
              child: Container(
                padding: context.pageHorizontolPadding(context),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: colorScheme.outline.withOpacity(0.4),
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    MouseRegion(
                      onEnter: (_) => onEnter(0),
                      onExit: (_) => onExit(0),
                      child: CustomIconButton(
                        icon: Icons.phone,
                        launchUrl:
                            context.read<HeaderProvider>().handleWhatsApp,
                        text: StringConstants.contact_info_phone,
                        isDark: false,
                        isHover: !hoverStates[0]!,
                      ),
                    ),
                    SizedBox(
                      width: context.cMediumValue,
                    ),
                    MouseRegion(
                      onEnter: (_) => onEnter(1),
                      onExit: (_) => onExit(1),
                      child: CustomIconButton(
                        icon: Icons.mail_outline,
                        launchUrl: context.read<HeaderProvider>().handleEmail,
                        text: StringConstants.contact_info_mail,
                        isDark: false,
                        isHover: !hoverStates[1]!,
                      ),
                    ),
                    SizedBox(
                      width: context.cMediumValue,
                    ),
                    MouseRegion(
                      onEnter: (_) => onEnter(2),
                      onExit: (_) => onExit(2),
                      child: CustomIconButton(
                        icon: Icons.location_on_outlined,
                        launchUrl: context.read<HeaderProvider>().handleMap,
                        text: StringConstants.contact_info_adress,
                        isDark: false,
                        isHover: !hoverStates[2]!,
                      ),
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
            height: context.cXLargeValue * 2,
            padding: context.pageHorizontolPadding(context),
            decoration: CustomBoxDecoration.customHeaderDecoration(
              context,
              watchViewModel().isHeaderTransparent,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.right,
                  StringConstants.appName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.bodyMedium?.copyWith(
                    overflow: TextOverflow.ellipsis,
                    color: watchViewModel().isHeaderTransparent
                        ? colorScheme.surface
                        : colorScheme.scrim,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                for (int i = 0; i < FeatureItems.drawerItems.length; i++)
                  CustomTextButton(
                    isHeaderTransparent: watchViewModel().isHeaderTransparent,
                    isCurrentPage: widget.isCurrentPage ==
                        FeatureItems.drawerItems[i].route,
                    text: FeatureItems.drawerItems[i].text,
                    onPressed: () {
                      widget.scrollController.jumpTo(0);
                      NavigatorService.pushNamedAndRemoveUntil(
                        FeatureItems.drawerItems[i].route,
                      );
                    },
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

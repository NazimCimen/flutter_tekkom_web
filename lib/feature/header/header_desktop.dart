import 'package:flutter/material.dart';
import 'package:tekkom_web/config/routes/navigator_service.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/feature/language_selector/presentation/language_selector_widget.dart';
import 'package:tekkom_web/product/constants/feature_items.dart';
import 'package:tekkom_web/product/constants/some_constants.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';
import 'package:tekkom_web/product/decorations/box_decorations/custom_box_decoration.dart';
import 'package:tekkom_web/product/services/url_service.dart';
import 'package:tekkom_web/product/widgets/custom_text_button.dart';

class HeaderDesktop extends StatelessWidget {
  final bool isHeaderTransparent;
  const HeaderDesktop({
    required this.isHeaderTransparent,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Visibility(
            visible: isHeaderTransparent,
            child: SizedBox(
              height: context.cXLargeValue,
              child: Container(
                padding: SomeConstants.pageHorizontolPadding(context),
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
                      launchUrl: UrlService.launchWhatsap,
                      text: StringConstants.contact_info_phone,
                    ),
                    SizedBox(
                      width: context.cMediumValue,
                    ),
                    _ContactHeaderInfo(
                      icon: Icons.mail_outline,
                      launchUrl: UrlService.launchWhatsap,
                      text: StringConstants.contact_info_mail,
                    ),
                    SizedBox(
                      width: context.cMediumValue,
                    ),
                    _ContactHeaderInfo(
                      icon: Icons.location_on_outlined,
                      launchUrl: UrlService.launchWhatsap,
                      text: StringConstants.contact_info_adress,
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
            padding: SomeConstants.pageHorizontolPadding(context),
            decoration: CustomBoxDecoration.customHeaderDecoration(
              context,
              isHeaderTransparent,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.right,
                  StringConstants.appName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        overflow: TextOverflow.ellipsis,
                        color: isHeaderTransparent
                            ? Theme.of(context).colorScheme.surface
                            : Theme.of(context).colorScheme.scrim,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Spacer(),
                for (int i = 0; i < FeatureItems.drawerItems.length; i++)
                  CustomTextButton(
                    isHeaderTransparent: isHeaderTransparent,
                    text: FeatureItems.drawerItems[i].text,
                    onPressed: () {
                      NavigatorService.pushNamed(
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
      child: Row(
        children: [
          Icon(
            icon,
            color: Theme.of(context).colorScheme.surface,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.surface,
                ),
          ),
        ],
      ),
    );
  }
}

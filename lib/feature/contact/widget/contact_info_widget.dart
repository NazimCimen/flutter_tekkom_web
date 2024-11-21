import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';
import 'package:tekkom_web/core/base/base_stateful.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/core/utils/image_enum.dart';
import 'package:tekkom_web/feature/contact/widget/google_map_widget.dart';
import 'package:tekkom_web/feature/header/provider/header_provider.dart';
import 'package:tekkom_web/product/decorations/box_decorations/custom_box_decoration.dart';
import 'package:tekkom_web/product/widgets/custom_icon_button.dart';
import 'package:tekkom_web/responsive/responsive.dart';

class ContactInfoWidget extends StatefulWidget {
  const ContactInfoWidget({super.key});

  @override
  State<ContactInfoWidget> createState() => _ContactInfoWidgetState();
}

class _ContactInfoWidgetState
    extends BaseStateful<ContactInfoWidget, ChangeNotifier> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Responsive.isDesktop(context)
          ? context.cPaddingxLarge
          : context.cPaddingSmall,
      decoration: CustomBoxDecoration.customBoxDecoration(context),
      child: Column(
        children: [
          SizedBox(height: context.cLargeValue),
          SelectableText(
            'Bize Ulaşın',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          if (Responsive.isDesktop(context)) _infosDesktop(context),
          if (!Responsive.isDesktop(context)) _infosTablet(context),
          SizedBox(height: context.cLargeValue),
        ],
      ),
    );
  }

  Expanded _infosDesktop(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(ImageEnumsPng.logo_dark.toPathPng),
                SizedBox(
                  height: context.cLargeValue,
                ),
                MouseRegion(
                  onEnter: (_) => onEnter(0),
                  onExit: (_) => onExit(0),
                  child: CustomIconButton(
                    icon: Icons.phone,
                    launchUrl: context.read<HeaderProvider>().handleWhatsApp,
                    text: StringConstants.contact_info_phone,
                    isOnHeader: true,
                    isHover: !hoverStates[0]!,
                  ),
                ),
                SizedBox(
                  height: context.cMediumValue,
                ),
                MouseRegion(
                  onEnter: (_) => onEnter(1),
                  onExit: (_) => onExit(1),
                  child: CustomIconButton(
                    icon: Icons.mail_outline,
                    launchUrl: context.read<HeaderProvider>().handleEmail,
                    text: StringConstants.contact_info_mail,
                    isOnHeader: true,
                    isHover: !hoverStates[1]!,
                  ),
                ),
                SizedBox(
                  height: context.cMediumValue,
                ),
                MouseRegion(
                  onEnter: (_) => onEnter(2),
                  onExit: (_) => onExit(2),
                  child: CustomIconButton(
                    icon: Icons.location_on_outlined,
                    launchUrl: context.read<HeaderProvider>().handleMap,
                    text: StringConstants.contact_info_adress,
                    isOnHeader: true,
                    isHover: !hoverStates[2]!,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: context.cPaddingxLarge,
              child: const GoogleMapWidget(),
            ),
          ),
        ],
      ),
    );
  }

  Expanded _infosTablet(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ImageEnumsPng.logo_dark.toPathPng,
                  height: !Responsive.isMobile(context)
                      ? context.cXxLargeValue * 2.3
                      : context.cXxLargeValue * 2,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: context.cLargeValue),
                MouseRegion(
                  onEnter: (_) => onEnter(0),
                  onExit: (_) => onExit(0),
                  child: CustomIconButton(
                    icon: Icons.phone,
                    launchUrl: context.read<HeaderProvider>().handleWhatsApp,
                    text: StringConstants.contact_info_phone,
                    isOnHeader: true,
                    isHover: !hoverStates[0]!,
                  ),
                ),
                SizedBox(
                  height: context.cMediumValue,
                ),
                MouseRegion(
                  onEnter: (_) => onEnter(1),
                  onExit: (_) => onExit(1),
                  child: CustomIconButton(
                    icon: Icons.mail_outline,
                    launchUrl: context.read<HeaderProvider>().handleEmail,
                    text: StringConstants.contact_info_mail,
                    isOnHeader: true,
                    isHover: !hoverStates[1]!,
                  ),
                ),
                SizedBox(
                  height: context.cMediumValue,
                ),
                MouseRegion(
                  onEnter: (_) => onEnter(2),
                  onExit: (_) => onExit(2),
                  child: CustomIconButton(
                    icon: Icons.location_on_outlined,
                    launchUrl: context.read<HeaderProvider>().handleMap,
                    text: StringConstants.contact_info_adress,
                    isOnHeader: true,
                    isHover: !hoverStates[2]!,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: GoogleMapWidget(),
          ),
        ],
      ),
    );
  }
}

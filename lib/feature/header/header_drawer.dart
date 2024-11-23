import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tekkom_web/config/routes/app_routes.dart';
import 'package:tekkom_web/config/routes/navigator_service.dart';
import 'package:tekkom_web/core/base/base_stateless.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';

class HeaderDrawer extends StatelessWidget {
  final void Function(int) sectionNavButton;
  final ScrollController scrollController;

  const HeaderDrawer({
    required this.sectionNavButton,
    required this.scrollController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          _DrawerListTile(
            iconData: Icons.home_outlined,
            text: StringConstants.main_screen,
            onTapSection: () {
              NavigatorService.pushNamedAndRemoveUntil(AppRoutes.initialRoute);
              scrollController.jumpTo(0);
            },
          ),
          _DrawerListTile(
            iconData: Icons.build_outlined,
            text: StringConstants.our_services,
            onTapSection: () {
              NavigatorService.pushNamedAndRemoveUntil(
                AppRoutes.ourServicesView,
              );
              scrollController.jumpTo(0);
            },
          ),
          _DrawerListTile(
            iconData: Icons.info_outline,
            text: StringConstants.about_us,
            onTapSection: () {
              NavigatorService.pushNamedAndRemoveUntil(AppRoutes.aboutUsView);
              scrollController.jumpTo(0);
            },
          ),
          _DrawerListTile(
            iconData: FontAwesomeIcons.envelope,
            text: StringConstants.contact_us,
            onTapSection: () {
              NavigatorService.pushNamedAndRemoveUntil(AppRoutes.contactView);
              scrollController.jumpTo(0);
            },
          ),
        ],
      ),
    );
  }
}

class _DrawerListTile extends BaseStateless<void> {
  final IconData iconData;
  final String text;
  final VoidCallback onTapSection;
  const _DrawerListTile({
    required this.iconData,
    required this.text,
    required this.onTapSection,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: FaIcon(iconData),
      title: Text(
        text,
        style: textTheme(context)
            .bodyLarge
            ?.copyWith(color: colorScheme(context).onSurface),
      ),
      onTap: onTapSection,
    );
  }
}

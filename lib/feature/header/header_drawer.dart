import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tekkom_web/config/routes/app_routes.dart';
import 'package:tekkom_web/config/routes/navigator_service.dart';
import 'package:tekkom_web/core/base/base_stateless.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/utils/image_enum.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';

class HeaderDrawer extends StatelessWidget {
  final void Function(int) sectionNavButton;

  const HeaderDrawer({required this.sectionNavButton, super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          _DrawerListTile(
            assetPath: ImageEnumsSvg.ic_home.toPathSvg,
            text: StringConstants.main_screen,
            onTapSection: () {
              sectionNavButton(0);
            },
          ),
          _DrawerListTile(
            assetPath: ImageEnumsSvg.ic_texttile.toPathSvg,
            text: StringConstants.our_services,
            onTapSection: () {
              NavigatorService.goBack();
              NavigatorService.pushNamed(AppRoutes.ourServicesView);
            },
          ),
          _DrawerListTile(
            assetPath: ImageEnumsSvg.ic_mining.toPathSvg,
            text: StringConstants.about_us,
            onTapSection: () {
              NavigatorService.goBack();
              NavigatorService.pushNamed(AppRoutes.aboutUsView);
            },
          ),
          _DrawerListTile(
            assetPath: ImageEnumsSvg.ic_contact_us.toPathSvg,
            text: StringConstants.contact_us,
            onTapSection: () {
              NavigatorService.goBack();
              NavigatorService.pushNamed(AppRoutes.contactView);
            },
          ),
        ],
      ),
    );
  }
}

class _DrawerListTile extends BaseStateless<void> {
  final String assetPath;
  final String text;
  final VoidCallback onTapSection;
  const _DrawerListTile({
    required this.assetPath,
    required this.text,
    required this.onTapSection,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        assetPath,
        width: ConstantSizes.large.value,
        height: ConstantSizes.large.value,
        fit: BoxFit.cover,
      ),
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

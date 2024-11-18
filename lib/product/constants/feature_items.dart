import 'package:flutter/material.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';
import 'package:tekkom_web/config/routes/app_routes.dart';

@immutable
final class FeatureItems {
  const FeatureItems._();
  static List<FeatureItem> drawerItems = [
    FeatureItem(
      icon: Icons.home_outlined,
      text: StringConstants.main_screen,
      route: AppRoutes.initialRoute,
    ),
    FeatureItem(
      icon: Icons.star_outline,
      text: StringConstants.our_services,
      route: AppRoutes.ourServicesView,
    ),
    FeatureItem(
      icon: Icons.sentiment_satisfied_outlined,
      text: StringConstants.about_us,
      route: AppRoutes.corporateView,
    ),
    FeatureItem(
      icon: Icons.app_shortcut_outlined,
      text: StringConstants.contact_us,
      route: AppRoutes.contactView,
    ),
  ];
}

@immutable
final class FeatureItem {
  final IconData icon;
  final String text;
  final String route;
  const FeatureItem({
    required this.icon,
    required this.text,
    required this.route,
  });
}

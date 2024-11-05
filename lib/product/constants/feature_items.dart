import 'package:flutter/material.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';

@immutable
final class FeatureItems {
  const FeatureItems._();
  static List<FeatureItem> drawerItems = [
    FeatureItem(
      icon: Icons.home_outlined,
      text: StringConstants.main_screen,
    ),
    FeatureItem(
      icon: Icons.star_outline,
      text: StringConstants.our_services,
    ),
    FeatureItem(
      icon: Icons.sentiment_satisfied_outlined,
      text: StringConstants.about_us,
    ),
    FeatureItem(
      icon: Icons.app_shortcut_outlined,
      text: StringConstants.contact_us,
    ),
  ];
}

@immutable
final class FeatureItem {
  final IconData icon;
  final String text;

  const FeatureItem({
    required this.icon,
    required this.text,
  });
}

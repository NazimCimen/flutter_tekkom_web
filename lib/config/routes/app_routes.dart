import 'package:flutter/material.dart';
import 'package:tekkom_web/feature/home_view.dart';

@immutable
final class AppRoutes {
  const AppRoutes._();

  static const String initialRoute = '/homeView';
  static const String homeView = '/homeView';

  static Map<String, WidgetBuilder> get routes => {
        homeView: (context) => const HomeView(),
      };
}

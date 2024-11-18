import 'package:flutter/material.dart';
import 'package:tekkom_web/feature/contact/view/contact_view.dart';
import 'package:tekkom_web/feature/corporate/view/corporate_view.dart';
import 'package:tekkom_web/feature/home/view/home_view.dart';
import 'package:tekkom_web/feature/our_services/view/our_services_view.dart';

@immutable
final class AppRoutes {
  const AppRoutes._();

  static const String initialRoute = '/homeView';
  static const String homeView = '/home';
  static const String ourServicesView = '/services';
  static const String corporateView = '/corporate';
  static const String contactView = '/contact';

  static Map<String, WidgetBuilder> get routes => {
        initialRoute: (context) => const HomeView(),
        ourServicesView: (context) => const OurServicesView(),
        corporateView: (context) => const CorporateView(),
        contactView: (context) => const ContactView(),
      };
}

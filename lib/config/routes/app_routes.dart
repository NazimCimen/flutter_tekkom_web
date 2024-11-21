import 'package:flutter/material.dart';
import 'package:tekkom_web/feature/contact/view/contact_view.dart';
import 'package:tekkom_web/feature/about_us/view/about_us_view.dart';
import 'package:tekkom_web/feature/home/view/home_view.dart';
import 'package:tekkom_web/feature/our_services/view/fuel_saving_view.dart';
import 'package:tekkom_web/feature/our_services/view/our_services_view.dart';
import 'package:tekkom_web/feature/our_services/view/car_repair_service_view.dart';
import 'package:tekkom_web/feature/our_services/view/repair_machinery_view.dart';

@immutable
final class AppRoutes {
  const AppRoutes._();

  static const String initialRoute = '/homeView';
  static const String homeView = '/home';
  static const String ourServicesView = '/services';
  static const String contactView = '/contact';
  static const String carReapierView = '/carRepair';
  static const String repairMachineryView = '/repairMachinery';
  static const String fuelSavingView = '/fuelSacving';
  static const String aboutUsView = '/aboutUsView';

  static Map<String, WidgetBuilder> get routes => {
        initialRoute: (context) => const HomeView(),
        ourServicesView: (context) => const OurServicesView(),
        contactView: (context) => const ContactView(),
        carReapierView: (context) => const CarRepairServiceView(),
        repairMachineryView: (context) => const RepairMachineryView(),
        fuelSavingView: (context) => const FuelSavingView(),
        aboutUsView: (context) => const AboutUsView(),
      };
}

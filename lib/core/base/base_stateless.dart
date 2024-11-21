import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class BaseStateless<VM> extends StatelessWidget {
  final VM? viewModel;
  const BaseStateless({super.key, this.viewModel});
  VM readViewModel(BuildContext context) =>
      Provider.of<VM>(context, listen: false);
  VM watchViewModel(BuildContext context) => Provider.of<VM>(context);
  ThemeData themeData(BuildContext context) => Theme.of(context);
  TextTheme textTheme(BuildContext context) => themeData(context).textTheme;
  ColorScheme colorScheme(BuildContext context) =>
      themeData(context).colorScheme;
  IconThemeData iconThemeData(BuildContext context) =>
      themeData(context).iconTheme;
  double dynamicHeight(BuildContext context, double value) =>
      MediaQuery.of(context).size.height * value;

  double dynamicWidth(BuildContext context, double value) =>
      MediaQuery.of(context).size.width * value;
}

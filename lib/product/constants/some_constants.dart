import 'package:flutter/material.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/dynamic_size.dart';
import 'package:tekkom_web/responsive/responsive.dart';

class SomeConstants {
  static EdgeInsets pageHorizontolPadding(BuildContext context) =>
      EdgeInsets.only(
        left: Responsive.isDesktop(context)
            ? context.dynamicWidht(0.1)
            : Responsive.isTablet(context)
                ? context.cXxLargeValue
                : context.cLargeValue,
        right: Responsive.isDesktop(context)
            ? context.dynamicWidht(0.1)
            : Responsive.isTablet(context)
                ? context.cXxLargeValue
                : context.cLargeValue,
      );
}

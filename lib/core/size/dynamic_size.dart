import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double dynamicWidht(double val) => MediaQuery.of(this).size.width * val;
  double dynamicHeight(double val) => MediaQuery.of(this).size.height * val;
}

///d:dynamic
///dLowValue: dynamic low value
extension DynamicSizeExtension on BuildContext {
  double get dXLowValue => dynamicHeight(0.005);
  double get dLowValue => dynamicHeight(0.01);
  double get dMediumValue => dynamicHeight(0.02);
  double get dLargeValue => dynamicHeight(0.025);
  double get dXLargeValue => dynamicHeight(0.03);
  double get dXxLargeValue => dynamicHeight(0.1);
}

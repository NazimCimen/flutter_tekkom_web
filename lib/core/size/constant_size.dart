import 'package:flutter/material.dart';

enum ConstantSizes {
  small(8),
  medium(16),
  large(24),
  xLarge(32),
  xxLarge(70),
  smallPageHeight(600),
  mediumPageHeight(750),
  largePageHeight(1000),
  imageHeightMedium(135),
  imageHeightLarge(150);

  final double size;
  const ConstantSizes(this.size);
}

extension AppSizeExtension on ConstantSizes {
  double get value => size;

  SizedBox get heightSizedBox => SizedBox(height: size);
  SizedBox get widthSizedBox => SizedBox(width: size);

  BorderRadius get borderRadius => BorderRadius.circular(size);
}

///c:constant
///cLowValue: constant low value
extension ConstantSizeExtension on BuildContext {
  double get cLowValue => ConstantSizes.small.value;
  double get cMediumValue => ConstantSizes.medium.value;
  double get cLargeValue => ConstantSizes.large.value;
  double get cXLargeValue => ConstantSizes.xLarge.value;
  double get cXxLargeValue => ConstantSizes.xxLarge.value;
}

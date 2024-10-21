import 'package:flutter/material.dart';
import 'package:tekkom_web/core/size/dynamic_size.dart';

extension DynamicBorderRadiusExtension on BuildContext {
  BorderRadius get borderRadiusAllXLow => BorderRadius.circular(dXLowValue);
  BorderRadius get borderRadiusAllLow => BorderRadius.circular(dLowValue);
  BorderRadius get borderRadiusAllMedium => BorderRadius.circular(dMediumValue);
  BorderRadius get borderRadiusAllLarge => BorderRadius.circular(dLargeValue);
  BorderRadius get borderRadiusAllXLarge => BorderRadius.circular(dXLargeValue);
  BorderRadius get borderRadiusAllXXLarge =>
      BorderRadius.circular(dXxLargeValue);

  BorderRadius get borderRadiusTopXLow =>
      BorderRadius.vertical(top: Radius.circular(dXLowValue));
  BorderRadius get borderRadiusTopLow =>
      BorderRadius.vertical(top: Radius.circular(dLowValue));
  BorderRadius get borderRadiusTopMedium =>
      BorderRadius.vertical(top: Radius.circular(dMediumValue));
  BorderRadius get borderRadiusTopLarge =>
      BorderRadius.vertical(top: Radius.circular(dLargeValue));
  BorderRadius get borderRadiusTopXLarge =>
      BorderRadius.vertical(top: Radius.circular(dXLargeValue));

  BorderRadius get borderRadiusBottomXLow =>
      BorderRadius.vertical(bottom: Radius.circular(dXLowValue));
  BorderRadius get borderRadiusBottomLow =>
      BorderRadius.vertical(bottom: Radius.circular(dLowValue));
  BorderRadius get borderRadiusBottomMedium =>
      BorderRadius.vertical(bottom: Radius.circular(dMediumValue));
  BorderRadius get borderRadiusBottomLarge =>
      BorderRadius.vertical(bottom: Radius.circular(dLargeValue));
  BorderRadius get borderRadiusBottomXLarge =>
      BorderRadius.vertical(bottom: Radius.circular(dXLargeValue));

  BorderRadius get borderRadiusLeftXLow =>
      BorderRadius.horizontal(left: Radius.circular(dXLowValue));
  BorderRadius get borderRadiusLeftLow =>
      BorderRadius.horizontal(left: Radius.circular(dLowValue));
  BorderRadius get borderRadiusLeftMedium =>
      BorderRadius.horizontal(left: Radius.circular(dMediumValue));
  BorderRadius get borderRadiusLeftLarge =>
      BorderRadius.horizontal(left: Radius.circular(dLargeValue));
  BorderRadius get borderRadiusLeftXLarge =>
      BorderRadius.horizontal(left: Radius.circular(dXLargeValue));

  BorderRadius get borderRadiusRightXLow =>
      BorderRadius.horizontal(right: Radius.circular(dXLowValue));
  BorderRadius get borderRadiusRightLow =>
      BorderRadius.horizontal(right: Radius.circular(dLowValue));
  BorderRadius get borderRadiusRightMedium =>
      BorderRadius.horizontal(right: Radius.circular(dMediumValue));
  BorderRadius get borderRadiusRightLarge =>
      BorderRadius.horizontal(right: Radius.circular(dLargeValue));
  BorderRadius get borderRadiusRightXLarge =>
      BorderRadius.horizontal(right: Radius.circular(dXLargeValue));
}

import 'package:flutter/foundation.dart';
import 'package:tekkom_web/core/utils/image_enum.dart';

@immutable
final class AppConstants {
  const AppConstants._();
  static List<String> brandLogos = [
    ImageEnumsSvg.car_audi.toPathSvg,
    ImageEnumsSvg.car_bmw.toPathSvg,
    ImageEnumsSvg.car_chevrolet.toPathSvg,
    ImageEnumsSvg.car_fiat.toPathSvg,
    ImageEnumsSvg.car_ford.toPathSvg,
    ImageEnumsSvg.car_mercedes.toPathSvg,
    ImageEnumsSvg.car_mitsubishi.toPathSvg,
    ImageEnumsSvg.car_seat.toPathSvg,
    ImageEnumsSvg.car_skoda.toPathSvg,
    ImageEnumsSvg.car_volvo.toPathSvg,
  ];
}

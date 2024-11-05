import 'package:flutter/material.dart';
import 'package:tekkom_web/config/localization/app_languages.dart';
import 'package:tekkom_web/core/utils/image_enum.dart';

@immutable
final class LocaleConstants {
  const LocaleConstants._();
  static const trLocale = Locale('tr', 'TR');
  static const enLocale = Locale('en', 'US');
  static const localePath = 'assets/lang';

  static final AppLanguages defaultLanguage = AppLanguages(
    name: 'TR',
    locale: trLocale,
    flagPath: ImageEnumsPng.ic_flag_tr.toPathPng,
  ); //languageList[0];
  static final List<AppLanguages> languageList = [
    AppLanguages(
      name: 'TR',
      locale: trLocale,
      flagPath: ImageEnumsPng.ic_flag_tr.toPathPng,
    ),
    AppLanguages(
      name: 'EN',
      locale: trLocale,
      flagPath: ImageEnumsPng.ic_flag_en.toPathPng,
    ),
  ];
}

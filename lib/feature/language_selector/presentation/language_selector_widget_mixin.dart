import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tekkom_web/config/localization/app_languages.dart';
import 'package:tekkom_web/config/localization/locale_constants.dart';
import 'package:tekkom_web/feature/language_selector/presentation/language_selector_widget.dart';

mixin LanguageSelectorWidgetMixin on State<LanguageSelectorWidget> {
  AppLanguages currentLanguage = LocaleConstants.defaultLanguage;
  void onChanged(AppLanguages? newLanguage) {
    if (newLanguage != null) {
      setState(() {
        currentLanguage = newLanguage;
        context.setLocale(newLanguage.locale);
      });
    }
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tekkom_web/config/localization/app_languages.dart';
import 'package:tekkom_web/config/localization/locale_constants.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/utils/image_enum.dart';
import 'package:tekkom_web/feature/language_selector/presentation/language_selector_widget_mixin.dart';

class LanguageSelectorWidget extends StatefulWidget {
  const LanguageSelectorWidget({super.key});

  @override
  LanguageSelectorWidgetState createState() => LanguageSelectorWidgetState();
}

class LanguageSelectorWidgetState extends State<LanguageSelectorWidget>
    with LanguageSelectorWidgetMixin {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: DropdownButton<AppLanguages>(
      value: currentLanguage,
      items: [
        DropdownMenuItem<AppLanguages>(
            value: AppLanguages(
              name: 'TR',
              locale: Locale('tr', 'TR'),
              flagPath: ImageEnumsPng.ic_flag_tr.toPathPng,
            ),
            child: Text('TR')),
        DropdownMenuItem<AppLanguages>(
            value: AppLanguages(
              name: 'EN',
              locale: Locale('en', 'US'),
              flagPath: ImageEnumsPng.ic_flag_en.toPathPng,
            ),
            child: Text('EN')),
      ],
      onChanged: (AppLanguages? value) {
        currentLanguage = value!;
        context.setLocale(value.locale);
      },
    ) /*Row(
      children: [
        ElevatedButton(
            onPressed: () {
              context.setLocale(LocaleConstants.trLocale);
            },
            child: Text('Türkçe')),
        ElevatedButton(
            onPressed: () {
              context.setLocale(LocaleConstants.enLocale);
            },
            child: Text('English')),
      ],
    )*/

        /*    DropdownButtonHideUnderline(
        child: DropdownButton<AppLanguages>(
          dropdownColor: Theme.of(context).colorScheme.onPrimary,
          value: currentLanguage,
          items: LocaleConstants.languageList.map((language) {
            return DropdownMenuItem<AppLanguages>(
              value: language,
              child: Row(
                children: [
                  Image.asset(
                    language.flagPath,
                    height: context.cMediumValue,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: context.cLowValue),
                  Text(
                    language.name,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.surface,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            );
          }).toList(),
          onChanged: (newLanguage) {
            if (newLanguage != null) {
              setState(() {
                currentLanguage = newLanguage;
                context.setLocale(newLanguage.locale);
              });
            }
          },
        ),
      ),*/
        );
  }
}

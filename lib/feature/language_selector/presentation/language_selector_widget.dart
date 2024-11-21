import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tekkom_web/config/localization/app_languages.dart';
import 'package:tekkom_web/config/localization/locale_constants.dart';
import 'package:tekkom_web/core/base/base_stateless.dart';
import 'package:tekkom_web/core/size/constant_size.dart';

class LanguageSelectorWidget extends BaseStateless<void> {
  const LanguageSelectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<AppLanguages>(
      value: LocaleConstants.languageList.firstWhere(
        (lang) => lang.locale == context.locale,
        orElse: () => LocaleConstants.languageList[0],
      ),
      dropdownColor: Theme.of(context).colorScheme.tertiaryContainer,
      style: textTheme(context).titleMedium,
      underline: const SizedBox.shrink(),
      items: LocaleConstants.languageList.map((lang) {
        return DropdownMenuItem<AppLanguages>(
          value: lang,
          child: Row(
            children: [
              Image.asset(
                lang.flagPath,
                height: context.cLargeValue,
              ),
              Text(
                '   ${lang.name}',
                style: textTheme(context).titleMedium?.copyWith(
                      color: colorScheme(context).surface,
                    ),
              ),
            ],
          ),
        );
      }).toList(),
      onChanged: (selectedLanguage) {
        if (selectedLanguage != null) {
          context.setLocale(selectedLanguage.locale);
        }
      },
    );
  }
}

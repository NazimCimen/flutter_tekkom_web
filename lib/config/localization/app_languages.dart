import 'package:flutter/material.dart';

@immutable
final class AppLanguages {
  final String name;
  final String flagPath;
  final Locale locale;

  const AppLanguages({
    required this.name,
    required this.flagPath,
    required this.locale,
  });
}

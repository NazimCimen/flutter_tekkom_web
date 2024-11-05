import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
final class AppLanguages extends Equatable {
  final String name;
  final String flagPath;
  final Locale locale;

  const AppLanguages({
    required this.name,
    required this.flagPath,
    required this.locale,
  });

  @override
  List<Object?> get props => [name, flagPath, locale];
}

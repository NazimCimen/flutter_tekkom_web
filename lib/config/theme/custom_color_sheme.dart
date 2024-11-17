import 'package:flutter/material.dart';

/// Project custom colors
@immutable
final class CustomColorScheme {
  const CustomColorScheme._();

  static const lightScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xffe42424),
    onPrimary: Color(0xFF181C14),
    secondary: Color(0xFFEEEEEE),
    onSecondary: Color(0xFF000000),
    error: Color(0xFFB00020),
    onError: Color(0xFFFFFFFF),
    surface: Color(0xFFFFFFFF),
    scrim: Colors.black,
    secondaryContainer: Colors.orangeAccent,
    tertiaryContainer: Colors.green,
    tertiaryFixed: Color(0xffe42424),
    onSurface: Color(0xFF000000),
    onPrimaryContainer: Color(0xFFE0E0E0),
    tertiary: Color(0xffEEEEEE),
    onTertiary: Color.fromARGB(255, 32, 32, 32),
    outline: Color(0xFFBDBDBD),
  );
}

import 'package:flutter/material.dart';

/// Project custom colors
final class CustomColorScheme {
  CustomColorScheme._();

  static const darkScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xffFFB411),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xFF424242),
    onSecondary: Color(0xFFFFFFFF),
    error: Color(0xFFCF6679),
    onError: Color(0xFF000000),
    surface: Color(0xFF222222),
    scrim: Colors.black,
    secondaryContainer: Colors.redAccent,
    tertiaryContainer: Colors.greenAccent,
    tertiaryFixed: Color(0xffFFB411),
    onSurface: Color(0xFFFFFFFF),
    onPrimaryContainer: Color(0x5F616161),
    tertiary: Colors.grey,
    onTertiary: Color(0xFFFFFFFF),
    outline: Color(0xFF757575),
  );
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tekkom_web/config/theme/custom_color_sheme.dart';

abstract class ApplicationTheme {
  ThemeData get themeData;
  ColorScheme get colorScheme;
}

/// Custom Dark theme for project design
final class CustomLightTheme implements ApplicationTheme {
  @override
  ColorScheme get colorScheme => CustomColorScheme.lightScheme;
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: CustomColorScheme.lightScheme,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        scaffoldBackgroundColor: Color(0xfff5f5f5),
      );
}

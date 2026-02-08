import 'package:flutter/material.dart';

/// Application theme configuration.
///
/// Defines the visual styling for the entire app including
/// colors, fonts, and Material Design theme.
class AppTheme {
  /// Returns the light theme for the application
  static ThemeData lightTheme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF1E88E5),
        brightness: Brightness.light,
      ),
      fontFamily: 'Roboto',
    );
  }

  // Primary colors for easy access
  static const Color primaryBlue = Color(0xFF1E88E5);
  static const Color secondaryOrange = Colors.deepOrange;

  // Career track colors
  static const Map<String, Color> careerColors = {
    'med': Color(0xFFE91E63), // Pink - Medical
    'eng': Color(0xFF1E88E5), // Blue - Engineering
    'math': Color(0xFF9C27B0), // Purple - Mathematics
    'res': Color(0xFF00BCD4), // Cyan - Research
    'comm': Color(0xFFFF9800), // Orange - Commerce
    'arts': Color(0xFF4CAF50), // Green - Arts
    'pharma': Color(0xFF3F51B5), // Indigo - Pharmacy
  };
}

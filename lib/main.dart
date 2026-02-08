import 'package:flutter/material.dart';
import 'screens/auth_screen.dart';
import 'config/theme.dart';

/// Main entry point for the Epics career guidance application.
void main() {
  runApp(const CareerGuideApp());
}

/// Root widget for the Career Guide application.
class CareerGuideApp extends StatelessWidget {
  const CareerGuideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RoadAhead',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(),
      home: const AuthScreen(),
    );
  }
}

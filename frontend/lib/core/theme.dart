import 'package:flutter/material.dart';

class AppTheme {
  // ===== COLORS =====
  static const primary = Color(0xFF4F46E5);
  static const secondary = Color(0xFF6366F1);
  static const background = Color(0xFFF9FAFB);
  static const textPrimary = Color(0xFF111827);
  static const textSecondary = Color(0xFF6B7280);
  static const danger = Color(0xFFEF4444);

  // ===== BASE TEXT THEME (QUAN TRỌNG NHẤT) =====
  static const TextTheme _baseTextTheme = TextTheme(
    headlineSmall: TextStyle(
      inherit: false,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: TextStyle(
      inherit: false,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      inherit: false,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
  );

  // ===== LIGHT THEME =====
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: background,
    colorScheme: const ColorScheme.light(
      primary: primary,
      secondary: secondary,
      error: danger,
    ),
    textTheme: _baseTextTheme.copyWith(
      headlineSmall:
          _baseTextTheme.headlineSmall!.copyWith(color: textPrimary),
      bodyMedium:
          _baseTextTheme.bodyMedium!.copyWith(color: textPrimary),
      bodySmall:
          _baseTextTheme.bodySmall!.copyWith(color: textSecondary),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: textPrimary,
      elevation: 0,
      centerTitle: true,
    ),
  );

  // ===== DARK THEME =====
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: const Color(0xFF0F172A),
    colorScheme: const ColorScheme.dark(
      primary: primary,
      secondary: secondary,
      error: danger,
    ),
    textTheme: _baseTextTheme.copyWith(
      headlineSmall:
          _baseTextTheme.headlineSmall!.copyWith(color: Colors.white),
      bodyMedium:
          _baseTextTheme.bodyMedium!.copyWith(color: Colors.white),
      bodySmall:
          _baseTextTheme.bodySmall!.copyWith(color: Colors.white70),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF020617),
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
    ),
  );
}

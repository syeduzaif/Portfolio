import 'package:flutter/material.dart';

/// Neon Cosmos — Dark-first portfolio color palette
/// Electric Purple + Cyan for a modern developer aesthetic
class AppColors {
  AppColors._();

  // ─── Brand Colors ──────────────────────────────────────────────
  static const Color primary = Color(0xFF6C63FF); // Electric Purple
  static const Color primaryDark = Color(0xFF4B44CC); // Deep Purple
  static const Color primaryLight = Color(0xFF9B94FF); // Soft Purple
  static const Color secondary = Color(0xFF00D9FF); // Cyan
  static const Color secondaryDark = Color(0xFF00A8CC); // Deep Cyan
  static const Color secondaryLight = Color(0xFF66E8FF); // Light Cyan

  // ─── Background & Surface (Dark) ───────────────────────────────
  static const Color backgroundDark = Color(0xFF0A0E17); // Near-black blue
  static const Color surfaceDark = Color(0xFF111827); // Card backgrounds
  static const Color surfaceElevatedDark = Color(0xFF1A2235); // Elevated cards

  // ─── Background & Surface (Light) ──────────────────────────────
  static const Color backgroundLight = Color(0xFFF8FAFC);
  static const Color surfaceLight = Color(0xFFFFFFFF);
  static const Color surfaceElevatedLight = Color(0xFFF1F5F9);

  // ─── Text Colors (Dark Theme) ──────────────────────────────────
  static const Color textPrimaryDark = Color(0xFFF1F5F9);
  static const Color textSecondaryDark = Color(0xFF94A3B8);
  static const Color textMutedDark = Color(0xFF64748B);

  // ─── Text Colors (Light Theme) ─────────────────────────────────
  static const Color textPrimaryLight = Color(0xFF0F172A);
  static const Color textSecondaryLight = Color(0xFF475569);
  static const Color textMutedLight = Color(0xFF94A3B8);

  // ─── Semantic Colors ───────────────────────────────────────────
  static const Color success = Color(0xFF10B981);
  static const Color error = Color(0xFFEF4444);
  static const Color warning = Color(0xFFF59E0B);
  static const Color info = Color(0xFF3B82F6);

  // ─── Border & Divider ──────────────────────────────────────────
  static const Color borderDark = Color(0xFF1E293B);
  static const Color borderLight = Color(0xFFE2E8F0);
  static const Color dividerDark = Color(0xFF1E293B);
  static const Color dividerLight = Color(0xFFE2E8F0);

  // ─── Overlay & Shadow ──────────────────────────────────────────
  static const Color overlay = Color(0x800A0E17);
  static const Color shadowDark = Color(0x40000000);
  static const Color shadowLight = Color(0x1A0F172A);

  // ─── Glassmorphism ─────────────────────────────────────────────
  static const Color glassDark = Color(0x33111827);
  static const Color glassLight = Color(0x33FFFFFF);
  static const Color glassBorderDark = Color(0x33FFFFFF);
  static const Color glassBorderLight = Color(0x33000000);

  // ─── Gradients ─────────────────────────────────────────────────
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF6C63FF), Color(0xFF00D9FF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient primaryGradientVertical = LinearGradient(
    colors: [Color(0xFF6C63FF), Color(0xFF00D9FF)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient subtleGradient = LinearGradient(
    colors: [Color(0xFF6C63FF), Color(0xFF9B94FF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient darkBgGradient = LinearGradient(
    colors: [Color(0xFF0A0E17), Color(0xFF111827)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient cardGradientDark = LinearGradient(
    colors: [Color(0xFF111827), Color(0xFF1A2235)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // ─── Material 3 ColorScheme — Dark ─────────────────────────────
  static const ColorScheme darkScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF6C63FF),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFF4B44CC),
    onPrimaryContainer: Color(0xFFE0DEFF),
    secondary: Color(0xFF00D9FF),
    onSecondary: Color(0xFF003544),
    secondaryContainer: Color(0xFF00A8CC),
    onSecondaryContainer: Color(0xFFCCF5FF),
    tertiary: Color(0xFF9B94FF),
    onTertiary: Color(0xFF1A1633),
    tertiaryContainer: Color(0xFF6C63FF),
    onTertiaryContainer: Color(0xFFE0DEFF),
    error: Color(0xFFEF4444),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFF7F1D1D),
    onErrorContainer: Color(0xFFFEE2E2),
    surface: Color(0xFF0A0E17),
    onSurface: Color(0xFFF1F5F9),
    surfaceContainerHighest: Color(0xFF1A2235),
    onSurfaceVariant: Color(0xFF94A3B8),
    outline: Color(0xFF64748B),
    outlineVariant: Color(0xFF1E293B),
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    inverseSurface: Color(0xFFF1F5F9),
    onInverseSurface: Color(0xFF0A0E17),
    inversePrimary: Color(0xFF4B44CC),
  );

  // ─── Material 3 ColorScheme — Light ────────────────────────────
  static const ColorScheme lightScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF6C63FF),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFE0DEFF),
    onPrimaryContainer: Color(0xFF1A1633),
    secondary: Color(0xFF00A8CC),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFCCF5FF),
    onSecondaryContainer: Color(0xFF003544),
    tertiary: Color(0xFF4B44CC),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFE0DEFF),
    onTertiaryContainer: Color(0xFF1A1633),
    error: Color(0xFFDC2626),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFFEE2E2),
    onErrorContainer: Color(0xFF7F1D1D),
    surface: Color(0xFFF8FAFC),
    onSurface: Color(0xFF0F172A),
    surfaceContainerHighest: Color(0xFFE2E8F0),
    onSurfaceVariant: Color(0xFF475569),
    outline: Color(0xFF94A3B8),
    outlineVariant: Color(0xFFE2E8F0),
    shadow: Color(0xFF0F172A),
    scrim: Color(0xFF0F172A),
    inverseSurface: Color(0xFF0F172A),
    onInverseSurface: Color(0xFFF8FAFC),
    inversePrimary: Color(0xFF9B94FF),
  );
}

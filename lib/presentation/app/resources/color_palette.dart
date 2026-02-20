// part of '../app.dart';

import 'package:flutter/material.dart';

/// Boleh begini, karena `primarySwatch` di bawah adalah `const`.
const MaterialColor primaryMColor = ColorPalette.primarySwatch;

class ColorPalette {
  // === Primary / Purple brand ===

  /// MaterialColor butuh INT ARGB, bukan Color.
  static const int _primaryColorValue = 0xFF4F46E5;

  /// Alias color utama (Color dari INT di atas).
  static const Color primaryColor = Color(_primaryColorValue);

  /// Alias: kPurple = kPurple600 (primary shade).
  static const Color kPurple = kPurple600;

  /// Swatch untuk ThemeData(primarySwatch: ...)
  static const MaterialColor primarySwatch = MaterialColor(
    _primaryColorValue,
    <int, Color>{
      50: kPurple50,
      100: kPurple100,
      200: kPurple200,
      300: kPurple300,
      400: kPurple400,
      500: kPurple500,
      600: kPurple600,
      700: kPurple700,
      800: kPurple800,
      900: kPurple900,
    },
  );

  // === Purples 50–900 (primary: 0xFF4F46E5) ===
  static const Color kPurple50 = Color(0xFFEEEDFD);
  static const Color kPurple100 = Color(0xFFD5D3FA);
  static const Color kPurple200 = Color(0xFFB9B5F7);
  static const Color kPurple300 = Color(0xFF9D97F3);
  static const Color kPurple400 = Color(0xFF7B74EE);
  static const Color kPurple500 = Color(0xFF6259EA);
  static const Color kPurple600 = Color(0xFF4F46E5); // base / primary
  static const Color kPurple700 = Color(0xFF3D35C2);
  static const Color kPurple800 = Color(0xFF2D27A0);
  static const Color kPurple900 = Color(0xFF1E1A7E);

  // === Reds (kept for other usages) ===
  static const Color kRed50 = Color(0xFFF8BABC);
  static const Color kRed100 = Color(0xFFF8A5A8);
  static const Color kRed200 = Color(0xFFF5878B);
  static const Color kRed300 = Color(0xFFF36F74);
  static const Color kRed400 = Color(0xFFF15359);
  static const Color kRed500 = Color(0xFFEF373E);
  static const Color kRed600 = Color(0xFFED1C24);
  static const Color kRed700 = Color(0xFFDF121A);
  static const Color kRed800 = Color(0xFFC91017);
  static const Color kRed900 = Color(0xFFB40E15);

  // === Greens (biarkan sesuai definisi kamu) ===
  static const Color kGreen100 = Color(0xFFEAF6ED);
  static const Color kGreen200 = Color(0xFF17DB94);
  static const Color kGreen300 = Color(0xFFF0F9F4);
  static const Color kGreen400 = Color(0xFF3AA76D);
  static const Color kGreen600 = Color(0xFF3AA76D);
  static const Color kGreen700 = Color(0xFF0C8E5A);
  static const Color kGreen800 = Color(0xFF08754A);
  static const Color kGreen900 = Color(0xFF055C3B);

  // === Whites / Greys ===
  static const Color kWhite = Colors.white; // boleh const
  static const Color kWhite50 = Color(0xFFFFFFFF);
  static const Color kWhite100 = Color(0xFFF5F5F5);
  static const Color kWhite200 = Color(0xFFEEEEEE);
  static const Color kWhite300 = Color(0xFFE0E0E0);
  static const Color kWhite400 = Color(0xFFBDBDBD);
  static const Color kWhite500 = Color(0xFF9E9E9E);
  static const Color kWhite600 = Color(0xFF757575);
  static const Color kWhite700 = Color(0xFF616161);
  static const Color kWhite800 = Color(0xFF424242);
  static const Color kWhite900 = Color(0xFF212121);

  // === Greys 50–900 (Tailwind-style) ===
  static const Color kGrey50 = Color(0xFFF9FAFB);
  static const Color kGrey100 = Color(0xFFF3F4F6);
  static const Color kGrey200 = Color(0xFFE5E7EB);
  static const Color kGrey300 = Color(0xFFD1D5DB);
  static const Color kGrey400 = Color(0xFF9CA3AF);
  static const Color kGrey500 = Color(0xFF6B7280);
  static const Color kGrey600 = Color(0xFF4B5563);
  static const Color kGrey700 = Color(0xFF374151);
  static const Color kGrey800 = Color(0xFF1F2937);
  static const Color kGrey900 = Color(0xFF111827);

  /// Legacy aliases – kept for backward compatibility
  static const Color kGray = kGrey200;
  static const Color kGray100 = kGrey300;
  static const Color kGray200 = Color(0xFFC6CDD1);
  static const Color kGrayHintText = kGrey500;

  static const Color kBlack = Colors.black;
  static const Color kOrange = Color(0xFFED6E33);
  static const Color kOrange100 = Color(0xFFFFFAF0);
  static const Color kOrange200 = Color(0xFFFFC043);
  static const Color kBlue = Color(0xFF276EF1);
  static const Color kBlue100 = Color(0xFFEEF3FE);

  // Banner (hasil operasi runtime -> pakai `final`, bukan `const`)
  static final Color kBanerRed = Colors.red.withValues(alpha: 0.6);
  static final Color kBanerBlue = Colors.blue.withValues(alpha: 0.6);

  // Backgrounds
  static const Color scaffoldBackground = Color(0xFFF9FAFB);
  static const Color scaffoldBackgroundAppBar = Colors.white;

  static const LinearGradient kGradient = LinearGradient(
    begin: Alignment(0, 0.50),
    end: Alignment(1, 0.50),
    colors: [Color(0xFF10BE77), Color(0xFF2196F3)],
  );
}

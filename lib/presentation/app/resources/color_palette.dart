// part of '../app.dart';

import 'package:flutter/material.dart';

/// Boleh begini, karena `primarySwatch` di bawah adalah `const`.
const MaterialColor primaryMColor = ColorPalette.primarySwatch;

class ColorPalette {
  // === Primary / Red brand ===

  /// MaterialColor butuh INT ARGB, bukan Color.
  static const int _primaryColorValue = 0xFFEF373E;

  /// Alias color utama (Color dari INT di atas).
  static const Color primaryColor = Color(_primaryColorValue);

  /// Opsional alias: kRed = kRed500 biar mudah dipakai di mana-mana.
  static const Color kRed = kRed500;

  /// Swatch untuk ThemeData(primarySwatch: ...)
  static const MaterialColor primarySwatch = MaterialColor(
    _primaryColorValue,
    <int, Color>{
      50: kRed50,
      100: kRed100,
      200: kRed200,
      300: kRed300,
      400: kRed400,
      500: kRed500, // jangan pakai `kRed` kalau belum didefinisikan
      600: kRed600,
      700: kRed700,
      800: kRed800,
      900: kRed900,
    },
  );

  // === Reds 50–900 ===
  static const Color kRed50 = Color(0xFFF8BABC);
  static const Color kRed100 = Color(0xFFF8A5A8);
  static const Color kRed200 = Color(0xFFF5878B);
  static const Color kRed300 = Color(0xFFF36F74);
  static const Color kRed400 = Color(0xFFF15359);
  static const Color kRed500 = Color(0xFFEF373E); // base
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

  static const Color kGray = Color(0xFFE8E8E8);
  static const Color kGray100 = Color(0xFFD9D9D9);
  static const Color kGray200 = Color(0xFFC6CDD1);
  static const Color kGrayHintText = Color(0xFF5E5E5E);
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
  static const Color scaffoldBackground = Colors.white;
  static const Color scaffoldBackgroundAppBar = Colors.white;

  static const LinearGradient kGradient = LinearGradient(
    begin: Alignment(0, 0.50),
    end: Alignment(1, 0.50),
    colors: [Color(0xFF10BE77), Color(0xFF2196F3)],
  );
}

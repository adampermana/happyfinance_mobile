// Defined for custom theme template
import 'package:flutter/material.dart';
import 'package:happyfinance_mobile/presentation/app/resources/color_palette.dart';

class AppTheme {
  // Light theme for light mode brightness
  static ThemeData get lightTheme {
    final base = ThemeData.light(useMaterial3: false).copyWith(
      colorScheme:
          ColorScheme.fromSwatch(
            primarySwatch: ColorPalette.primarySwatch,
            cardColor: const Color(0x66101010),
          ).copyWith(
            // Override surface untuk menu konteks text selection
            surface: const Color(0xFFF0F0F3),
          ),
      primaryColor: ColorPalette.primaryColor,
      scaffoldBackgroundColor: ColorPalette.scaffoldBackground,
      dividerColor: Colors.black.withValues(alpha: 0.5),
      unselectedWidgetColor: Colors.black.withValues(alpha: 0.5),
      cardColor: const Color(0xFFF0F0F3),
      shadowColor: Colors.black.withValues(alpha: 0.1),
    );

    // Combine with common theme data then return
    return _buildThemeData(base);
  }

  // Build common theme data for all brightness
  static ThemeData _buildThemeData(ThemeData base) {
    final textTheme = _buildTextTheme(base);
    return ThemeData(
      brightness: base.brightness,
      useMaterial3: false,
      colorScheme: base.colorScheme,
      textTheme: textTheme,
      appBarTheme: _buildAppBarTheme(base),
      tabBarTheme: _buildTabbarTheme(base),
      cardColor: base.cardColor,
      iconTheme: _buildIconThemeData(base),
      inputDecorationTheme: _buildInputDecorationTheme(
        base.copyWith(textTheme: textTheme),
      ),
      floatingActionButtonTheme: _buildFloatingActionButtonTheme(base),
      // outlinedButtonTheme: _buildOutlinedButtonThemeData(base),
      elevatedButtonTheme: _buildElevatedButtonThemeData(base),
      textButtonTheme: _buildTextButtonThemeData(base),
      dividerTheme: _buildDividerTheme(base),
      checkboxTheme: _buildCheckboxThemeData(base),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showSelectedLabels: true,
        selectedItemColor: base.colorScheme.primary,
        selectedLabelStyle: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
        ),
        showUnselectedLabels: true,
        unselectedLabelStyle: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
        ),
      ),
      chipTheme: ChipThemeData(
        selectedColor: base.colorScheme.primary,
        backgroundColor: base.colorScheme.surface,
        elevation: 0,
        pressElevation: 0,
      ),
      primaryColor: base.primaryColor,
      scaffoldBackgroundColor: base.scaffoldBackgroundColor,
      dividerColor: base.dividerColor,
      unselectedWidgetColor: base.unselectedWidgetColor,
      shadowColor: base.shadowColor,
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith<Color?>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.disabled)) {
            return null;
          }
          if (states.contains(WidgetState.selected)) {
            return ColorPalette.primaryColor;
          }
          return null;
        }),
        trackColor: WidgetStateProperty.resolveWith<Color?>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.disabled)) {
            return null;
          }
          if (states.contains(WidgetState.selected)) {
            return ColorPalette.primaryColor;
          }
          return null;
        }),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith<Color?>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.disabled)) {
            return null;
          }
          if (states.contains(WidgetState.selected)) {
            return ColorPalette.primaryColor;
          }
          return null;
        }),
      ),
    );
  }

  static CheckboxThemeData _buildCheckboxThemeData(ThemeData base) {
    return CheckboxThemeData(
      fillColor: WidgetStateProperty.all<Color>(base.colorScheme.primary),
      checkColor: WidgetStateProperty.all<Color>(base.colorScheme.surface),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      side: BorderSide(color: base.colorScheme.outline),
    );
  }

  static AppBarTheme _buildAppBarTheme(ThemeData theme) {
    return AppBarTheme(
      centerTitle: false,
      // color: Colors.red,
      backgroundColor: ColorPalette.scaffoldBackgroundAppBar,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: theme.colorScheme.onSurface,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      iconTheme: const IconThemeData(
        color: ColorPalette.kBlack, // Ikon disesuaikan
      ),
      actionsIconTheme: const IconThemeData(color: ColorPalette.kBlack),
    );
  }

  static TabBarThemeData _buildTabbarTheme(ThemeData theme) => TabBarThemeData(
    indicatorSize: TabBarIndicatorSize.tab,
    dividerColor: Colors.transparent,
    indicator: const UnderlineTabIndicator(
      borderSide: BorderSide(color: Color(0xFF10BE77), width: 3),
      insets: EdgeInsets.symmetric(horizontal: 16),
    ),
    labelStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
    labelColor: theme.textTheme.titleMedium?.color,
    unselectedLabelStyle: const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 14,
    ),
  );

  static FloatingActionButtonThemeData _buildFloatingActionButtonTheme(
    ThemeData theme,
  ) => theme.floatingActionButtonTheme.copyWith(
    backgroundColor: theme.primaryColor,
  );

  static InputDecorationTheme _buildInputDecorationTheme(ThemeData theme) =>
      InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        hintStyle: theme.textTheme.bodySmall!.copyWith(
          color: ColorPalette.kGrayHintText.withValues(alpha: 0.5),
          fontSize: 12,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: theme.dividerColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: theme.dividerColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: theme.colorScheme.primary),
        ),
      );

  static ElevatedButtonThemeData _buildElevatedButtonThemeData(
    ThemeData theme,
  ) => ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      foregroundColor: Colors.white,
      backgroundColor: ColorPalette.primaryColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

  static TextButtonThemeData _buildTextButtonThemeData(ThemeData theme) =>
      TextButtonThemeData(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(8),
          foregroundColor: theme.colorScheme.onSecondary,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
      );

  static IconThemeData _buildIconThemeData(ThemeData theme) =>
      theme.iconTheme.copyWith(color: ColorPalette.kBlack);

  static TextTheme _buildTextTheme(ThemeData base) {
    final textTheme = base.textTheme;
    return base.textTheme
        .copyWith(
          displayLarge: textTheme.displayLarge!.copyWith(
            fontWeight: FontWeight.w800,
            fontSize: 57,
            fontFamily: 'Satoshi Variable',
            color: ColorPalette.kBlack,
          ),
          displayMedium: textTheme.displayMedium!.copyWith(
            fontWeight: FontWeight.w700,
            fontFamily: 'Satoshi Variable',
            fontSize: 45,
            color: ColorPalette.kBlack,
          ),
          displaySmall: textTheme.displaySmall!.copyWith(
            fontWeight: FontWeight.w700,
            fontFamily: 'Satoshi Variable',
            fontSize: 36,
            color: ColorPalette.kBlack,
          ),
          headlineLarge: textTheme.headlineLarge!.copyWith(
            fontWeight: FontWeight.w600,
            fontFamily: 'Satoshi Variable',
            fontSize: 32,
            color: ColorPalette.kBlack,
          ),
          headlineMedium: textTheme.headlineMedium!.copyWith(
            fontWeight: FontWeight.w600,
            fontFamily: 'Satoshi Variable',
            fontSize: 28,
            color: ColorPalette.kBlack,
          ),
          headlineSmall: textTheme.headlineSmall!.copyWith(
            fontWeight: FontWeight.w600,
            fontFamily: 'Satoshi Variable',
            fontSize: 24,
            color: ColorPalette.kBlack,
          ),
          titleLarge: textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.w800,
            fontSize: 22,
            color: ColorPalette.kBlack,
          ),
          titleMedium: textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.w700,
            fontFamily: 'Satoshi Variable',
            fontSize: 16,
            color: ColorPalette.kBlack,
          ),
          titleSmall: textTheme.titleSmall!.copyWith(
            fontWeight: FontWeight.w500,
            fontFamily: 'Satoshi Variable',
            fontSize: 14,
            color: ColorPalette.kBlack,
          ),
          bodyLarge: textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.w700,
            fontFamily: 'Satoshi Variable',
            fontSize: 14,
            color: ColorPalette.kBlack,
          ),
          bodyMedium: textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.w600,
            fontFamily: 'Satoshi Variable',
            fontSize: 12,
            color: ColorPalette.kBlack,
          ),
          bodySmall: textTheme.bodySmall!.copyWith(
            fontWeight: FontWeight.w500,
            fontFamily: 'Satoshi Variable',
            fontSize: 10,
            color: ColorPalette.kBlack,
          ),
          labelLarge: textTheme.labelLarge!.copyWith(
            fontSize: 14,
            fontFamily: 'Satoshi Variable',
            fontWeight: FontWeight.w700,
            color: ColorPalette.kBlack,
          ),
          labelMedium: textTheme.labelMedium!.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: ColorPalette.kBlack,
          ),
          labelSmall: textTheme.labelSmall!.copyWith(
            fontWeight: FontWeight.w500,
            fontFamily: 'Satoshi Variable',
            fontSize: 10,
            color: ColorPalette.kBlack,
          ),
        )
        .apply(
          fontFamily: 'Satoshi Variable',
          displayColor: ColorPalette.kBlack,
          bodyColor: ColorPalette.kBlack,

          decorationColor: ColorPalette.kBlack,
        );
  }

  static DividerThemeData _buildDividerTheme(ThemeData base) =>
      base.dividerTheme.copyWith(color: base.dividerColor, thickness: 1);
}

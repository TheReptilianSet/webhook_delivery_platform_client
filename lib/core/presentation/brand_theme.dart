import 'package:flutter/material.dart';

abstract final class BrandColors {
  static const canvas = Color(0xFFF4F6F5);
  static const surface = Color(0xFFFFFFFF);
  static const ink = Color(0xFF171B1F);
  static const inkRaised = Color(0xFF22282D);
  static const inkMuted = Color(0xFFAEB7B3);
  static const muted = Color(0xFF626B68);
  static const line = Color(0xFFCED5D2);
  static const route = Color(0xFF3F6EF5);
  static const endpoint = Color(0xFF19A58C);
  static const retry = Color(0xFFE3A325);
  static const success = Color(0xFF16845B);
  static const error = Color(0xFFC5444C);
}

abstract final class RelayTheme {
  static ThemeData light() {
    final colorScheme =
        ColorScheme.fromSeed(
          seedColor: BrandColors.route,
          brightness: Brightness.light,
          surface: BrandColors.surface,
        ).copyWith(
          primary: BrandColors.route,
          onPrimary: Colors.white,
          secondary: BrandColors.endpoint,
          onSecondary: BrandColors.ink,
          tertiary: BrandColors.retry,
          onTertiary: BrandColors.ink,
          error: BrandColors.error,
          onError: Colors.white,
          onSurface: BrandColors.ink,
          outline: BrandColors.line,
          outlineVariant: BrandColors.line,
          surfaceContainerLowest: BrandColors.surface,
          surfaceContainerLow: BrandColors.canvas,
          surfaceContainer: const Color(0xFFECEFEE),
          surfaceContainerHigh: const Color(0xFFE5E9E7),
        );
    const compactRadius = BorderRadius.all(Radius.circular(4));
    const controlShape = RoundedRectangleBorder(borderRadius: compactRadius);
    final base = ThemeData(
      brightness: Brightness.light,
      colorScheme: colorScheme,
      fontFamily: 'RelaySans',
      scaffoldBackgroundColor: BrandColors.canvas,
      useMaterial3: true,
    );
    final textTheme = base.textTheme.copyWith(
      headlineMedium: base.textTheme.headlineMedium?.copyWith(
        color: BrandColors.ink,
        fontWeight: FontWeight.w700,
        letterSpacing: 0,
      ),
      headlineSmall: base.textTheme.headlineSmall?.copyWith(
        color: BrandColors.ink,
        fontWeight: FontWeight.w700,
        letterSpacing: 0,
      ),
      titleLarge: base.textTheme.titleLarge?.copyWith(
        color: BrandColors.ink,
        fontWeight: FontWeight.w700,
        letterSpacing: 0,
      ),
      titleMedium: base.textTheme.titleMedium?.copyWith(
        color: BrandColors.ink,
        fontWeight: FontWeight.w700,
        letterSpacing: 0,
      ),
      bodyMedium: base.textTheme.bodyMedium?.copyWith(
        color: BrandColors.ink,
        letterSpacing: 0,
      ),
      labelLarge: base.textTheme.labelLarge?.copyWith(
        fontWeight: FontWeight.w700,
        letterSpacing: 0,
      ),
      labelMedium: base.textTheme.labelMedium?.copyWith(
        fontWeight: FontWeight.w700,
        letterSpacing: 0,
      ),
    );

    return base.copyWith(
      textTheme: textTheme,
      dividerColor: BrandColors.line,
      dividerTheme: const DividerThemeData(
        color: BrandColors.line,
        thickness: 1,
        space: 1,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: BrandColors.ink,
        foregroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: BrandColors.surface,
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: compactRadius,
          borderSide: BorderSide(color: BrandColors.line),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: compactRadius,
          borderSide: BorderSide(color: BrandColors.line),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: compactRadius,
          borderSide: BorderSide(color: BrandColors.route, width: 2),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size(0, 44),
          padding: const EdgeInsets.symmetric(horizontal: 18),
          shape: controlShape,
          textStyle: textTheme.labelLarge,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(0, 44),
          padding: const EdgeInsets.symmetric(horizontal: 18),
          shape: controlShape,
          side: const BorderSide(color: BrandColors.line),
          textStyle: textTheme.labelLarge,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          minimumSize: const Size(40, 40),
          shape: controlShape,
          textStyle: textTheme.labelLarge,
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          minimumSize: const Size.square(40),
          shape: controlShape,
        ),
      ),
      listTileTheme: const ListTileThemeData(
        iconColor: BrandColors.muted,
        textColor: BrandColors.ink,
        minVerticalPadding: 12,
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      ),
      dialogTheme: const DialogThemeData(
        backgroundColor: BrandColors.surface,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
      ),
      cardTheme: const CardThemeData(
        color: BrandColors.surface,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          side: BorderSide(color: BrandColors.line),
        ),
      ),
      popupMenuTheme: const PopupMenuThemeData(
        color: BrandColors.surface,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
      ),
      expansionTileTheme: const ExpansionTileThemeData(
        backgroundColor: BrandColors.surface,
        collapsedBackgroundColor: BrandColors.surface,
        iconColor: BrandColors.route,
        collapsedIconColor: BrandColors.muted,
        shape: Border(bottom: BorderSide(color: BrandColors.line)),
        collapsedShape: Border(bottom: BorderSide(color: BrandColors.line)),
        tilePadding: EdgeInsets.symmetric(horizontal: 16),
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: BrandColors.ink,
        contentTextStyle: TextStyle(color: Colors.white),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: compactRadius),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: BrandColors.route,
        linearTrackColor: BrandColors.line,
        circularTrackColor: BrandColors.line,
      ),
      tooltipTheme: const TooltipThemeData(
        decoration: BoxDecoration(
          color: BrandColors.ink,
          borderRadius: compactRadius,
        ),
        textStyle: TextStyle(color: Colors.white),
      ),
    );
  }

  static ThemeData darkPanel(ThemeData base) => base.copyWith(
    brightness: Brightness.dark,
    colorScheme: base.colorScheme.copyWith(
      brightness: Brightness.dark,
      primary: BrandColors.route,
      surface: BrandColors.inkRaised,
      onSurface: Colors.white,
      outline: Colors.white24,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: BrandColors.inkRaised,
      isDense: true,
      labelStyle: TextStyle(color: BrandColors.inkMuted),
      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 13),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(color: Colors.white24),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(color: Colors.white24),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(color: BrandColors.route, width: 2),
      ),
    ),
    dropdownMenuTheme: const DropdownMenuThemeData(
      menuStyle: MenuStyle(
        backgroundColor: WidgetStatePropertyAll(BrandColors.inkRaised),
      ),
    ),
    canvasColor: BrandColors.inkRaised,
  );
}

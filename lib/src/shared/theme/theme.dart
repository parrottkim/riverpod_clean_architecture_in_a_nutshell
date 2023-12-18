import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

class KeyColor {
  static Color primary = const Color(0xFF006971);
  static Color secondary = const Color(0xFF4A6365);
  static Color tertiary = const Color(0xFF505E7D);
  static Color neutral = const Color(0xFF5C5F5F);
  static Color neutralVariant = const Color(0xFF566061);
  static Color error = const Color(0xFFBA1A1A);
}

TextTheme textTheme = TextTheme(
  displayLarge: const TextStyle(
    fontSize: 57.0,
    height: 1.2,
  ).withLetterSpacing(-4),
  displayMedium: const TextStyle(
    fontSize: 45.0,
    height: 1.2,
  ).withLetterSpacing(-4),
  displaySmall: const TextStyle(
    fontSize: 36.0,
    height: 1.2,
  ).withLetterSpacing(-4),
  headlineLarge: const TextStyle(
    fontSize: 32.0,
    height: 1.2,
  ).withLetterSpacing(-4),
  headlineMedium: const TextStyle(
    fontSize: 28.0,
    height: 1.2,
  ).withLetterSpacing(-4),
  headlineSmall: const TextStyle(
    fontSize: 24.0,
    height: 1.2,
  ).withLetterSpacing(-4),
  titleLarge: const TextStyle(
    fontSize: 22.0,
    height: 1.2,
  ).withLetterSpacing(-4),
  titleMedium: const TextStyle(
    fontSize: 16.0,
    height: 1.2,
  ).withLetterSpacing(-4),
  titleSmall: const TextStyle(
    fontSize: 14.0,
    height: 1.2,
  ).withLetterSpacing(-4),
  labelLarge: const TextStyle(
    fontSize: 14.0,
    height: 1.2,
  ).withLetterSpacing(-2),
  labelMedium: const TextStyle(
    fontSize: 12.0,
    height: 1.2,
  ).withLetterSpacing(-2),
  labelSmall: const TextStyle(
    fontSize: 11.0,
    height: 1.2,
  ).withLetterSpacing(-2),
  bodyLarge: const TextStyle(
    fontSize: 16.0,
    height: 1.2,
  ).withLetterSpacing(-2),
  bodyMedium: const TextStyle(
    fontSize: 14.0,
    height: 1.2,
  ).withLetterSpacing(-2),
  bodySmall: const TextStyle(
    fontSize: 12.0,
    height: 1.2,
  ).withLetterSpacing(-2),
);

extension Material3Palette on Color {
  Color tone(int tone) {
    assert(tone >= 0 && tone <= 100);
    final color = Hct.fromInt(value);
    final tonalPalette = TonalPalette.of(color.hue, color.chroma);
    return Color(tonalPalette.get(tone));
  }
}

extension PercentageLetterSpacing on TextStyle {
  TextStyle withLetterSpacing(double percentage) {
    double letterSpacing = double.parse(((percentage / 100) * fontSize!)
        .toStringAsFixed(2)); // toStringAsFixed(2): to two decimal places
    return copyWith(letterSpacing: letterSpacing);
  }
}

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Pretendard',
  textTheme: textTheme,
  colorScheme: ColorScheme.light(
    brightness: Brightness.light,
    primary: KeyColor.primary,
    onPrimary: KeyColor.primary.tone(100),
    primaryContainer: KeyColor.primary.tone(90),
    onPrimaryContainer: KeyColor.primary.tone(10),
    secondary: KeyColor.secondary,
    onSecondary: KeyColor.secondary.tone(100),
    secondaryContainer: KeyColor.secondary.tone(90),
    onSecondaryContainer: KeyColor.secondary.tone(10),
    tertiary: KeyColor.tertiary,
    onTertiary: KeyColor.tertiary.tone(100),
    tertiaryContainer: KeyColor.tertiary.tone(90),
    onTertiaryContainer: KeyColor.tertiary.tone(10),
    error: KeyColor.error.tone(40),
    onError: KeyColor.error.tone(100),
    errorContainer: KeyColor.error.tone(90),
    onErrorContainer: KeyColor.error.tone(10),
    background: KeyColor.neutral.tone(99),
    onBackground: KeyColor.neutral.tone(10),
    surface: KeyColor.neutral.tone(99),
    onSurface: KeyColor.neutral.tone(10),
    surfaceVariant: KeyColor.neutralVariant.tone(90),
    onSurfaceVariant: KeyColor.neutralVariant.tone(30),
    outline: KeyColor.neutralVariant.tone(50),
    outlineVariant: KeyColor.neutralVariant.tone(80),
    scrim: KeyColor.neutral.tone(0),
    shadow: KeyColor.neutral.tone(0),
    inverseSurface: KeyColor.neutral.tone(20),
    onInverseSurface: KeyColor.neutral.tone(95),
    inversePrimary: KeyColor.primary.tone(90),
  ),
);

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Pretendard',
  textTheme: textTheme,
  colorScheme: ColorScheme.dark(
    brightness: Brightness.dark,
    primary: KeyColor.primary.tone(80),
    onPrimary: KeyColor.primary.tone(20),
    primaryContainer: KeyColor.primary.tone(30),
    onPrimaryContainer: KeyColor.primary.tone(90),
    secondary: KeyColor.secondary.tone(80),
    onSecondary: KeyColor.secondary.tone(20),
    secondaryContainer: KeyColor.secondary.tone(30),
    onSecondaryContainer: KeyColor.secondary.tone(90),
    tertiary: KeyColor.tertiary.tone(80),
    onTertiary: KeyColor.tertiary.tone(20),
    tertiaryContainer: KeyColor.tertiary.tone(30),
    onTertiaryContainer: KeyColor.tertiary.tone(90),
    error: KeyColor.error.tone(80),
    onError: KeyColor.error.tone(20),
    errorContainer: KeyColor.error.tone(30),
    onErrorContainer: KeyColor.error.tone(90),
    surface: KeyColor.neutral.tone(6),
    onSurface: KeyColor.neutral.tone(90),
    surfaceVariant: KeyColor.neutralVariant.tone(30),
    onSurfaceVariant: KeyColor.neutralVariant.tone(80),
    outline: KeyColor.neutralVariant.tone(60),
    outlineVariant: KeyColor.neutralVariant.tone(30),
    inverseSurface: KeyColor.neutral.tone(90),
    onInverseSurface: KeyColor.neutral.tone(20),
    inversePrimary: KeyColor.primary.tone(40),
  ),
);

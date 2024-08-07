part of '../app_theme_ext.dart';

class _AppTextSize {
  static const double t57 = 57;
  static const double t45 = 45;
  static const double t36 = 36;
  static const double t32 = 32;
  static const double t28 = 28;
  static const double t24 = 24;
  static const double t22 = 22;
  static const double t16 = 16;
  static const double t14 = 14;
  static const double t12 = 12;
  static const double t11 = 11;
}

class _AppTextStyle {
  _AppTextStyle._();

  static TextTheme textTheme = const TextTheme(
    displayLarge: _displayLarge,
    displayMedium: _displayMedium,
    displaySmall: _displaySmall,
    headlineLarge: _headlineLarge,
    headlineMedium: _headlineMedium,
    headlineSmall: _headlineSmall,
    titleLarge: _titleLarge,
    titleMedium: _titleMedium,
    titleSmall: _titleSmall,
    labelLarge: _labelLarge,
    labelMedium: _labelMedium,
    labelSmall: _labelSmall,
    bodyLarge: _bodyLarge,
    bodyMedium: _bodyMedium,
  );

  static const TextStyle _displayLarge = TextStyle(
    fontSize: _AppTextSize.t57,
    fontWeight: FontWeight.w900,
  );

  static const TextStyle _displayMedium = TextStyle(
    fontSize: _AppTextSize.t45,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle _displaySmall = TextStyle(
    fontSize: _AppTextSize.t36,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle _headlineLarge = TextStyle(
    fontSize: _AppTextSize.t32,
    fontWeight: FontWeight.w900,
  );

  static const TextStyle _headlineMedium = TextStyle(
    fontSize: _AppTextSize.t28,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle _headlineSmall = TextStyle(
    fontSize: _AppTextSize.t24,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle _titleLarge = TextStyle(
    fontSize: _AppTextSize.t22,
    fontWeight: FontWeight.w900,
  );

  static const TextStyle _titleMedium = TextStyle(
    fontSize: _AppTextSize.t16,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle _titleSmall = TextStyle(
    fontSize: _AppTextSize.t14,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle _labelLarge = TextStyle(
    fontSize: _AppTextSize.t14,
    fontWeight: FontWeight.w900,
  );

  static const TextStyle _labelMedium = TextStyle(
    fontSize: _AppTextSize.t12,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle _labelSmall = TextStyle(
    fontSize: _AppTextSize.t11,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle _bodyLarge = TextStyle(
    fontSize: _AppTextSize.t16,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle _bodyMedium = TextStyle(
    fontSize: _AppTextSize.t14,
    fontWeight: FontWeight.w300,
  );
}

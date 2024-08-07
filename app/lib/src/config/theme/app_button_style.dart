part of '../app_theme_ext.dart';

class _AppButtonStyle {
  static ButtonStyle? get filledButtonStyle => ButtonStyle(
        textStyle: WidgetStateProperty.resolveWith<TextStyle?>(
          (Set<WidgetState> states) => AppThemeExt.of.textTheme.labelMedium,
        ),
        iconColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) => AppThemeExt.of.colorScheme.onPrimary,
        ),
      );

  static ButtonStyle? get textButtonStyle => ButtonStyle(
        textStyle: WidgetStateProperty.resolveWith<TextStyle?>(
          (Set<WidgetState> states) => AppThemeExt.of.textTheme.labelMedium,
        ),
      );

  static ButtonStyle? get outlinedButtonStyle => ButtonStyle(
        textStyle: WidgetStateProperty.resolveWith<TextStyle?>(
          (Set<WidgetState> states) => AppThemeExt.of.textTheme.labelMedium,
        ),
      );
}

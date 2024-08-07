part of '../app_theme_ext.dart';

class _AppThemeData {
  _AppThemeData._();

  static ThemeData lightTheme = themeData(Brightness.light);
  static ThemeData darkTheme = themeData(Brightness.dark);

  static ThemeData themeData(Brightness brightness) {
    final lightColorScheme = _MaterialTheme.lightScheme().toColorScheme();
    final darkColorScheme = _MaterialTheme.darkScheme().toColorScheme();
    final isDarkBrightness = brightness == Brightness.dark;
    final colorScheme = isDarkBrightness ? darkColorScheme : lightColorScheme;

    /// NOTE:
    /// Use Default MaterialDesign FontFamily (Roboto)
    /// Only modify them color
    return ThemeData(
      // Use Material Design version 3
      useMaterial3: true,
      brightness: colorScheme.brightness,
      colorScheme: colorScheme,
      textTheme: _AppTextStyle.textTheme.apply(
        fontFamily: R.roboto,
        displayColor: colorScheme.onSurface,
        bodyColor: colorScheme.onSurface,
        decorationColor: colorScheme.onSurface,
      ),
      scaffoldBackgroundColor: colorScheme.surface,
      canvasColor: colorScheme.surface,
      filledButtonTheme:
          FilledButtonThemeData(style: _AppButtonStyle.filledButtonStyle),
      textButtonTheme:
          TextButtonThemeData(style: _AppButtonStyle.textButtonStyle),
      outlinedButtonTheme:
          OutlinedButtonThemeData(style: _AppButtonStyle.outlinedButtonStyle),
      // textSelectionTheme: TextSelectionThemeData(
      //   cursorColor: appColor.primaryColor,
      //   selectionColor: appColor.primaryColor,
      //   selectionHandleColor: appColor.primaryColor,
      // ),
      // cupertinoOverrideTheme:
      //     CupertinoThemeData(primaryColor: appColor.primaryColor),
    );
  }
}

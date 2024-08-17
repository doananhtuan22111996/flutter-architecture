import 'package:flutter/material.dart';

import '../exts/R.dart';

part 'theme/app_theme.dart';

part 'theme/app_color_scheme.dart';

part 'theme/app_text_style.dart';

part 'theme/app_button_style.dart';

class AppThemeExt {
  AppThemeExt._();

  static AppThemeExt get of => AppThemeExt._();

  @protected
  final double _sizeBase = 4.0;

  final lightTheme = _AppThemeData.lightTheme;

  final darkTheme = _AppThemeData.darkTheme;

  double Function(num x) get majorScale => (x) => _sizeBase * x;
}

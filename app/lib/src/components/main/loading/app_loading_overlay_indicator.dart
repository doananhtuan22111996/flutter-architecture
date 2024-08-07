import 'package:flutter/material.dart';
import 'package:flutter_loadingindicator/flutter_loadingindicator.dart';

import '../../../config/app_theme_ext.dart';

class AppLoadingOverlayWidget {
  static TransitionBuilder init() {
    return EasyLoading.init();
  }

  static void configure(BuildContext context) {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.circle
      ..indicatorSize = AppThemeExt.of.majorScale(12)
      ..radius = AppThemeExt.of.majorScale(2)
      ..backgroundColor = AppThemeExt.of.colorScheme.surface
      ..indicatorColor = AppThemeExt.of.colorScheme.primary
      ..progressColor = AppThemeExt.of.colorScheme.primary.withOpacity(0.6)
      ..textColor = AppThemeExt.of.colorScheme.surface
      ..maskColor = AppThemeExt.of.colorScheme.surface.withOpacity(0.6)
      ..userInteractions = false
      ..dismissOnTap = false;
  }

  static void show({String? message}) {
    EasyLoading.show(status: message);
  }

  static void dismiss({bool animation = true}) {
    EasyLoading.dismiss(animation: animation);
  }
}

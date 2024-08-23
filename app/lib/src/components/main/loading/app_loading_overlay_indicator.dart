import 'package:flutter/material.dart';
import 'package:flutter_loadingindicator/flutter_loadingindicator.dart';

import '../../../config/app_theme_ext.dart';

class AppLoadingOverlayWidget {
  static TransitionBuilder init() {
    return EasyLoading.init();
  }

  static void configure(BuildContext context) {
    EasyLoading.instance
      ..loadingStyle = EasyLoadingStyle.custom
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.threeBounce
      ..indicatorSize = AppThemeExt.of.majorScale(12)
      ..radius = AppThemeExt.of.majorScale(2)
      ..backgroundColor = Theme.of(context).colorScheme.onSurface
      ..indicatorColor = Theme.of(context).colorScheme.primary
      ..textColor = Theme.of(context).colorScheme.surface
      ..maskType = EasyLoadingMaskType.black
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

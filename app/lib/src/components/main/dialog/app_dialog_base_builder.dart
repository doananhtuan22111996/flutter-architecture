import 'package:app/src/components/main/button/app_button_base_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/app_theme_ext.dart';
import '../../../exts/R.dart';

part 'app_alert_dialog_widget.dart';

part 'app_dialog_screen_widget.dart';

abstract class _AppDialogBaseBuilder extends StatelessWidget {
  @protected
  final Widget icon;
  @protected
  final String title;
  @protected
  final String? content;
  @protected
  final List<Widget>? actions;

  const _AppDialogBaseBuilder({
    super.key,
    required this.icon,
    required this.title,
    required this.content,
    this.actions,
  });

  void show() {
    if (Get.isDialogOpen == true) return;
    Get.dialog(this, barrierDismissible: false, useSafeArea: false);
  }
}

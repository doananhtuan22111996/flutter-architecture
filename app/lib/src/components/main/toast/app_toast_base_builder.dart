import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'app_toast_fixed_widget.dart';

part 'app_toast_floating_widget.dart';

abstract class _AppToastBaseBuilder {
  @protected
  final bool? showCloseIcon;
  @protected
  final String messageText;
  @protected
  final SnackBarAction? action;
  @protected
  final double? actionOverflowThreshold;

  const _AppToastBaseBuilder({
    required this.messageText,
    this.showCloseIcon,
    this.action,
    this.actionOverflowThreshold,
  });

  void show();

  void dismiss();
}

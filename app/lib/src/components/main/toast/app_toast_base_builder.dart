import 'package:app/src/components/main/text/app_text_base_builder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/src/components/main/button/app_button_base_builder.dart';

import '../../../config/app_theme_ext.dart';
import '../../../exts/R.dart';

part 'app_toast_widget.dart';

enum AppToastType {
  info(type: 'info'),
  success(type: 'success'),
  warning(type: 'warning'),
  error(type: 'error');

  final String type;

  const AppToastType({required this.type});
}

abstract class AppToastBaseBuilder {
  @protected
  final AppToastType appToastType;
  @protected
  final String? buttonText;
  @protected
  final String title;
  @protected
  final String? message;
  @protected
  final Function? onButtonPress;

  const AppToastBaseBuilder({
    required this.title,
    required this.appToastType,
    this.buttonText,
    this.message,
    this.onButtonPress,
  });

  Color backgroundColor() {
    if (appToastType == AppToastType.info) {
      return AppThemeExt.of.colorScheme.tertiaryContainer;
    } else if (appToastType == AppToastType.warning) {
      return AppThemeExt.of.colorScheme.secondaryContainer;
    } else if (appToastType == AppToastType.error) {
      return AppThemeExt.of.colorScheme.errorContainer;
    }
    return AppThemeExt.of.colorScheme.primaryContainer;
  }

  void show();

  Widget content() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTextBody2Widget(text: title),
        AppTextBody3Widget(
          text: message,
          textStyle: AppThemeExt.of.textTheme.bodyMedium,
        )
      ],
    );
  }

  Color borderColor() {
    if (appToastType == AppToastType.info) {
      return AppThemeExt.of.colorScheme.tertiary;
    } else if (appToastType == AppToastType.warning) {
      return AppThemeExt.of.colorScheme.secondary;
    } else if (appToastType == AppToastType.error) {
      return AppThemeExt.of.colorScheme.error;
    }
    return AppThemeExt.of.colorScheme.primary;
  }

  Widget icon() {
    if (appToastType == AppToastType.info) {
      return R.svgs.error24px.svg();
    } else if (appToastType == AppToastType.warning) {
      return R.svgs.error24px.svg();
    } else if (appToastType == AppToastType.error) {
      return R.svgs.error24px.svg();
    }
    return R.svgs.check24px.svg();
  }

  Widget button() {
    return buttonText != null
        ? AppOutlinedButtonWidget.text(
            label: buttonText!,
            onPressed: () {
              onButtonPress?.call();
              Get.closeCurrentSnackbar();
            },
          )
        : IconButton(
            icon: R.svgs.close24px.svg(),
            style: IconButton.styleFrom(
                padding: EdgeInsets.all(AppThemeExt.of.majorScale(1))),
            onPressed: () => Get.closeCurrentSnackbar(),
          );
  }
}

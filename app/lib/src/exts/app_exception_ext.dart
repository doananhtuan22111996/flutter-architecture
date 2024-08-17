import 'dart:io';

import 'package:app/src/components/main/button/app_button_base_builder.dart';
import 'package:app/src/components/main/icon/app_icon_base_builder.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:utilities/utilities.dart';

import '../components/main/dialog/app_dialog_base_builder.dart';
import '../routes/app_pages.dart';
import 'R.dart';

class AppExceptionExt {
  late final AppException? appException;
  final Function(AppException appException)? onError;

  AppExceptionExt({required this.appException, this.onError});

  void detected() {
    if (appException == null) {
      return const AppAlertDialogWidget(
        icon: AppIconWidget(icon: Icons.error),
        title: 'Dialog Error',
        content: 'Application Error',
      ).show();
    }
    if (appException is NetworkException) {
      // General Code
      switch (appException?.code) {
        case HttpStatus.unauthorized:
          // Force Logout
          return AppAlertDialogWidget(
            icon: const AppIconWidget(icon: Icons.error),
            title: 'Dialog Error: ${HttpStatus.unauthorized}',
            content: appException?.message,
            actions: [
              AppFilledButtonWidget.text(
                  label: R.strings.close,
                  onPressed: () => Get.offAllNamed(Routes.home))
            ],
          ).show();
        case HttpStatus.badRequest:
        case HttpStatus.internalServerError:
        case HttpStatus.serviceUnavailable:
        case HttpStatus.gatewayTimeout:
        case HttpStatus.badGateway:
          return AppAlertDialogWidget(
            icon: const AppIconWidget(icon: Icons.error),
            title: 'Dialog Error: ${appException?.code}',
            content: appException?.message,
          ).show();
        default:
          onError?.call(appException!);
          return;
      }
    }

    if (appException is LocalException) {
      Logs.d('LocalException: ${appException?.message}');
      onError?.call(appException!);
    }
  }
}

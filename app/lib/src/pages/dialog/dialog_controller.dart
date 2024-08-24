import 'package:app/src/components/main/button/app_button_base_builder.dart';
import 'package:app/src/components/main/dialog/app_dialog_base_builder.dart';
import 'package:app/src/components/main/page/app_main_page_base_builder.dart';
import 'package:app/src/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/main/appBar/topAppBar/app_top_bar_base_builder.dart';
import '../../components/main/icon/app_icon_base_builder.dart';
import '../../config/app_theme_ext.dart';
import '../../exts/R.dart';

part 'dialog_binding.dart';

part 'dialog_page.dart';

class DialogController extends GetxController {
  void dialogAlert() {
    return const AppAlertDialogWidget(
      icon: AppIconWidget(icon: Icons.check_circle),
      title: 'Dialog Alert',
      content:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
    ).show();
  }

  void dialogFullScreen() {
    return const AppScreenDialogWidget(
      icon: AppIconWidget(icon: Icons.check_circle),
      title: 'Dialog Full Screen',
      content:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
    ).show();
  }
}

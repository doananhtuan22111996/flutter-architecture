import 'package:app/src/components/main/avatar/app_avatar_base_builder.dart';
import 'package:app/src/components/main/page/app_main_page_base_builder.dart';
import 'package:app/src/components/main/text/app_text_base_builder.dart';
import 'package:app/src/components/main/toast/app_toast_base_builder.dart';
import 'package:app/src/components/main/topAppBar/app_top_bar_base_builder.dart';
import 'package:app/src/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/app_theme_ext.dart';
import '../../exts/R.dart';

part 'avatar_binding.dart';

part 'avatar_page.dart';

class AvatarController extends GetxController {
  void toast() {
    const AppToastWidget(title: 'Clicked', appToastType: AppToastType.info)
        .show();
  }
}

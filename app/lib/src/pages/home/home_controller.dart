import 'package:app/src/components/main/icon/app_icon_base_builder.dart';
import 'package:app/src/components/main/navigation/navigationBar/app_navigation_bar_base_builder.dart';
import 'package:app/src/components/main/navigation/navigationBar/item/app_navigation_bar_item_base_builder.dart';
import 'package:app/src/components/main/page/app_main_page_base_builder.dart';
import 'package:app/src/components/main/tabBar/app_tab_bar_base_builder.dart';
import 'package:app/src/components/main/tabBar/tab/app_tab_base_builder.dart';
import 'package:app/src/components/main/tabBar/view/app_tab_bar_view_base_builder.dart';
import 'package:app/src/pages/home/view/paging/paging_controller.dart';
import 'package:app/src/pages/home/view/pagingLocal/paging_local_controller.dart';
import 'package:app/src/routes/app_pages.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/main/toast/app_toast_base_builder.dart';
import '../../components/main/appBar/topAppBar/app_top_bar_base_builder.dart';
import '../../exts/R.dart';

part 'home_binding.dart';

part 'home_page.dart';

class HomeController extends GetxController {
  late final AppUseCase _appUseCase;

  HomeController(this._appUseCase);

  final RxList<AppNavigationBarItemWidget> destinationTabs = [
    const AppNavigationBarItemWidget(
      icon: AppIconWidget(icon: Icons.home),
      label: "Home",
    ),
    const AppNavigationBarItemWidget(
      icon: AppIconWidget(icon: Icons.notifications),
      label: "Notification",
    ),
  ].obs;

  final RxList<AppTabWidget> tabs = [
    const AppTabWidget(
      text: 'Label 1',
      icon: AppIconWidget(icon: Icons.beach_access_sharp),
    ),
    const AppTabWidget(
      text: 'Label 2',
      icon: AppIconWidget(icon: Icons.brightness_5_sharp),
    ),
  ].obs;
  RxString langCode = RxString(AppLanguageKey.en.langCode);
  RxInt numberIndex = 0.obs;

  Future<void> executeGetLangCode() async {
    try {
      final lang = await _appUseCase.getLanguageCode();
      final deviceLangCode = Get.deviceLocale!.languageCode;
      langCode.value = lang.isEmpty ? deviceLangCode : lang;
    } on AppException catch (e) {
      AppToastFixedWidget.message(messageText: e.message ?? "Some thing wrong")
          .show();
    }
  }
}

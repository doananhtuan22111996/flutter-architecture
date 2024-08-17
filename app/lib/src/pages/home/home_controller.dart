import 'package:app/src/components/main/icon/app_icon_base_builder.dart';
import 'package:app/src/components/main/navigation/navigationBar/app_navigation_bar_base_builder.dart';
import 'package:app/src/components/main/navigation/navigationBar/item/app_navigation_bar_item_base_builder.dart';
import 'package:app/src/components/main/page/app_main_page_base_builder.dart';
import 'package:app/src/components/main/tabBar/app_tab_base_builder.dart';
import 'package:app/src/pages/home/view/paging/paging_controller.dart';
import 'package:app/src/pages/home/view/pagingLocal/paging_local_controller.dart';
import 'package:app/src/routes/app_pages.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/main/navigation/bottomNavigationBar/item/app_bottom_navigation_bar_item_base_builder.dart';
import '../../components/main/toast/app_toast_base_builder.dart';
import '../../components/main/appBar/topAppBar/app_top_bar_base_builder.dart';
import '../../exts/R.dart';

part 'home_binding.dart';

part 'home_page.dart';

class HomeController extends GetxController {
  late final AppUseCase _appUseCase;

  HomeController(this._appUseCase);

  final RxList<AppBottomNavigationBarItemWidget> bottomTabs = [
    AppBottomNavigationBarItemWidget(
      icon: const AppIconWidget(icon: Icons.home),
      label: "Home",
    ),
    AppBottomNavigationBarItemWidget(
      icon: const AppIconWidget(icon: Icons.notifications),
      label: "Notification",
    ),
  ].obs;

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

  final RxList<AppTabWithNumberWidget> numberTabs = [
    const AppTabWithNumberWidget(
      label: 'Label 1',
      appTabSize: AppTabSize.large,
    ),
    const AppTabWithNumberWidget(
      label: 'Label 2',
      appTabSize: AppTabSize.large,
    ),
  ].obs;
  RxString langCode = RxString(AppLanguageKey.en.langCode);
  RxInt numberIndex = 0.obs;

  void onNumberChanged({required int index, required int number}) {
    numberTabs.value = [
      ...numberTabs.map((element) {
        final indexOf = numberTabs.indexOf(element);
        return indexOf == index ? element.copyWith(number: number) : element;
      })
    ];
  }

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

import 'package:app/src/components/main/appBar/bottomAppBar/app_bottom_bar_base_builder.dart';
import 'package:app/src/components/main/icon/app_icon_base_builder.dart';
import 'package:app/src/components/main/navigation/navigationDrawer/app_navigation_drawer_base_builder.dart';
import 'package:app/src/components/main/navigation/navigationDrawer/item/app_navigation_drawer_item_base_builder.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:app/src/components/main/toast/app_toast_base_builder.dart';
import 'package:app/src/pages/badge/badge_controller.dart';
import 'package:app/src/pages/login/login_controller.dart';
import 'package:app/src/pages/tabBar/tab_bar_controller.dart';
import 'package:app/src/pages/toast/toast_controller.dart';
import 'package:app/src/pages/tooltip/tooltip_controller.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/src/components/main/button/app_button_base_builder.dart';
import 'package:app/src/components/main/page/app_main_page_base_builder.dart';
import 'package:app/src/pages/button/button_controller.dart';
import 'package:app/src/pages/datePicker/date_picker_controller.dart';
import 'package:app/src/pages/dialog/dialog_controller.dart';
import 'package:app/src/pages/progress/progress_controller.dart';
import 'package:app/src/pages/selectionControl/selection_control_controller.dart';
import 'package:app/src/pages/textField/text_field_controller.dart';

import '../../components/main/iconButton/app_icon_button_base_builder.dart';
import '../../components/main/appBar/topAppBar/app_top_bar_base_builder.dart';
import '../../config/app_theme_ext.dart';
import '../../exts/R.dart';

part 'main_binding.dart';

part 'main_page.dart';

class MainController extends GetxController {
  late final AppUseCase _appUseCase;

  MainController(this._appUseCase);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  RxList<AppNavigationDrawerItemWidget> drawerItems(ThemeData themeData) {
    return [
      AppNavigationDrawerItemWidget(
        icon: const AppIconWidget(icon: Icons.widgets_outlined),
        label: Text(
          "Messages",
          style: themeData.textTheme.bodyLarge,
        ),
      ),
      AppNavigationDrawerItemWidget(
        icon: const AppIconWidget(icon: Icons.format_paint_outlined),
        label: Text(
          "Profile",
          style: themeData.textTheme.bodyLarge,
        ),
      ),
      AppNavigationDrawerItemWidget(
        icon: const AppIconWidget(icon: Icons.settings_outlined),
        label: Text(
          "Settings",
          style: themeData.textTheme.bodyLarge,
        ),
      ),
    ].obs;
  }

  final List<LanguageModel> languages = [
    LanguageModel(
      countryCode: AppLanguageKey.en.countryCode,
      langCode: AppLanguageKey.en.langCode,
      name: R.strings.englishLanguage,
    ),
    LanguageModel(
      countryCode: AppLanguageKey.vi.countryCode,
      langCode: AppLanguageKey.vi.langCode,
      name: R.strings.vietNamLanguage,
    )
  ];

  final List<String> themes = [ThemeMode.light.name, ThemeMode.dark.name];

  Rx<String> langCode = Rx<String>(Get.deviceLocale!.languageCode);
  Rx<String> theme = Rx<String>(
      Get.isDarkMode == true ? ThemeMode.dark.name : ThemeMode.light.name);

  @override
  void onInit() {
    super.onInit();
    executeGetLanguage();
    executeGetTheme();
  }

  @override
  void onClose() {
    super.onClose();
    scaffoldKey.currentState?.dispose();
  }

  void executeGetLanguage() async {
    try {
      final langCode = await _appUseCase.getLanguageCode();
      final deviceLangCode = Get.deviceLocale!.languageCode;
      executeUpdateLanguage(langCode.isEmpty ? deviceLangCode : langCode);
    } on AppException catch (e) {
      AppToastFixedWidget.message(messageText: e.message ?? "Some thing wrong")
          .show();
    }
  }

  void executeUpdateLanguage(String langCode) async {
    try {
      this.langCode.value = langCode;
      final languageModel =
          languages.firstWhere((element) => element.langCode == langCode);
      await _appUseCase.setLanguageCode(languageModel.langCode);
      Get.updateLocale(
          Locale(languageModel.langCode, languageModel.countryCode));
    } on AppException catch (e) {
      AppToastFixedWidget.message(messageText: e.message ?? "Some thing wrong")
          .show();
    }
  }

  void executeGetTheme() async {
    try {
      final theme = await _appUseCase.getThemeMode();
      final deviceTheme =
          Get.isDarkMode ? ThemeMode.dark.name : ThemeMode.light.name;
      executeUpdateTheme(theme.isEmpty ? deviceTheme : theme);
    } on AppException catch (e) {
      AppToastFixedWidget.message(messageText: e.message ?? "Some thing wrong")
          .show();
    }
  }

  void executeUpdateTheme(String theme) async {
    try {
      this.theme.value = theme;
      final themeMode =
          ThemeMode.values.firstWhere((element) => element.name == theme);
      await _appUseCase.setThemeMode(theme);
      Get.changeThemeMode(themeMode);
      Get.changeTheme(
        themeMode == ThemeMode.dark
            ? AppThemeExt.of.darkTheme
            : AppThemeExt.of.lightTheme,
      );
    } on AppException catch (e) {
      AppToastFixedWidget.message(messageText: e.message ?? "Some thing wrong")
          .show();
    }
  }
}

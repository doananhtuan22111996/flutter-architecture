import 'package:app/src/components/main/page/app_main_page_base_builder.dart';
import 'package:app/src/components/main/tabBar/app_tab_base_builder.dart';
import 'package:app/src/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/main/appBar/topAppBar/app_top_bar_base_builder.dart';
import '../../config/app_theme_ext.dart';

part 'tab_bar_binding.dart';

part 'tab_bar_page.dart';

class TabBarController extends GetxController {
  final List<AppTabOnlyTextWidget> mediumTabs = const [
    AppTabOnlyTextWidget(label: 'Label 1', appTabSize: AppTabSize.medium),
    AppTabOnlyTextWidget(label: 'Label 2', appTabSize: AppTabSize.medium),
    AppTabOnlyTextWidget(label: 'Label 3', appTabSize: AppTabSize.medium),
  ];
  final List<AppTabOnlyTextWidget> largeTabs = const [
    AppTabOnlyTextWidget(label: 'Label 1', appTabSize: AppTabSize.large),
    AppTabOnlyTextWidget(label: 'Label 2', appTabSize: AppTabSize.large),
    AppTabOnlyTextWidget(label: 'Label 3', appTabSize: AppTabSize.large),
  ];
  final List<AppTabWithIconWidget> iconTabs = [
    // AppTabWithIconWidget(
    //   label: 'Label 1',
    //   iconSelected: R.svgs.check24px.svg(),
    //   iconUnselected: R.svgs.error24px.svg(),
    //   appTabSize: AppTabSize.large,
    // ),
    // AppTabWithIconWidget(
    //   label: 'Label 2',
    //   iconSelected: R.svgs.check24px.svg(),
    //   iconUnselected: R.svgs.error24px.svg(),
    //   appTabSize: AppTabSize.large,
    // ),
    // AppTabWithIconWidget(
    //   label: 'Label 3',
    //   iconUnselected: R.svgs.check24px.svg(),
    //   iconSelected: R.svgs.error24px.svg(),
    //   appTabSize: AppTabSize.large,
    // ),
  ];
  final List<AppTabWithNumberWidget> numberTabs = const [
    AppTabWithNumberWidget(
      label: 'Label 1',
      number: 10,
      appTabSize: AppTabSize.large,
    ),
    AppTabWithNumberWidget(
      label: 'Label 2',
      number: 20,
      appTabSize: AppTabSize.large,
    ),
    AppTabWithNumberWidget(
      label: 'Label 3',
      number: 40,
      appTabSize: AppTabSize.large,
    ),
  ];
  RxInt mediumIndex = 0.obs;
  RxInt largeIndex = 0.obs;
  RxInt iconIndex = 0.obs;
  RxInt numberIndex = 0.obs;
}

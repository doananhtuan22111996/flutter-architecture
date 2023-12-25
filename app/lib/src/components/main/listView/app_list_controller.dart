import 'package:app/src/components/main/button/app_button_base_builder.dart';
import 'package:app/src/components/main/text/app_text_base_builder.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:resources/resources.dart';
import 'package:utilities/utilities.dart';

import '../../../exts/app_exts.dart';
import '../loading/app_loading_overlay_indicator.dart';

part 'app_list_widget.dart';

abstract class AppListController<BM extends BaseModel> extends GetxController {
  RxList<BM> data = RxList.empty();
  Rxn<AppException> appException = Rxn<AppException>();
  Rx<int> total = Rx(0);
  Rx<bool> hasMore = Rx(false);

  AppParam _appParam = AppParam();

  Future<AppListResultModel<BM>> onCall(AppParam appParam);

  @override
  void onReady() {
    super.onReady();
    initFetch();
  }

  @override
  void onClose() {
    super.onClose();
    Logs.e('AppListController of $BM closed');
  }

  void initFetch() async {
    try {
      AppLoadingOverlayWidget.show();
      final response = await onCall(_appParam);
      AppLoadingOverlayWidget.dismiss();
      data.value = [...response.netData ?? List.empty()];
      total.value = response.total;
      hasMore.value = response.hasMore;
      appException.value = null;
      Logs.i(
          'AppListWidget Init Call: Data length ${data.length} --- total: ${total.value}');
    } on AppException catch (e) {
      AppLoadingOverlayWidget.dismiss();
      AppExceptionExt(
        appException: e,
        onError: (_) => appException.value = e,
      ).detected();
    }
  }

  Future<void> onRefreshCall() async {
    try {
      _appParam = _appParam.copyWith(page: 1);
      final response = await onCall(_appParam);
      data.value = [...response.netData ?? List.empty()];
      total.value = response.total;
      hasMore.value = response.hasMore;
      appException.value = null;
      Logs.i(
          'AppListWidget Refresh: Data length ${data.length} --- total: ${total.value}');
    } on AppException catch (e) {
      AppExceptionExt(
        appException: e,
        onError: (_) => appException.value = e,
      ).detected();
    }
  }

  Future<void> onRefreshCallWithLoading() async {
    AppLoadingOverlayWidget.show();
    await onRefreshCall();
    AppLoadingOverlayWidget.dismiss();
  }

  Future<void> onLoadMoreCall() async {
    try {
      _appParam = _appParam.copyWith(page: _appParam.page + 1);
      final response = await onCall(_appParam);
      data.value = [
        ...data,
        ...response.netData ?? List.empty(),
      ];
      total.value = response.total;
      hasMore.value = response.hasMore;
      appException.value = null;
    } on AppException catch (e) {
      appException.value = e;
    }
  }
}
part of 'app_toast_base_builder.dart';

class AppToastFixedWidget extends AppToastBaseBuilder {
  const AppToastFixedWidget.message({
    required super.messageText,
    super.showCloseIcon,
  });

  const AppToastFixedWidget.action({
    required super.messageText,
    required super.action,
    super.showCloseIcon,
  });

  @override
  void show() {
    if (Get.context == null) return;
    dismiss();
    final snackBar = SnackBar(
      showCloseIcon: showCloseIcon,
      content: Text(messageText),
      behavior: SnackBarBehavior.fixed,
      action: action,
    );
    ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);
  }

  @override
  void dismiss() {
    if (Get.context == null) return;
    ScaffoldMessenger.of(Get.context!).clearSnackBars();
  }
}

part of 'app_toast_base_builder.dart';

class AppToastFloatingWidget extends AppToastBaseBuilder {
  const AppToastFloatingWidget.message({
    required super.messageText,
    super.showCloseIcon,
    super.actionOverflowThreshold,
  });

  const AppToastFloatingWidget.action({
    required super.messageText,
    required super.action,
    super.showCloseIcon,
    super.actionOverflowThreshold,
  });

  @override
  void show() {
    if (Get.context == null) return;
    dismiss();
    final snackBar = SnackBar(
      showCloseIcon: showCloseIcon,
      content: Text(messageText),
      behavior: SnackBarBehavior.floating,
      action: action,
      actionOverflowThreshold: actionOverflowThreshold,

    );
    ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);
  }

  @override
  void dismiss() {
    if (Get.context == null) return;
    ScaffoldMessenger.of(Get.context!).clearSnackBars();
  }
}

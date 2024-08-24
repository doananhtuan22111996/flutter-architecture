part of 'app_dialog_base_builder.dart';

class AppAlertDialogWidget extends _AppDialogBaseBuilder {
  const AppAlertDialogWidget({
    super.key,
    required super.icon,
    required super.title,
    required super.content,
    super.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      content: content != null
          ? Text(content!, style: Theme.of(context).textTheme.bodySmall)
          : null,
      actions: actions ??
          [
            AppFilledButtonWidget.text(
              label: R.strings.close,
              onPressed: () => Get.back(),
            )
          ],
    );
  }
}

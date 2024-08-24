part of 'app_dialog_base_builder.dart';

class AppScreenDialogWidget extends _AppDialogBaseBuilder {
  const AppScreenDialogWidget({
    super.key,
    required super.icon,
    required super.title,
    required super.content,
    super.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppThemeExt.of.majorScale(6)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            icon,
            SizedBox(height: AppThemeExt.of.majorScale(4)),
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            if (content != null)
              Padding(
                padding: EdgeInsets.all(AppThemeExt.of.majorScale(2)),
                child: Text(
                  content!,
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
              ),
            for (final item in actions ??
                [
                  SizedBox(
                    width: double.infinity,
                    child: AppFilledButtonWidget.text(
                      label: R.strings.close,
                      onPressed: () => Get.back(),
                    ),
                  )
                ])
              item
          ],
        ),
      ),
    );
  }
}

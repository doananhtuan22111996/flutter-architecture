part of 'app_dialog_base_builder.dart';

class AppDefaultDialogWidget extends AppDialogBaseBuilder {
  const AppDefaultDialogWidget({
    super.key,
    super.title,
    super.content,
    super.positiveText,
    super.negativeText,
    super.appDialogType,
    super.onPositive,
    super.onNegative,
  });

  @override
  Widget build(BuildContext context) {
    Widget icon = appDialogType == AppDialogType.success
        ? Icon(Icons.check)
        : appDialogType == AppDialogType.error
            ? Icon(Icons.error)
            : Icon(Icons.warning);
    return Dialog(
      insetPadding: EdgeInsets.all(AppThemeExt.of.majorScale(6)),
      child: Container(
        decoration: BoxDecoration(
          color: AppThemeExt.of.colorScheme.primary,
          borderRadius: BorderRadius.circular(AppThemeExt.of.majorScale(3)),
        ),
        padding: EdgeInsets.all(AppThemeExt.of.majorScale(6)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: AppThemeExt.of.majorScale(2)),
            icon,
            if (title != null)
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: AppThemeExt.of.majorScale(3)),
                child: AppTextHeading4Widget(
                  text: title,
                  textAlign: TextAlign.center,
                ),
              ),
            if (content != null)
              AppTextBody1Widget(
                text: content,
                textAlign: TextAlign.center,
              ),
            SizedBox(height: AppThemeExt.of.majorScale(8)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (negativeText != null)
                  Expanded(
                    child: AppOutlinedButtonWidget.text(
                      label: negativeText!,
                      onPressed: () {
                        Get.back();
                        onNegative?.call();
                      },
                    ),
                  ),
                if (negativeText != null)
                  SizedBox(width: AppThemeExt.of.majorScale(3)),
                if (positiveText != null)
                  Expanded(
                    child: AppFilledButtonWidget.text(
                      label: positiveText!,
                      onPressed: () {
                        Get.back();
                        onPositive?.call();
                      },
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

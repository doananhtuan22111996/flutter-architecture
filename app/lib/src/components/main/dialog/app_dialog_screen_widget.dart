part of 'app_dialog_base_builder.dart';

class AppScreenDialogWidget extends _AppDialogBaseBuilder {
  const AppScreenDialogWidget({
    super.key,
    super.title,
    super.content,
    super.positiveText,
    super.negativeText,
    super.appDialogType,
  });

  @override
  Widget build(BuildContext context) {
    Widget icon = appDialogType == AppDialogType.success
        ? Icon(Icons.check)
        : appDialogType == AppDialogType.error
            ? Icon(Icons.error)
            : Icon(Icons.warning);
    return Dialog.fullscreen(
      child: Container(
        color: Theme.of(context).colorScheme.primary,
        padding: EdgeInsets.all(AppThemeExt.of.majorScale(6)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(child: _container(context, icon)),
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
                    ).build(context),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _container(BuildContext context, Widget icon) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        icon,
        if (title != null)
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: AppThemeExt.of.majorScale(3)),
            child: Text(
              title!,
              textAlign: TextAlign.center,
            ),
          ),
        if (content != null)
          Text(
            content!,
            textAlign: TextAlign.center,
          ),
      ],
    );
  }
}

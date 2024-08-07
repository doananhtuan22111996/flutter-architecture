part of 'app_progress_base_builder.dart';

class AppProgressLineWidget extends AppProgressBaseBuilder {
  const AppProgressLineWidget({
    super.key,
    super.maxProgress = AppProgressBaseBuilder.max,
    super.progress,
    super.appProgressSize,
    super.appProgressType,
  });

  @override
  Widget build(BuildContext context) {
    double lineHeight = AppThemeExt.of.majorScale(6 / 4);
    if (appProgressSize == AppProgressSize.lineLarge) {
      lineHeight = AppThemeExt.of.majorScale(2);
    }

    return LinearPercentIndicator(
      width: maxProgress,
      lineHeight: lineHeight,
      percent: progress ?? 0,
      barRadius: Radius.circular(AppThemeExt.of.majorScale(25)),
      backgroundColor: AppThemeExt.of.colorScheme.onSurface,
      progressColor: _progressColor,
      trailing: _trainingW(context),
    );
  }

  Widget _trainingW(BuildContext context) {
    Widget? trailing = appProgressSize == AppProgressSize.lineMedium
        ? R.svgs.accessTime24px.svg()
        : R.svgs.accessTime24px.svg(
            width: AppThemeExt.of.majorScale(4),
            height: AppThemeExt.of.majorScale(4),
          );
    if (appProgressType == AppProgressType.success) {
      trailing = appProgressSize == AppProgressSize.lineMedium
          ? R.svgs.check24px.svg()
          : R.svgs.check24px.svg(
              width: AppThemeExt.of.majorScale(4),
              height: AppThemeExt.of.majorScale(4),
            );
    }
    if (appProgressType == AppProgressType.error) {
      trailing = appProgressSize == AppProgressSize.lineMedium
          ? R.svgs.close24px.svg()
          : R.svgs.close24px.svg(
              width: AppThemeExt.of.majorScale(4),
              height: AppThemeExt.of.majorScale(4),
            );
    }
    return trailing;
  }

  Color get _progressColor {
    if (appProgressType == AppProgressType.error) {
      return AppThemeExt.of.colorScheme.error;
    }
    if (appProgressType == AppProgressType.success) {
      return AppThemeExt.of.colorScheme.primary;
    }
    return AppThemeExt.of.colorScheme.secondary;
  }
}

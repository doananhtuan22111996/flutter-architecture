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
        ? Icon(Icons.timelapse)
        : Icon(Icons.timelapse);
    if (appProgressType == AppProgressType.success) {
      trailing = appProgressSize == AppProgressSize.lineMedium
          ? Icon(Icons.check)
          : Icon(Icons.check);
    }
    if (appProgressType == AppProgressType.error) {
      trailing = appProgressSize == AppProgressSize.lineMedium
          ? Icon(Icons.close)
          : Icon(Icons.close);
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

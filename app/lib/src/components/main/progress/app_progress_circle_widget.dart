part of 'app_progress_base_builder.dart';

class AppProgressCircleWidget extends AppProgressBaseBuilder {
  const AppProgressCircleWidget({
    super.key,
    super.progress,
    super.maxProgress = AppProgressBaseBuilder.max,
    super.appProgressSize,
    super.appProgressType,
  });

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: _progressSize,
      percent: progress ?? 0,
      center: _center(context),
      progressColor: _progressColor,
      backgroundColor: Theme.of(context).colorScheme.onSurface,
      circularStrokeCap: CircularStrokeCap.round,
    );
  }

  Widget _center(BuildContext context) {
    if (appProgressType == AppProgressType.error) {
      return appProgressSize == AppProgressSize.circleLarge
          ? Icon(Icons.close)
          : Icon(Icons.close);
    }
    if (appProgressType == AppProgressType.success) {
      return appProgressSize == AppProgressSize.circleLarge
          ? Icon(Icons.close)
          : Icon(Icons.close);
    }
    return appProgressSize == AppProgressSize.circleLarge
        ? Text('${progress ?? 0 * 100}%')
        : Text('${progress ?? 0 * 100}%');
  }

  Color get _progressColor {
    if (appProgressType == AppProgressType.error) {
      return Theme.of(Get.context!).colorScheme.error;
    }
    if (appProgressType == AppProgressType.success) {
      return Theme.of(Get.context!).colorScheme.primary;
    }
    return Theme.of(Get.context!).colorScheme.secondary;
  }

  double get _progressSize {
    if (appProgressSize == AppProgressSize.circleLarge) {
      return AppThemeExt.of.majorScale(15);
    }
    return AppThemeExt.of.majorScale(10);
  }
}

part of 'app_progress_base_builder.dart';

class AppProgressBasicWidget extends AppProgressBaseBuilder {
  const AppProgressBasicWidget({
    super.key,
    super.appProgressSize,
    super.appProgressType,
    super.maxProgress = AppProgressBaseBuilder.max,
    super.progress,
    super.isWithNumber,
  });

  @override
  Widget build(BuildContext context) {
    double lineHeight = AppThemeExt.of.majorScale(2);
    Widget? trailing = Text(
      '${(progress ?? 0) * 100}%',
    );
    if (appProgressSize == AppProgressSize.basicSmall) {
      lineHeight = AppThemeExt.of.majorScale(6 / 4);
      trailing = Text(
        '${(progress ?? 0) * 100}%',
      );
    }
    if (appProgressSize == AppProgressSize.basicMedium) {
      lineHeight = AppThemeExt.of.majorScale(2 / 4);
      trailing = Text(
        '${(progress ?? 0) * 100}%',
      );
    }

    return LinearPercentIndicator(
      width: maxProgress,
      lineHeight: lineHeight,
      percent: progress ?? 0,
      barRadius: Radius.circular(AppThemeExt.of.majorScale(25)),
      backgroundColor: Theme.of(context).colorScheme.surface,
      progressColor: Theme.of(context).colorScheme.primary,
      trailing: isWithNumber == true ? trailing : null,
    );
  }
}

part of 'app_badge_base_builder.dart';

class AppBadgeNumberWidget extends AppBadgeBaseBuilder {
  const AppBadgeNumberWidget({
    super.key,
    super.color,
    super.number,
    super.isDisabled,
    super.appBadgeBaseType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppThemeExt.of.majorScale(5),
      height: AppThemeExt.of.majorScale(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isDisabled == true ? Colors.transparent : color,
        border: _border,
      ),
      alignment: Alignment.center,
      child: AppTextBody3Widget(
        text: number?.toString() ?? 0.toString(),
        textStyle: context.textTheme.bodySmall?.copyWith(color: _textColor),
      ),
    );
  }

  Border? get _border => isDisabled == true
      ? Border.all(color: AppThemeExt.of.colorScheme.onSurface)
      : appBadgeBaseType == AppBadgeBaseType.outlined
          ? Border.all(color: AppThemeExt.of.colorScheme.outline)
          : null;

  Color? get _textColor => isDisabled == true
      ? AppThemeExt.of.colorScheme.onSurface
      : appBadgeBaseType == AppBadgeBaseType.outlined
          ? AppThemeExt.of.colorScheme.outline
          : AppThemeExt.of.colorScheme.primary;
}

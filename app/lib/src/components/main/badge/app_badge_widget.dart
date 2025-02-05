part of 'app_badge_base_builder.dart';

class AppBadgeWidget extends _AppBadgeBaseBuilder {
  const AppBadgeWidget.small({
    super.key,
    super.backgroundColor,
    super.child,
  }) : _appBadgeType = _AppBadgeType.small;

  const AppBadgeWidget.large({
    super.key,
    required super.count,
    super.backgroundColor,
    super.child,
  }) : _appBadgeType = _AppBadgeType.large;

  final _AppBadgeType _appBadgeType;

  @override
  Widget build(BuildContext context) {
    if (_appBadgeType == _AppBadgeType.small) {
      return Badge(backgroundColor: backgroundColor, child: child);
    }
    return Badge.count(
        count: count, backgroundColor: backgroundColor, child: child);
  }
}

part of 'app_top_bar_base_builder.dart';

class AppTopBarWidget extends AppTopBarBaseBuilder {
  const AppTopBarWidget({
    super.key,
    required super.title,
    super.leading,
    super.actions,
    super.forceElevated,
    super.pinned,
    super.floating,
    super.snap,
  }) : _topBarType = _AppTopBarType.small;

  const AppTopBarWidget.medium({
    super.key,
    required super.title,
    super.leading,
    super.actions,
    super.forceElevated,
    super.pinned,
    super.floating,
    super.snap,
  }) : _topBarType = _AppTopBarType.medium;

  const AppTopBarWidget.large({
    super.key,
    required super.title,
    super.leading,
    super.actions,
    super.forceElevated,
    super.floating,
    super.snap,
  }) : _topBarType = _AppTopBarType.large;

  final _AppTopBarType _topBarType;

  @override
  Widget build(BuildContext context) {
    if (_topBarType == _AppTopBarType.large) {
      return SliverAppBar.large(
        title: Text(title),
        leading: leading,
        actions: actions,
        forceElevated: forceElevated,
        pinned: pinned,
        floating: floating,
        snap: snap,
      );
    }
    if (_topBarType == _AppTopBarType.medium) {
      return SliverAppBar.medium(
        title: Text(title),
        leading: leading,
        actions: actions,
        forceElevated: forceElevated,
        pinned: pinned,
        floating: floating,
        snap: snap,
      );
    }
    return SliverAppBar(
      title: Text(title),
      leading: leading,
      actions: actions,
      forceElevated: forceElevated,
      pinned: pinned,
      floating: floating,
      snap: snap,
    );
  }
}

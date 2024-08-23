part of 'app_progress_base_builder.dart';

class AppProgressWidget extends _AppProgressBaseBuilder {
  const AppProgressWidget({
    super.key,
    super.value,
    super.backgroundColor,
    super.color,
    super.strokeCap,
  }) : _appProgressType = _AppProgressType.refresh;

  const AppProgressWidget.linear({
    super.key,
    super.value,
    super.backgroundColor,
    super.color,
  }) : _appProgressType = _AppProgressType.linear;

  const AppProgressWidget.circle({
    super.key,
    super.value,
    super.backgroundColor,
    super.color,
    super.strokeCap,
  }) : _appProgressType = _AppProgressType.circle;

  final _AppProgressType _appProgressType;

  @override
  Widget build(BuildContext context) {
    if (_appProgressType == _AppProgressType.linear) {
      return LinearProgressIndicator(
        key: key,
        value: value,
        backgroundColor: backgroundColor,
        color: color,
      );
    }
    if (_appProgressType == _AppProgressType.circle) {
      return CircularProgressIndicator(
        key: key,
        value: value,
        backgroundColor: backgroundColor,
        color: color,
        strokeCap: strokeCap,
      );
    }
    return RefreshProgressIndicator(
      key: key,
      value: value,
      backgroundColor: backgroundColor,
      color: color,
      strokeCap: strokeCap,
    );
  }
}

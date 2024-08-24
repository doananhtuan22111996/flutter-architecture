part of 'app_checkbox_base_builder.dart';

class AppCheckboxWidget<T> extends _AppCheckboxBaseBuilder<T> {
  const AppCheckboxWidget({
    super.key,
    required super.value,
    super.isError,
    super.onChanged,
  }) : _appCheckboxType = _AppCheckboxType.checkbox;

  const AppCheckboxWidget.listTitle({
    super.key,
    required super.value,
    super.title,
    super.subtitle,
    super.isError,
    super.controlAffinity,
    super.onChanged,
  }) : _appCheckboxType = _AppCheckboxType.checkboxListTitle;

  final _AppCheckboxType _appCheckboxType;

  @override
  Widget build(BuildContext context) {
    if (_appCheckboxType == _AppCheckboxType.checkbox) {
      return Checkbox(value: value, isError: isError, onChanged: onChanged);
    }
    return CheckboxListTile(
      value: value,
      title: title,
      subtitle: subtitle,
      isError: isError,
      controlAffinity: controlAffinity,
      onChanged: onChanged,
    );
  }
}

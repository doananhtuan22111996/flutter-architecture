part of 'app_radio_button_base_builder.dart';

class AppRadioButtonWidget<T> extends _AppRadioButtonBaseBuilder<T> {
  const AppRadioButtonWidget({
    super.key,
    required super.value,
    super.groupValue,
    super.onChanged,
  }) : _appRadioType = _AppRadioType.radio;

  const AppRadioButtonWidget.listTitle({
    super.key,
    required super.value,
    super.groupValue,
    super.title,
    super.subtitle,
    super.onChanged,
  }) : _appRadioType = _AppRadioType.radioListTitle;

  final _AppRadioType _appRadioType;

  @override
  Widget build(BuildContext context) {
    if (_appRadioType == _AppRadioType.radio) {
      return Radio<T>(
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
      );
    }
    return RadioListTile(
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
      title: title,
      subtitle: subtitle,
    );
  }
}

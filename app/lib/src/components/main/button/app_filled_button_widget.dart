part of 'app_button_base_builder.dart';

class AppFilledButtonWidget extends AppButtonBaseBuilder {
  const AppFilledButtonWidget.text({
    super.key,
    required super.label,
    super.isDisabled,
    super.onPressed,
  });

  const AppFilledButtonWidget.icon({
    super.key,
    required super.label,
    required super.icon,
    super.isDisabled,
    super.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    if (icon == null) {
      // only Icon
      return FilledButton(
        onPressed: isDisabled == true ? null : onPressed,
        child: Text(label),
      );
    }

    return FilledButton.icon(
      onPressed: isDisabled == true ? null : onPressed,
      label: Text(label),
      icon: Icon(icon),
    );
  }
}

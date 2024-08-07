part of 'app_button_base_builder.dart';

class AppOutlinedButtonWidget extends AppButtonBaseBuilder {
  const AppOutlinedButtonWidget.text({
    super.key,
    required super.label,
    super.isDisabled,
    super.onPressed,
  });

  const AppOutlinedButtonWidget.icon({
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
      return OutlinedButton(
        onPressed: isDisabled == true ? null : onPressed,
        child: Text(label),
      );
    }

    return OutlinedButton.icon(
      onPressed: isDisabled == true ? null : onPressed,
      label: Text(label),
      icon: icon,
    );
  }
}

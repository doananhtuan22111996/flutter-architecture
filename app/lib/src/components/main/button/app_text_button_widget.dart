part of 'app_button_base_builder.dart';

class AppTextButtonWidget extends AppButtonBaseBuilder {
  const AppTextButtonWidget.text({
    super.key,
    required super.label,
    super.isDisabled,
    super.onPressed,
  });

  const AppTextButtonWidget.icon({
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
      return TextButton(
        onPressed: isDisabled == true ? null : onPressed,
        child: Text(label),
      );
    }

    return TextButton.icon(
      onPressed: isDisabled == true ? null : onPressed,
      label: Text(label),
      icon: icon,
    );
  }
}

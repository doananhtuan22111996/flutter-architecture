part of 'app_button_base_builder.dart';

class AppElevatedButtonWidget extends AppButtonBaseBuilder {
  const AppElevatedButtonWidget.text({
    super.key,
    required super.label,
    super.isDisabled,
    super.onPressed,
  });

  const AppElevatedButtonWidget.icon({
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
      return ElevatedButton(
        onPressed: isDisabled == true ? null : onPressed,
        child: Text(label),
      );
    }

    return ElevatedButton.icon(
      onPressed: isDisabled == true ? null : onPressed,
      label: Text(label),
      icon: Icon(icon),
    );
  }
}

part of 'app_button_base_builder.dart';

class AppTonalButtonWidget extends AppButtonBaseBuilder {
  const AppTonalButtonWidget.text({
    super.key,
    required super.label,
    super.isDisabled,
    super.onPressed,
  });

  const AppTonalButtonWidget.icon({
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
      return FilledButton.tonal(
        onPressed: isDisabled == true ? null : onPressed,
        child: Text(label),
      );
    }

    return FilledButton.tonalIcon(
      onPressed: isDisabled == true ? null : onPressed,
      label: Text(label),
      icon: Icon(icon),
    );
  }
}

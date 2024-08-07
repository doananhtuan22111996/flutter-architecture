part of 'app_icon_button_base_builder.dart';

class AppIconFilledTonalButtonWidget extends AppIconButtonBaseBuilder {
  const AppIconFilledTonalButtonWidget({
    super.key,
    required super.icon,
    super.isDisabled,
    super.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      onPressed: isDisabled == true ? null : onPressed,
      icon: icon,
    );
  }
}

part of 'app_icon_button_base_builder.dart';

class AppIconFilledButtonWidget extends _AppIconButtonBaseBuilder {
  const AppIconFilledButtonWidget({
    super.key,
    required super.icon,
    super.isDisabled,
    super.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      onPressed: isDisabled == true ? null : onPressed,
      icon: Icon(icon),
    );
  }
}

part of 'app_icon_button_base_builder.dart';

class AppIconOutlineButtonWidget extends _AppIconButtonBaseBuilder {
  const AppIconOutlineButtonWidget({
    super.key,
    required super.icon,
    super.isDisabled,
    super.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(
      onPressed: isDisabled == true ? null : onPressed,
      icon: Icon(icon),
    );
  }
}

part of 'app_icon_button_base_builder.dart';

class AppIconButtonWidget extends _AppIconButtonBaseBuilder {
  const AppIconButtonWidget({
    super.key,
    required super.icon,
    super.isDisabled,
    super.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: isDisabled == true ? null : onPressed,
      icon: Icon(icon),
    );
  }
}

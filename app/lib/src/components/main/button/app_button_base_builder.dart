import 'package:flutter/material.dart';

part 'app_filled_button_widget.dart';

part 'app_outlined_button_widget.dart';

part 'app_text_button_widget.dart';

part 'app_elevated_button_widget.dart';

part 'app_tonal_button_widget.dart';

abstract class AppButtonBaseBuilder extends StatelessWidget {
  @protected
  final String label;
  @protected
  final IconData? icon;
  @protected
  final bool? isDisabled;
  @protected
  final void Function()? onPressed;

  const AppButtonBaseBuilder({
    super.key,
    required this.label,
    this.icon,
    this.isDisabled,
    this.onPressed,
  });
}

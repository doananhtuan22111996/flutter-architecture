import 'package:flutter/material.dart';

part 'app_icon_button_widget.dart';

part 'app_icon_filled_button_widget.dart';

part 'app_icon_filled_tonal_button_widget.dart';

part 'app_icon_outline_button_widget.dart';

abstract class _AppIconButtonBaseBuilder extends StatelessWidget {
  @protected
  final IconData icon;
  @protected
  final bool? isDisabled;
  @protected
  final void Function()? onPressed;

  const _AppIconButtonBaseBuilder({
    super.key,
    required this.icon,
    this.isDisabled,
    this.onPressed,
  });
}

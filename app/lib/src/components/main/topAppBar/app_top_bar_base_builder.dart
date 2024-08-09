import 'package:flutter/material.dart';

part 'app_top_bar_widget.dart';

enum _AppTopBarType {
  small,
  medium,
  large;
}

abstract class AppTopBarBaseBuilder extends StatelessWidget {
  @protected
  final String title;
  @protected
  final Widget? leading;
  @protected
  final List<Widget>? actions;
  @protected
  final bool forceElevated;

  const AppTopBarBaseBuilder({
    super.key,
    required this.title,
    this.leading,
    this.actions,
    this.forceElevated = false,
  });

  @override
  Widget build(BuildContext context);
}

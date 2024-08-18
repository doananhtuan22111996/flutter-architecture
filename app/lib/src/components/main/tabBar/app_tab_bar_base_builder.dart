import 'package:flutter/material.dart';

part 'app_tab_bar_widget.dart';

abstract class _AppTabBarBaseBuilder extends TabBar {
  const _AppTabBarBaseBuilder({
    super.key,
    required super.tabs,
    super.controller,
    super.isScrollable,
    super.tabAlignment,
    super.onTap,
  });
}

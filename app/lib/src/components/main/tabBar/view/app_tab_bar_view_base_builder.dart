import 'package:flutter/material.dart';

part 'app_tab_bar_view_widget.dart';

abstract class _AppTabBarViewBaseBuilder extends TabBarView {
  const _AppTabBarViewBaseBuilder({
    super.key,
    required super.children,
    super.controller,
    super.dragStartBehavior,
  });
}

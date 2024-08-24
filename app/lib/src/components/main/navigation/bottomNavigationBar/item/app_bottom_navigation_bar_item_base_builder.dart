import 'package:flutter/material.dart';

part 'app_bottom_navigation_bar_item_widget.dart';

abstract class _AppBottomNavigationBarItemBaseBuilder
    extends BottomNavigationBarItem {
  _AppBottomNavigationBarItemBaseBuilder({
    required super.icon,
    super.label,
    super.activeIcon,
    super.key,
  });
}

import 'package:flutter/material.dart';

part 'app_bottom_navigation_bar_item_widget.dart';

abstract class AppBottomNavigationBarItemBaseBuilder
    extends BottomNavigationBarItem {
  AppBottomNavigationBarItemBaseBuilder({
    required super.icon,
    super.label,
    super.activeIcon,
    super.backgroundColor,
    super.tooltip,
    super.key,
  });
}

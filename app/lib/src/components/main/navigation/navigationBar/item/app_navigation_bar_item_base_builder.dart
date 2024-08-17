import 'package:flutter/material.dart';

part 'app_navigation_bar_item_widget.dart';

abstract class AppNavigationBarItemBaseBuilder extends NavigationDestination {
  const AppNavigationBarItemBaseBuilder({
    super.key,
    required super.icon,
    required super.label,
    super.selectedIcon,
    super.enabled,
    super.tooltip,
  });
}

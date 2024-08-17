import 'package:flutter/material.dart';

part 'app_navigation_bar_item_widget.dart';

abstract class _AppNavigationBarItemBaseBuilder extends NavigationDestination {
  const _AppNavigationBarItemBaseBuilder({
    super.key,
    required super.icon,
    required super.label,
    super.selectedIcon,
    super.enabled,
    super.tooltip,
  });
}

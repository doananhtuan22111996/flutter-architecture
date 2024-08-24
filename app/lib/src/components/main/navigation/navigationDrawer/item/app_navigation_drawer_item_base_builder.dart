import 'package:flutter/material.dart';

part 'app_navigation_drawer_item_widget.dart';

abstract class _AppNavigationDrawerItemBaseBuilder
    extends NavigationDrawerDestination {
  const _AppNavigationDrawerItemBaseBuilder({
    super.key,
    required super.icon,
    required super.label,
    super.selectedIcon,
    super.enabled,
  });
}

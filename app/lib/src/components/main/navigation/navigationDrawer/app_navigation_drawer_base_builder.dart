import 'package:flutter/material.dart';

part 'app_navigation_drawer_widget.dart';

abstract class _AppNavigationDrawerBaseBuilder extends NavigationDrawer {
  const _AppNavigationDrawerBaseBuilder({
    super.key,
    required super.children,
    super.selectedIndex,
    super.onDestinationSelected,
  });
}

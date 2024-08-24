import 'package:flutter/material.dart';

part 'app_navigation_bar_widget.dart';

abstract class _AppNavigationBarBaseBuilder extends NavigationBar {
  _AppNavigationBarBaseBuilder({
    super.key,
    required super.destinations,
    super.selectedIndex,
    super.onDestinationSelected,
  });
}

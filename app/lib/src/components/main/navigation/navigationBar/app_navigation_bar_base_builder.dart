import 'package:flutter/material.dart';

part 'app_navigation_bar_widget.dart';

abstract class AppNavigationBarBaseBuilder extends NavigationBar {
  AppNavigationBarBaseBuilder({
    super.key,
    required super.destinations,
    super.selectedIndex,
    super.onDestinationSelected,
  });
}

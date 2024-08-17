import 'package:flutter/material.dart';

part 'app_bottom_navigation_bar_widget.dart';

abstract class AppBottomNavigationBarBaseBuilder extends StatelessWidget {
  @protected
  final List<BottomNavigationBarItem> items;


  const AppBottomNavigationBarBaseBuilder({
    super.key,
    required this.items,
  });
}

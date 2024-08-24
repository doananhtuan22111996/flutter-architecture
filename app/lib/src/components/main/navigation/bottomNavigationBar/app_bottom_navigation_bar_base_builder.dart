import 'package:flutter/material.dart';

part 'app_bottom_navigation_bar_widget.dart';

abstract class _AppBottomNavigationBarBaseBuilder extends StatelessWidget {
  @protected
  final List<BottomNavigationBarItem> items;

  const _AppBottomNavigationBarBaseBuilder({
    super.key,
    required this.items,
  });
}

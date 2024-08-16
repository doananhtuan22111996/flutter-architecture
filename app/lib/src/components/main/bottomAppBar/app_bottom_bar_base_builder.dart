import 'package:app/src/config/app_theme_ext.dart';
import 'package:flutter/material.dart';

part 'app_bottom_bar_widget.dart';

abstract class AppBottomBarBaseBuilder extends StatelessWidget {
  @protected
  final Widget child;

  const AppBottomBarBaseBuilder({
    super.key,
    required this.child,
  });
}

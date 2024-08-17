import 'package:flutter/material.dart';

part 'app_badge_widget.dart';

enum _AppBadgeType { small, large }

abstract class AppBadgeBaseBuilder extends StatelessWidget {
  @protected
  final int count;
  @protected
  final Color? backgroundColor;
  @protected
  final Widget? child;

  const AppBadgeBaseBuilder({
    super.key,
    required this.backgroundColor,
    this.count = 0,
    this.child,
  });
}

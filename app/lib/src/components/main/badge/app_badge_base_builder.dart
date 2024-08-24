import 'package:flutter/material.dart';

part 'app_badge_widget.dart';

enum _AppBadgeType { small, large }

abstract class _AppBadgeBaseBuilder extends StatelessWidget {
  @protected
  final int count;
  @protected
  final Color? backgroundColor;
  @protected
  final Widget? child;

  const _AppBadgeBaseBuilder({
    super.key,
    required this.backgroundColor,
    this.count = 0,
    this.child,
  });
}

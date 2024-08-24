import 'package:flutter/material.dart';

part 'app_progress_widget.dart';

enum _AppProgressType {
  circle,
  linear,
  refresh;
}

abstract class _AppProgressBaseBuilder extends StatelessWidget {
  static const double max = 100;

  @protected
  final double? value;
  @protected
  final Color? backgroundColor;
  @protected
  final Color? color;
  @protected
  final StrokeCap? strokeCap;

  const _AppProgressBaseBuilder({
    super.key,
    this.value,
    this.backgroundColor,
    this.color,
    this.strokeCap,
  });
}

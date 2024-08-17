import 'package:flutter/material.dart';

part 'app_icon_widget.dart';

abstract class _AppIconBaseBuilder extends StatelessWidget {
  @protected
  final IconData icon;

  const _AppIconBaseBuilder({
    super.key,
    required this.icon,
  });
}

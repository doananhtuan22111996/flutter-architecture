import 'package:flutter/material.dart';

part 'app_icon_widget.dart';

abstract class AppIconBaseBuilder extends StatelessWidget {
  @protected
  final IconData icon;

  const AppIconBaseBuilder({
    super.key,
    required this.icon,
  });
}

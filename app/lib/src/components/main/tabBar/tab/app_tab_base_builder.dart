import 'package:flutter/material.dart';

part 'app_tab_widget.dart';

abstract class _AppTabBaseBuilder extends Tab {
  const _AppTabBaseBuilder({
    super.key,
    super.icon,
    super.text,
    super.child,
  });
}

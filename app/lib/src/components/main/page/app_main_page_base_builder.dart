import 'package:flutter/material.dart';

part 'app_main_page_widget.dart';

abstract class AppMainPageBaseBuilder extends StatelessWidget {
  @protected
  final Widget body;
  @protected
  final NestedScrollViewHeaderSliversBuilder headerSliverBuilder;
  @protected
  final Widget? endDrawer;
  @protected
  final void Function(bool)? onEndDrawerChanged;

  const AppMainPageBaseBuilder({
    super.key,
    required this.headerSliverBuilder,
    required this.body,
    this.endDrawer,
    this.onEndDrawerChanged,
  });
}

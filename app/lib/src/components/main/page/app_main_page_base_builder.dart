import 'package:flutter/material.dart';

part 'app_main_page_widget.dart';

abstract class AppMainPageBaseBuilder extends StatelessWidget {
  @protected
  final Key? scaffoldKey;
  @protected
  final Widget body;
  @protected
  final NestedScrollViewHeaderSliversBuilder headerSliverBuilder;
  @protected
  final Widget? bottomAppBar;
  @protected
  final Widget? floatingActionButton;
  @protected
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  @protected
  final Widget? drawer;
  @protected
  final void Function(bool)? onDrawerChanged;
  @protected
  final Widget? endDrawer;
  @protected
  final void Function(bool)? onEndDrawerChanged;

  const AppMainPageBaseBuilder({
    super.key,
    this.scaffoldKey,
    required this.headerSliverBuilder,
    required this.body,
    this.bottomAppBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.drawer,
    this.onDrawerChanged,
    this.endDrawer,
    this.onEndDrawerChanged,
  });
}

part of 'app_navigation_drawer_base_builder.dart';

class AppNavigationDrawerWidget extends _AppNavigationDrawerBaseBuilder {
  const AppNavigationDrawerWidget({
    super.key,
    required super.children,
    super.selectedIndex,
    super.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      key: key,
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
      children: children,
    );
  }
}

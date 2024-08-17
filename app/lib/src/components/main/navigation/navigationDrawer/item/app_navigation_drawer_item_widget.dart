part of 'app_navigation_drawer_item_base_builder.dart';

class AppNavigationDrawerItemWidget
    extends _AppNavigationDrawerItemBaseBuilder {
  const AppNavigationDrawerItemWidget({
    required super.icon,
    required super.label,
    super.enabled,
    super.selectedIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDrawerDestination(
      key: key,
      icon: icon,
      selectedIcon: selectedIcon,
      label: label,
      enabled: enabled,
    );
  }
}

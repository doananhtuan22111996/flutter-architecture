part of 'app_navigation_bar_item_base_builder.dart';

class AppNavigationBarItemWidget extends _AppNavigationBarItemBaseBuilder {
  const AppNavigationBarItemWidget({
    required super.icon,
    required super.label,
    super.enabled,
    super.selectedIcon,
    super.tooltip,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      key: key,
      icon: icon,
      selectedIcon: selectedIcon,
      label: label,
      tooltip: tooltip,
      enabled: enabled,
    );
  }
}

part of 'app_navigation_bar_base_builder.dart';

class AppNavigationBarWidget extends _AppNavigationBarBaseBuilder {
  AppNavigationBarWidget({
    super.key,
    required super.destinations,
    super.selectedIndex,
    super.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      key: key,
      destinations: destinations,
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
    );
  }
}

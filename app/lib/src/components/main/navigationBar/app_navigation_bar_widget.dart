part of 'app_navigation_bar_base_builder.dart';

class AppNavigationBarWidget extends AppNavigationBarBaseBuilder {
  AppNavigationBarWidget({
    super.key,
    required super.destinations,
    super.selectedIndex,
    super.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: destinations,
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
    );
  }
}

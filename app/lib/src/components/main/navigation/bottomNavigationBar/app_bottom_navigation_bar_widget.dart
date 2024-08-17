part of 'app_bottom_navigation_bar_base_builder.dart';

class AppBottomNavigationBarWidget extends AppBottomNavigationBarBaseBuilder {
  const AppBottomNavigationBarWidget({
    super.key,
    required super.items,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: items);
  }
}

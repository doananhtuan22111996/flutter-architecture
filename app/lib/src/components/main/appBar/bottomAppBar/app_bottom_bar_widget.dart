part of 'app_bottom_bar_base_builder.dart';

class AppBottomBarWidget extends AppBottomBarBaseBuilder {
  const AppBottomBarWidget({
    super.key,
    required super.child,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: child,
    );
  }
}

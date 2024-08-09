part of 'app_main_page_base_builder.dart';

class AppMainPageWidget extends AppMainPageBaseBuilder {
  const AppMainPageWidget({
    super.key,
    required super.body,
    required super.headerSliverBuilder,
    super.endDrawer,
    super.onEndDrawerChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        key: key,
        endDrawer: endDrawer,
        endDrawerEnableOpenDragGesture: false,
        onEndDrawerChanged: onEndDrawerChanged,
        body: NestedScrollView(
          headerSliverBuilder: headerSliverBuilder,
          body: body,
        ),
      ),
    );
  }
}

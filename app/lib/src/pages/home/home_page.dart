part of 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  static void open() {
    Get.toNamed(Routes.home);
  }

  @override
  Widget build(BuildContext context) {
    return AppMainPageWidget(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
        AppTopBarWidget(
          title: R.strings.homeView,
          forceElevated: innerBoxIsScrolled,
        )
      ],
      bottomAppBar:
          AppNavigationBarWidget(destinations: controller.destinationTabs),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Obx(
      () => AppTabBarWidget(
        tabs: [...controller.numberTabs],
        index: controller.numberIndex.value,
        pages: const [
          PagingView(),
          PagingLocalView(),
        ],
        onTap: (index) => controller.numberIndex.value = index,
      ),
    );
  }
}

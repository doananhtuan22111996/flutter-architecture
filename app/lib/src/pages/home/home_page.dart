part of 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static void open() {
    Get.toNamed(Routes.home);
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final controller = Get.find<HomeController>();
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return AppMainPageWidget(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
        AppTopBarWidget(
          title: R.strings.homeView,
          forceElevated: innerBoxIsScrolled,
          bottom: AppTabBarWidget(
            controller: tabController,
            tabs: controller.tabs,
          ),
        ),
      ],
      bottomAppBar:
          AppNavigationBarWidget(destinations: controller.destinationTabs),
      body: AppTabBarViewWidget(
        controller: tabController,
        children: const [
          PagingView(),
          PagingLocalView(),
        ],
      ),
    );
  }
}

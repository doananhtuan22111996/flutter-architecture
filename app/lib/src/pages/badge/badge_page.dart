part of 'badge_controller.dart';

class BadgePage extends GetView<BadgeController> {
  const BadgePage({super.key});

  static void open() {
    Get.toNamed(Routes.badge);
  }

  @override
  Widget build(BuildContext context) {
    return AppMainPageWidget(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
        AppTopBarWidget(
          title: "Badge",
          forceElevated: innerBoxIsScrolled,
        )
      ],
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppThemeExt.of.majorScale(4)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBadgeWidget.small(),
          SizedBox(height: AppThemeExt.of.majorScale(2)),
          AppBadgeWidget.small(
              backgroundColor: AppThemeExt.of.colorScheme.primary),
          SizedBox(height: AppThemeExt.of.majorScale(2)),
          const AppBadgeWidget.large(count: 13),
          SizedBox(height: AppThemeExt.of.majorScale(2)),
          AppBadgeWidget.large(
              count: 15, backgroundColor: AppThemeExt.of.colorScheme.primary),
        ],
      ),
    );
  }
}

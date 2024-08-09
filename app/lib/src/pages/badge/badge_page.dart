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
    return Container();
    //   return Padding(
    //     padding: EdgeInsets.all(AppThemeExt.of.majorScale(4)),
    //     child: Column(
    //       children: [
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           children: [
    //             _numberBadge(context),
    //             _dotBadge(context),
    //           ],
    //         ),
    //         Padding(
    //           padding:
    //               EdgeInsets.symmetric(vertical: AppThemeExt.of.majorScale(2)),
    //           child: _stateTag(context),
    //         ),
    //       ],
    //     ),
    //   );
    // }
    //
    // Widget _numberBadge(BuildContext context) {
    //   return Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       const AppTextBody1Widget(text: 'Number Badge'),
    //       Row(
    //         children: [
    //           AppBadgeNumberWidget(
    //             number: 13,
    //             color: AppThemeExt.of.colorScheme.primary,
    //             appBadgeBaseType: AppBadgeBaseType.filled,
    //           ),
    //           Padding(
    //             padding: EdgeInsets.symmetric(
    //                 horizontal: AppThemeExt.of.majorScale(2)),
    //             child: AppBadgeNumberWidget(
    //               number: 12,
    //               color: AppThemeExt.of.colorScheme.error,
    //               appBadgeBaseType: AppBadgeBaseType.filled,
    //             ),
    //           ),
    //           AppBadgeNumberWidget(
    //             number: 11,
    //             color: AppThemeExt.of.colorScheme.primary,
    //             appBadgeBaseType: AppBadgeBaseType.filled,
    //           ),
    //           Padding(
    //             padding: EdgeInsets.symmetric(
    //                 horizontal: AppThemeExt.of.majorScale(2)),
    //             child: AppBadgeNumberWidget(
    //               number: 10,
    //               color: AppThemeExt.of.colorScheme.secondary,
    //               appBadgeBaseType: AppBadgeBaseType.filled,
    //             ),
    //           ),
    //           AppBadgeNumberWidget(
    //             number: 15,
    //             color: AppThemeExt.of.colorScheme.primary,
    //             isDisabled: true,
    //             appBadgeBaseType: AppBadgeBaseType.filled,
    //           ),
    //         ],
    //       ),
    //     ],
    //   );
    // }
    //
    // Widget _dotBadge(BuildContext context) {
    //   return Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       const AppTextBody1Widget(text: 'Dot Badge'),
    //       Row(
    //         children: [
    //           AppBadgeDotWidget(color: AppThemeExt.of.colorScheme.primary),
    //           Padding(
    //             padding: EdgeInsets.symmetric(
    //                 horizontal: AppThemeExt.of.majorScale(2)),
    //             child: AppBadgeDotWidget(color: AppThemeExt.of.colorScheme.error),
    //           ),
    //           AppBadgeDotWidget(color: AppThemeExt.of.colorScheme.primary),
    //           Padding(
    //             padding: EdgeInsets.symmetric(
    //                 horizontal: AppThemeExt.of.majorScale(2)),
    //             child: AppBadgeDotWidget(
    //                 color: AppThemeExt.of.colorScheme.secondary),
    //           ),
    //         ],
    //       ),
    //     ],
    //   );
    // }
    //
    // Widget _stateTag(BuildContext context) {
    //   return Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       const AppTextBody1Widget(text: 'State Tags'),
    //       SingleChildScrollView(
    //         scrollDirection: Axis.horizontal,
    //         child: Row(
    //           children: [
    //             const AppStateTagWidget(
    //               tag: 'Success',
    //               appTagBaseType: AppTagBaseType.success,
    //             ),
    //             Padding(
    //               padding: EdgeInsets.symmetric(
    //                   horizontal: AppThemeExt.of.majorScale(2)),
    //               child: const AppStateTagWidget(
    //                 tag: 'Warning',
    //                 appTagBaseType: AppTagBaseType.warning,
    //               ),
    //             ),
    //             const AppStateTagWidget(
    //               tag: 'Waiting',
    //               appTagBaseType: AppTagBaseType.waiting,
    //             ),
    //             Padding(
    //               padding: EdgeInsets.symmetric(
    //                   horizontal: AppThemeExt.of.majorScale(2)),
    //               child: const AppStateTagWidget(
    //                 tag: 'Cancel',
    //                 appTagBaseType: AppTagBaseType.cancel,
    //               ),
    //             ),
    //             const AppStateTagWidget(tag: 'Disabled'),
    //           ],
    //         ),
    //       ),
    //     ],
    //   );
  }
}

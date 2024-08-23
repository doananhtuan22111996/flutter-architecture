part of 'tooltip_controller.dart';

class TooltipPage extends GetWidget<TooltipController> {
  const TooltipPage({super.key});

  static void open() {
    Get.toNamed(Routes.tooltip);
  }

  @override
  Widget build(BuildContext context) {
    return AppMainPageWidget(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
        AppTopBarWidget(
          title: "Tooltip",
          forceElevated: innerBoxIsScrolled,
        )
      ],
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppThemeExt.of.majorScale(4)),
      child: Container(),
    );
  }
}

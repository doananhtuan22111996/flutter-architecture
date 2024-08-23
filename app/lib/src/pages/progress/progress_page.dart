part of 'progress_controller.dart';

class ProgressPage extends GetView<ProgressController> {
  const ProgressPage({super.key});

  static void open() {
    Get.toNamed(Routes.progress);
  }

  @override
  Widget build(BuildContext context) {
    return AppMainPageWidget(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
        AppTopBarWidget(
          title: R.strings.progress,
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const AppProgressWidget(),
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: AppThemeExt.of.majorScale(2)),
            child: AppProgressWidget.linear(
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            ),
          ),
          AppProgressWidget.circle(
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          )
        ],
      ),
    );
  }
}

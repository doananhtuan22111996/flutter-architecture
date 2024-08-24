part of 'dialog_controller.dart';

class DialogPage extends GetView<DialogController> {
  const DialogPage({super.key});

  static void open() {
    Get.toNamed(Routes.dialog);
  }

  @override
  Widget build(BuildContext context) {
    return AppMainPageWidget(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
        AppTopBarWidget(
          title: R.strings.dialog,
          forceElevated: innerBoxIsScrolled,
        )
      ],
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppThemeExt.of.majorScale(4)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppFilledButtonWidget.text(
                label: 'Dialog Alert',
                onPressed: () => controller.dialogAlert(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: AppThemeExt.of.majorScale(2)),
                child: AppFilledButtonWidget.text(
                  label: 'Dialog Full Screen',
                  onPressed: () => controller.dialogFullScreen(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

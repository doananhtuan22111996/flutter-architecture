part of 'dialog_controller.dart';

class DialogPage extends GetView<DialogController> {
  const DialogPage({super.key});

  static void open() {
    Get.toNamed(Routes.dialog);
  }

  @override
  Widget build(BuildContext context) {
    return AppMainPageWidget(
      appBar: AppBarWidget(
        headerPage: R.strings.dialog,
      ).build(context),
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
                label: 'Dialog Success',
                onPressed: () => controller.dialogSuccess(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: AppThemeExt.of.majorScale(2)),
                child: AppFilledButtonWidget.text(
                  label: 'Dialog error',
                  onPressed: () => controller.dialogError(),
                ),
              ),
              AppFilledButtonWidget.text(
                label: 'Dialog confirm',
                onPressed: () => controller.dialogConfirm(),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppFilledButtonWidget.text(
                label: 'Dialog Screen Success',
                onPressed: () => controller.dialogScreenSuccess(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: AppThemeExt.of.majorScale(2)),
                child: AppFilledButtonWidget.text(
                  label: 'Dialog Screen error',
                  onPressed: () => controller.dialogScreenError(),
                ),
              ),
              AppFilledButtonWidget.text(
                label: 'Dialog Screen confirm',
                onPressed: () => controller.dialogScreenConfirm(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

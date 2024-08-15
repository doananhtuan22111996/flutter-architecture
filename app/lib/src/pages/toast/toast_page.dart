part of 'toast_controller.dart';

class ToastPage extends GetWidget<ToastController> {
  const ToastPage({super.key});

  static void open() {
    Get.toNamed(Routes.toast);
  }

  @override
  Widget build(BuildContext context) {
    return AppMainPageWidget(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
        AppTopBarWidget(
          title: "Toast",
          forceElevated: innerBoxIsScrolled,
        )
      ],
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppThemeExt.of.majorScale(4)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        AppFilledButtonWidget.text(
          label: 'Snackbars fixed no action',
          onPressed: () {
            const AppToastFixedWidget.message(
              messageText: "Single-line snackbar",
              showCloseIcon: true,
            ).show();
          },
        ),
        AppFilledButtonWidget.text(
          label: 'Snackbars fixed with action',
          onPressed: () {
            AppToastFixedWidget.action(
                messageText: "Single-line snackbar with action",
                action: SnackBarAction(
                  label: "Action",
                  onPressed: () {},
                )).show();
          },
        ),
        AppFilledButtonWidget.text(
          label: 'Snackbars fixed full options',
          onPressed: () {
            AppToastFixedWidget.action(
                showCloseIcon: true,
                messageText:
                    "Two-line snackbar with longer action and close affordance",
                action: SnackBarAction(
                  label: "Action",
                  onPressed: () {},
                )).show();
          },
        ),
        AppFilledButtonWidget.text(
          label: 'Snackbars floating no action',
          onPressed: () {
            const AppToastFloatingWidget.message(
              messageText: "Single-line snackbar",
              showCloseIcon: true,
            ).show();
          },
        ),
        AppFilledButtonWidget.text(
          label: 'Snackbars floating with action',
          onPressed: () {
            AppToastFloatingWidget.action(
                messageText: "Single-line snackbar with action",
                action: SnackBarAction(
                  label: "Action",
                  onPressed: () {},
                )).show();
          },
        ),
        AppFilledButtonWidget.text(
          label: 'Snackbars floating full options',
          onPressed: () {
            AppToastFloatingWidget.action(
                showCloseIcon: true,
                messageText:
                    "Two-line snackbar with longer action and close affordance.",
                action: SnackBarAction(
                  label: "Action",
                  onPressed: () {},
                )).show();
          },
        ),
      ]),
    );
  }
}

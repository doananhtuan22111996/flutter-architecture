part of 'login_controller.dart';

class LoginPage extends GetWidget<LoginController> {
  const LoginPage({super.key});

  static void open() {
    Get.toNamed(Routes.login);
  }

  @override
  Widget build(BuildContext context) {
    return AppMainPageWidget(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
        AppTopBarWidget(
          title: R.strings.login,
          forceElevated: innerBoxIsScrolled,
        )
      ],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: R.pngs.login.image(fit: BoxFit.fill)),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
                vertical: AppThemeExt.of.majorScale(2),
                horizontal: AppThemeExt.of.majorScale(4)),
            child: AppFilledButtonWidget.text(
              label: R.strings.login,
              onPressed: () => controller.executeLogin(),
            ),
          )
        ],
      ),
    );
  }
}

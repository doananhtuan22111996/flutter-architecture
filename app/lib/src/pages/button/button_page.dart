part of 'button_controller.dart';

class ButtonPage extends GetView<ButtonController> {
  const ButtonPage({super.key});

  static void open() {
    Get.toNamed(Routes.button);
  }

  @override
  Widget build(BuildContext context) {
    return AppMainPageWidget(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [AppTopBarWidget(title: R.strings.button)];
      },
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppThemeExt.of.majorScale(4)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: _filled(context)),
                Expanded(child: _outlined(context)),
              ],
            ),
            SizedBox(height: AppThemeExt.of.majorScale(4)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: _text(context)),
                Expanded(child: _elevated(context)),
              ],
            ),
            SizedBox(height: AppThemeExt.of.majorScale(4)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: _tonal(context)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _filled(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppTextBody1Widget(text: 'Filled Button'),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppFilledButtonWidget.text(
          label: R.strings.button,
          onPressed: () => controller.toast(),
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppFilledButtonWidget.icon(
          label: R.strings.button,
          icon: Icons.add,
          onPressed: () => controller.toast(),
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppFilledButtonWidget.text(
          label: R.strings.button,
          isDisabled: true,
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppFilledButtonWidget.icon(
          label: R.strings.button,
          icon: Icons.add,
          isDisabled: true,
        ),
      ],
    );
  }

  Widget _outlined(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppTextBody1Widget(text: 'Outlined Button'),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppOutlinedButtonWidget.text(
          label: R.strings.button,
          onPressed: () => controller.toast(),
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppOutlinedButtonWidget.icon(
          label: R.strings.button,
          icon: Icons.add,
          onPressed: () => controller.toast(),
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppOutlinedButtonWidget.text(
          label: R.strings.button,
          isDisabled: true,
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppOutlinedButtonWidget.icon(
          label: R.strings.button,
          icon: Icons.add,
          isDisabled: true,
        ),
      ],
    );
  }

  Widget _text(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppTextBody1Widget(text: 'Text Button'),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppTextButtonWidget.text(
          label: R.strings.button,
          onPressed: () => controller.toast(),
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppTextButtonWidget.icon(
          label: R.strings.button,
          icon: Icons.add,
          onPressed: () => controller.toast(),
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppTextButtonWidget.text(
          label: R.strings.button,
          isDisabled: true,
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppTextButtonWidget.icon(
          label: R.strings.button,
          icon: Icons.add,
          isDisabled: true,
        ),
      ],
    );
  }

  Widget _elevated(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppTextBody1Widget(text: 'Elevated Button'),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppElevatedButtonWidget.text(
          label: R.strings.button,
          onPressed: () => controller.toast(),
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppElevatedButtonWidget.icon(
          label: R.strings.button,
          icon: Icons.add,
          onPressed: () => controller.toast(),
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppElevatedButtonWidget.text(
          label: R.strings.button,
          isDisabled: true,
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppElevatedButtonWidget.icon(
          label: R.strings.button,
          icon: Icons.add,
          isDisabled: true,
        ),
      ],
    );
  }

  Widget _tonal(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppTextBody1Widget(text: 'Tonal Button'),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppTonalButtonWidget.text(
          label: R.strings.button,
          onPressed: () => controller.toast(),
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppTonalButtonWidget.icon(
          label: R.strings.button,
          icon: Icons.add,
          onPressed: () => controller.toast(),
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppTonalButtonWidget.text(
          label: R.strings.button,
          isDisabled: true,
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppTonalButtonWidget.icon(
          label: R.strings.button,
          icon: Icons.add,
          isDisabled: true,
        ),
      ],
    );
  }
}

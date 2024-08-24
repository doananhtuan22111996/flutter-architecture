part of 'radio_button_controller.dart';

class RadioButtonPage extends GetWidget<RadioButtonController> {
  const RadioButtonPage({super.key});

  static void open() {
    Get.toNamed(Routes.radioButton);
  }

  @override
  Widget build(BuildContext context) {
    return AppMainPageWidget(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
        AppTopBarWidget(
          title: R.strings.radioButton,
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
        children: [
          AppRadioButtonWidget.listTitle(
            value: "value1",
            groupValue: "value1",
            title: const Text("Radio 1"),
            onChanged: (value) {},
          ),
          AppRadioButtonWidget.listTitle(
            value: "value2",
            groupValue: "value1",
            title: const Text("Radio 2"),
            onChanged: (value) {},
          )
        ],
      ),
    );
  }
}

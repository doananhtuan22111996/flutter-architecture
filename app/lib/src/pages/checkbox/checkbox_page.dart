part of 'checkbox_controller.dart';

class CheckboxPage extends GetWidget<CheckboxController> {
  const CheckboxPage({super.key});

  static void open() {
    Get.toNamed(Routes.checkbox);
  }

  @override
  Widget build(BuildContext context) {
    return AppMainPageWidget(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
        AppTopBarWidget(
          title: R.strings.checkbox,
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
          const AppCheckboxWidget.listTitle(
            value: true,
            title: Text('checkbox 1'),
          ),
          AppCheckboxWidget.listTitle(
            value: false,
            title: const Text('checkbox 2'),
            onChanged: (value) => {},
          ),
          AppCheckboxWidget.listTitle(
            value: true,
            title: const Text('checkbox 3'),
            onChanged: (value) => {},
          ),
          AppCheckboxWidget.listTitle(
            value: false,
            isError: true,
            title: const Text('checkbox 4'),
            onChanged: (value) => {},
          ),
          AppCheckboxWidget.listTitle(
            value: true,
            isError: true,
            title: const Text('checkbox 5'),
            onChanged: (value) => {},
          ),
          AppCheckboxWidget.listTitle(
            value: true,
            isError: false,
            title: const Text('checkbox 6'),
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value) => {},
          ),
        ],
      ),
    );
  }
}

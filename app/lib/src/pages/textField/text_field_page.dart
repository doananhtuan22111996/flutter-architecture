part of 'text_field_controller.dart';

class TextFieldPage extends GetView<TextFieldController> {
  const TextFieldPage({super.key});

  static void open() {
    Get.toNamed(Routes.textField);
  }

  @override
  Widget build(BuildContext context) {
    return AppMainPageWidget(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
        AppTopBarWidget(
          title: R.strings.textField,
          forceElevated: innerBoxIsScrolled,
        )
      ],
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(AppThemeExt.of.majorScale(4)),
        child: Column(
          children: [
            FormBuilder(
              key: controller.formKey,
              initialValue: const {
                'textField2': 'Value text field 2',
                'textField4': 'Value text field 4',
              },
              child: Column(
                children: [
                  _textFieldFilled(),
                  SizedBox(height: AppThemeExt.of.majorScale(2)),
                  _textFieldOutlined(),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding:
                  EdgeInsets.symmetric(vertical: AppThemeExt.of.majorScale(4)),
              child: AppFilledButtonWidget.text(
                label: R.strings.submit,
                onPressed: () {
                  controller.formKey.currentState?.saveAndValidate();
                },
              ).build(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _textFieldFilled() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AppTextFieldWidget.filled(
          fieldKey: 'textField1',
          labelText: "Text Field 1",
          hintText: "Hint text field 1",
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
          onReset: () =>
              controller.formKey.currentState?.fields["textField1"]?.reset(),
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppTextFieldWidget.filled(
          fieldKey: 'textField2',
          labelText: "Text Field 2",
          hintText: "Hint text field 2",
          enabled: false,
          readOnly: true,
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppTextFieldWidget.filled(
          fieldKey: 'textField3',
          labelText: "Text Field 3",
          hintText: "Hint text field 3",
          prefixIcon: const Icon(Icons.search),
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
          onReset: () =>
              controller.formKey.currentState?.fields["textField3"]?.reset(),
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppTextFieldWidget.filled(
          fieldKey: 'textField4',
          labelText: "Text Field 4",
          hintText: "Hint text field 4",
          prefixIcon: const Icon(Icons.search),
          enabled: false,
          readOnly: true,
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        Obx(
          () => AppTextFieldWidget.filled(
            fieldKey: 'textField5',
            labelText: "Text Field 5",
            hintText: "Hint text field 5",
            maxLines: 1,
            obscureText: controller.obscureText.value,
            suffixIcon: AppIconButtonWidget(
              icon: controller.obscureText.value
                  ? Icons.visibility
                  : Icons.visibility_off,
              onPressed: () =>
                  controller.obscureText.value = !controller.obscureText.value,
            ),
          ),
        ),
      ],
    );
  }

  Widget _textFieldOutlined() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AppTextFieldWidget.outlined(
          fieldKey: 'textField6',
          labelText: "Text Field 6",
          hintText: "Hint text field 6",
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
          onReset: () =>
              controller.formKey.currentState?.fields["textField1"]?.reset(),
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppTextFieldWidget.outlined(
          fieldKey: 'textField7',
          labelText: "Text Field 7",
          hintText: "Hint text field 7",
          enabled: false,
          readOnly: true,
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppTextFieldWidget.outlined(
          fieldKey: 'textField8',
          labelText: "Text Field 8",
          hintText: "Hint text field 8",
          prefixIcon: const Icon(Icons.search),
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
          onReset: () => controller.formKey.currentState?.fields["textField8"]
              ?.didChange(null),
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppTextFieldWidget.outlined(
          fieldKey: 'textField9',
          labelText: "Text Field 9",
          hintText: "Hint text field 9",
          prefixIcon: const Icon(Icons.search),
          enabled: false,
          readOnly: true,
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        Obx(
          () => AppTextFieldWidget.outlined(
            fieldKey: 'textField10',
            labelText: "Text Field 10",
            hintText: "Hint text field 10",
            maxLines: 1,
            obscureText: controller.obscureText.value,
            suffixIcon: AppIconButtonWidget(
              icon: controller.obscureText.value
                  ? Icons.visibility
                  : Icons.visibility_off,
              onPressed: () =>
                  controller.obscureText.value = !controller.obscureText.value,
            ),
          ),
        ),
      ],
    );
  }
}

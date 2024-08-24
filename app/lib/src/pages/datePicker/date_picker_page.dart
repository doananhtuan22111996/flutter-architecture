part of 'date_picker_controller.dart';

class DatePickerPage extends GetView<DatePickerController> {
  DatePickerPage({super.key});

  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  static void open() {
    Get.toNamed(Routes.datePicker);
  }

  @override
  Widget build(BuildContext context) {
    return AppMainPageWidget(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
        AppTopBarWidget(
          title: R.strings.datePicker,
          forceElevated: innerBoxIsScrolled,
        )
      ],
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppThemeExt.of.majorScale(4)),
        child: Column(
          children: [
            FormBuilder(
              key: _formKey,
              initialValue: {
                'datePicker2': DateTime.now(),
                'dateRangePicker2': DateTimeRange(
                    start: DateTime.now(),
                    end: DateTime.now().add(const Duration(days: 7))),
                'timePicker2': DateTime.now(),
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _date(context),
                  SizedBox(height: AppThemeExt.of.majorScale(2)),
                  _dateRange(context),
                  SizedBox(height: AppThemeExt.of.majorScale(2)),
                  _time(context),
                ],
              ),
            ),
            SizedBox(height: AppThemeExt.of.majorScale(4)),
            SizedBox(
              width: double.infinity,
              child: AppFilledButtonWidget.text(
                label: R.strings.submit,
                onPressed: () => _formKey.currentState?.saveAndValidate(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _date(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppDatePickerWidget(
          fieldKey: 'datePicker1',
          labelText: 'Date picker 1',
          hintText: 'Select date picker',
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
          onReset: () => _formKey.currentState?.fields["datePicker1"]?.reset(),
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppDatePickerWidget(
          fieldKey: 'datePicker2',
          labelText: 'Date picker 2',
          hintText: 'Select date picker',
          enabled: false,
        ),
      ],
    );
  }

  Widget _dateRange(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppDateRangePickerWidget(
          fieldKey: 'dateRangePicker1',
          labelText: "Date Range Picker",
          hintText: "Select date range picker",
          firstDate: DateTime.now(),
          lastDate: DateTime(DateTime.now().year, DateTime.now().month + 1, 1),
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppDateRangePickerWidget(
          fieldKey: 'dateRangePicker2',
          labelText: "Date Range Picker",
          hintText: "Select date range picker",
          firstDate: DateTime.now(),
          lastDate: DateTime(DateTime.now().year, DateTime.now().month + 1, 1),
          enabled: false,
        ),
      ],
    );
  }

  Widget _time(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTimePickerWidget(
          fieldKey: 'timePicker1',
          labelText: "Time Picker",
          hintText: "Select time picker",
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
        ),
        SizedBox(height: AppThemeExt.of.majorScale(2)),
        AppTimePickerWidget(
          fieldKey: 'timePicker2',
          labelText: "Time Picker",
          hintText: "Select time picker",
          enabled: false,
        ),
      ],
    );
  }
}

part of 'app_date_picker_base_builder.dart';

class AppDateRangePickerWidget extends AppDatePickerBaseBuilder<DateTimeRange> {
  AppDateRangePickerWidget({
    required super.fieldKey,
    required super.labelText,
    required super.hintText,
    super.fieldState,
    super.key,
    super.initialValue,
    super.helperText,
    super.errorText,
    super.enabled,
    super.autovalidateMode,
    super.onFieldSubmitted,
    super.onChanged,
    super.onReset,
    super.onSaved,
    super.validator,
    required this.firstDate,
    required this.lastDate,
  });

  final DateTime firstDate;
  final DateTime lastDate;

  @override
  Widget build(BuildContext context) {
    return FormBuilderDateRangePicker(
      key: fieldState,
      name: fieldKey,
      initialValue: initialValue,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        helperText: helperText,
        errorText: errorText,
        suffixIcon: ValueListenableBuilder<String?>(
          valueListenable: _errorNotifier,
          builder: (context, value, child) =>
              value == null || value.isEmpty == true
                  ? AppIconButtonWidget(
                      icon: Icons.cancel_outlined,
                      onPressed: onReset,
                    )
                  : const Icon(Icons.error),
        ),
      ),
      firstDate: firstDate,
      lastDate: lastDate,
      enabled: enabled,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      autovalidateMode: autovalidateMode,
      onFieldSubmitted: onFieldSubmitted,
      validator: (dateTimeRange) {
        final errorText = validator?.call(dateTimeRange);
        _errorNotifier.value = errorText;
        return errorText;
      },
      onChanged: onChanged,
      onReset: onReset,
      onSaved: onSaved,
    );
  }
}

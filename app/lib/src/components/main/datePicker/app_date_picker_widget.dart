part of 'app_date_picker_base_builder.dart';

class AppDatePickerWidget extends AppDatePickerBaseBuilder<DateTime> {
  AppDatePickerWidget({
    required super.fieldKey,
    required super.labelText,
    required super.hintText,
    super.fieldState,
    super.key,
    super.helperText,
    super.errorText,
    super.autovalidateMode,
    super.enabled,
    super.initialValue,
    super.onFieldSubmitted,
    super.onChanged,
    super.onReset,
    super.onSaved,
    super.validator,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderDateTimePicker(
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
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      initialDatePickerMode: DatePickerMode.day,
      inputType: InputType.date,
      autovalidateMode: autovalidateMode,
      enabled: enabled,
      validator: (dateTime) {
        final errorText = validator?.call(dateTime);
        _errorNotifier.value = errorText;
        return errorText;
      },
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      onReset: onReset,
      onSaved: onSaved,
    );
  }
}

part of 'app_date_picker_base_builder.dart';

class AppTimePickerWidget extends AppDatePickerBaseBuilder<DateTime> {
  AppTimePickerWidget({
    super.key,
    super.initialValue,
    super.autovalidateMode,
    super.enabled,
    super.onFieldSubmitted,
    super.onChanged,
    super.onReset,
    super.onSaved,
    super.validator,
    super.errorText,
    super.helperText,
    required super.fieldKey,
    required super.labelText,
    required super.hintText,
    this.initialTime = const TimeOfDay(hour: 12, minute: 0),
  });

  final TimeOfDay initialTime;

  @override
  Widget build(BuildContext context) {
    return FormBuilderDateTimePicker(
      key: fieldState,
      name: fieldKey,
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
      initialValue: initialValue,
      initialTime: initialTime,
      inputType: InputType.time,
      enabled: enabled,
      timePickerInitialEntryMode: TimePickerEntryMode.dialOnly,
      autovalidateMode: autovalidateMode,
      onFieldSubmitted: onFieldSubmitted,
      validator: (dateTime) {
        final errorText = validator?.call(dateTime);
        _errorNotifier.value = errorText;
        return errorText;
      },
      onChanged: onChanged,
      onSaved: onSaved,
      onReset: onReset,
    );
  }
}

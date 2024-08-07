part of 'app_date_picker_base_builder.dart';

class AppDatePickerWidget extends AppDatePickerBaseBuilder {
  AppDatePickerWidget({
    super.key,
    required super.fieldKey,
    super.initialDate,
    super.onDatePicked,
    super.appDatePickerSize,
    super.isDisabled,
  });

  @override
  Widget build(BuildContext context) {
    EdgeInsets contentPadding =
        EdgeInsets.only(left: AppThemeExt.of.majorScale(3));
    BoxConstraints suffixIconConstraints = BoxConstraints.expand(
      width: AppThemeExt.of.majorScale(10),
      height: AppDatePickerSize.medium.value,
    );
    double iconSize = AppThemeExt.of.majorScale(3);
    if (appDatePickerSize == AppDatePickerSize.small) {
      contentPadding = EdgeInsets.only(left: AppThemeExt.of.majorScale(2));
      suffixIconConstraints = BoxConstraints.expand(
        width: AppThemeExt.of.majorScale(8),
        height: appDatePickerSize!.value,
      );
    }
    if (appDatePickerSize == AppDatePickerSize.large) {
      contentPadding = EdgeInsets.only(left: AppThemeExt.of.majorScale(4));
      iconSize = AppThemeExt.of.majorScale(4);
      suffixIconConstraints = BoxConstraints.expand(
        width: AppThemeExt.of.majorScale(13),
        height: appDatePickerSize!.value,
      );
    }
    return FormBuilderField<DateTime?>(
      name: fieldKey,
      initialValue: initialDate,
      builder: (field) => InkWell(
        onTap: isDisabled == true
            ? null
            : () async {
                final datePicked = await open(context, field.value);
                if (datePicked != null) {
                  field.didChange(datePicked);
                  onDatePicked?.call(datePicked);
                }
              },
        borderRadius: BorderRadius.circular(AppThemeExt.of.majorScale(1)),
        child: InputDecorator(
          decoration: InputDecoration(
            constraints: BoxConstraints.expand(
                height:
                    appDatePickerSize?.value ?? AppDatePickerSize.medium.value),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppThemeExt.of.majorScale(1)),
              borderSide: BorderSide(color: AppThemeExt.of.colorScheme.primary),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppThemeExt.of.majorScale(1)),
              borderSide:
                  BorderSide(color: AppThemeExt.of.colorScheme.onSurface),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppThemeExt.of.colorScheme.primary),
            ),
            contentPadding: contentPadding,
            suffixIconConstraints: suffixIconConstraints,
            suffixIcon: Icon(
              Icons.calendar_today,
              size: iconSize,
              color: isDisabled == true
                  ? AppThemeExt.of.colorScheme.onSurface
                  : AppThemeExt.of.colorScheme.primary,
            ),
          ),
          child: field.value == null
              ? _hint(context)
              : _text(context, field.value),
        ),
      ),
    );
  }

  Widget _text(BuildContext context, DateTime? initialDate) {
    final textColor = isDisabled == true
        ? AppThemeExt.of.colorScheme.onSurface
        : AppThemeExt.of.colorScheme.primary;
    if (appDatePickerSize == AppDatePickerSize.large) {
      return AppTextBody1Widget(
        text: DateTimeExt.dateTimeToDisplay(dateTime: initialDate),
      );
    }
    return AppTextBody2Widget(
      text: DateTimeExt.dateTimeToDisplay(dateTime: initialDate),
    );
  }

  Widget _hint(BuildContext context) {
    if (appDatePickerSize == AppDatePickerSize.large) {
      return AppTextBody1Widget(
        text: hintText ?? R.strings.datePickerHint,
      );
    }
    return AppTextBody2Widget(
      text: hintText ?? R.strings.datePickerHint,
    );
  }

  Future<DateTime?> open(BuildContext context, DateTime? initialDate) async {
    return await showDatePicker(
      context: context,
      initialDate: initialDate ?? DateTime.now(),
      firstDate: firstDate ?? _limitFirstDate,
      lastDate: lastDate ?? _limitLastDate,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      builder: (context, child) {
        return Theme(
          data: context.theme.copyWith(
            // TODO update theme follow syntax document flutter
            datePickerTheme: context.theme.datePickerTheme.copyWith(
              backgroundColor: AppThemeExt.of.colorScheme.surface,
              surfaceTintColor: AppThemeExt.of.colorScheme.surfaceTint,
            ),
            colorScheme: context.theme.colorScheme.copyWith(
              brightness: Get.theme.brightness,
              primary: AppThemeExt.of.colorScheme.primary,
            ),
            textTheme: context.textTheme.copyWith(),
          ),
          child: child!,
        );
      },
    );
  }
}

part of 'app_date_picker_base_builder.dart';

class AppDateRangePickerWidget extends AppDatePickerBaseBuilder {
  AppDateRangePickerWidget({
    super.key,
    required super.fieldKey,
    super.initialDateRange,
    super.onDateRangePicked,
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
    return FormBuilderField<DateTimeRange?>(
      name: fieldKey,
      initialValue: initialDateRange,
      builder: (field) => InkWell(
        onTap: isDisabled == true
            ? null
            : () async {
                final dateRagePicked = await open(context, field.value);
                if (dateRagePicked != null) {
                  field.didChange(dateRagePicked);
                  onDateRangePicked?.call(dateRagePicked);
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
              borderRadius: BorderRadius.circular(AppThemeExt.of.majorScale(1)),
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

  Widget _text(BuildContext context, DateTimeRange? initialDateRange) {
    final textColor = isDisabled == true
        ? AppThemeExt.of.colorScheme.onSurface
        : AppThemeExt.of.colorScheme.primary;
    if (appDatePickerSize == AppDatePickerSize.large) {
      return AppTextBody1Widget(
        text:
            DateTimeExt.dateTimeRangeToDisplay(dateTimeRange: initialDateRange),
      );
    }
    return AppTextBody2Widget(
      text: DateTimeExt.dateTimeRangeToDisplay(dateTimeRange: initialDateRange),
    );
  }

  Widget _hint(BuildContext context) {
    if (appDatePickerSize == AppDatePickerSize.large) {
      return AppTextBody1Widget(
        text: hintText ?? R.strings.datePickerRangeHint,
      );
    }
    return AppTextBody2Widget(
      text: hintText ?? R.strings.datePickerRangeHint,
    );
  }

  Future<DateTimeRange?> open(
      BuildContext context, DateTimeRange? initialValue) async {
    return await showDateRangePicker(
      context: context,
      initialDateRange: initialValue ??
          DateTimeRange(
            start: DateTime.now(),
            end: DateTime.now(),
          ),
      firstDate: firstDate ?? _limitFirstDate,
      lastDate: lastDate ?? _limitLastDate,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      builder: (context, child) {
        return Theme(
          data: context.theme.copyWith(
            dialogTheme: context.theme.dialogTheme.copyWith(
              surfaceTintColor: AppThemeExt.of.colorScheme.surfaceTint,
            ),
            // TODO update theme follow syntax document flutter
            // datePickerTheme: context.theme.datePickerTheme.copyWith(
            //   surfaceTintColor: AppColors.of.neutralColor[1],
            // ),
            appBarTheme: context.theme.appBarTheme.copyWith(
              backgroundColor: AppThemeExt.of.colorScheme.surface,
              iconTheme: context.theme.iconTheme.copyWith(
                color: AppThemeExt.of.colorScheme.primary,
              ),
            ),
            textButtonTheme: TextButtonThemeData(
                // style: AppButtonStyle.textButtonStyle?.copyWith(
                //   overlayColor: MaterialStateProperty.resolveWith<Color?>(
                //     (Set<MaterialState> states) => AppColors.of.primaryColor[6],
                //   ),
                // ),
                ),
            colorScheme: context.theme.colorScheme.copyWith(
              brightness: Get.theme.brightness,
              primary: AppThemeExt.of.colorScheme.primary,
            ),
          ),
          child: child!,
        );
      },
    );
  }
}

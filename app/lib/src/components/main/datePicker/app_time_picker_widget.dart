part of 'app_date_picker_base_builder.dart';

class AppTimePickerWidget extends AppDatePickerBaseBuilder {
  AppTimePickerWidget({
    super.key,
    required super.fieldKey,
    super.initialTime,
    super.onTimePicked,
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
    return FormBuilderField<TimeOfDay?>(
      name: fieldKey,
      initialValue: initialTime,
      builder: (field) => InkWell(
        onTap: isDisabled == true
            ? null
            : () async {
                final timePicked = await open(context, field.value);
                if (timePicked != null) {
                  field.didChange(timePicked);
                  onTimePicked?.call(timePicked);
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
              borderSide:
                  BorderSide(color: AppThemeExt.of.colorScheme.onSurface),
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
              Icons.timelapse_outlined,
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

  Widget _text(BuildContext context, TimeOfDay? initialTime) {
    final textColor = isDisabled == true
        ? AppThemeExt.of.colorScheme.onSurface
        : AppThemeExt.of.colorScheme.primary;
    if (appDatePickerSize == AppDatePickerSize.large) {
      return AppTextBody1Widget(
        text: initialTime?.format(context),
      );
    }
    return AppTextBody2Widget(
      text: initialTime?.format(context),
    );
  }

  Widget _hint(BuildContext context) {
    if (appDatePickerSize == AppDatePickerSize.large) {
      return AppTextBody1Widget(
        text: hintText ?? R.strings.timePickerHint,
      );
    }
    return AppTextBody2Widget(
      text: hintText ?? R.strings.timePickerHint,
    );
  }

  Future<TimeOfDay?> open(BuildContext context, TimeOfDay? initialValue) async {
    return await showTimePicker(
      context: context,
      initialTime: initialValue ?? TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.dial,
      builder: (context, child) {
        return Theme(
          data: context.theme.copyWith(
            dialogTheme: context.theme.dialogTheme.copyWith(
              surfaceTintColor: AppThemeExt.of.colorScheme.surfaceTint,
            ),
            // TODO update theme follow syntax document flutter
            // timePickerTheme: context.theme.timePickerTheme.copyWith(
            //   surfaceTintColor: AppColors.of.neutralColor[1],
            // ),
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

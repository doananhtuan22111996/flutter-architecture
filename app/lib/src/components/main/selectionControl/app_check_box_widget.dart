part of 'app_selection_control_base_builder.dart';

class AppCheckBoxWidget extends AppSelectionControlBaseBuilder {
  const AppCheckBoxWidget({
    super.key,
    required super.fieldKey,
    required super.value,
    required super.label,
    super.onValueChanged,
    super.isDisabled,
  });

  const AppCheckBoxWidget.noLabel({
    super.key,
    required super.fieldKey,
    required super.value,
    super.onValueChanged,
    super.isDisabled,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<bool?>(
      name: fieldKey,
      initialValue: value,
      builder: (field) => Row(
        children: [
          Checkbox(
            value: field.value ?? false,
            activeColor: _activeColor,
            // overlayColor: MaterialStateProperty.resolveWith<Color?>(
            //   (Set<MaterialState> states) => AppColors.of.neutralColor[3],
            // ),
            side: BorderSide(color: _sideColor),
            onChanged: isDisabled == true
                ? null
                : (value) {
                    field.didChange(value);
                    onValueChanged?.call(value);
                  },
          ),
          if (label != null) Text(label!)
        ],
      ),
    );
  }

  Color? get _activeColor => isDisabled == true
      ? AppThemeExt.of.colorScheme.surface
      : AppThemeExt.of.colorScheme.primary;

  Color get _sideColor => isDisabled == true
      ? AppThemeExt.of.colorScheme.surface
      : AppThemeExt.of.colorScheme.onSurface;

  Color? get _labelColor => isDisabled == true
      ? AppThemeExt.of.colorScheme.onSurface
      : AppThemeExt.of.colorScheme.primary;
}

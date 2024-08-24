import 'package:app/src/components/main/iconButton/app_icon_button_base_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

part 'app_date_picker_widget.dart';

part 'app_date_range_picker_widget.dart';

part 'app_time_picker_widget.dart';

abstract class _AppDatePickerBaseBuilder<T> extends StatelessWidget {
  @protected
  final GlobalKey<FormBuilderFieldState>? fieldState;

  /// [_fieldKey] for FormBuilderField
  @protected
  final String fieldKey;
  @protected
  final String labelText;
  @protected
  final String hintText;
  @protected
  final String? helperText;
  @protected
  final String? errorText;
  @protected
  final T? initialValue;
  @protected
  final bool enabled;
  @protected
  final AutovalidateMode autovalidateMode;
  @protected
  final FormFieldValidator<T>? validator;
  @protected
  final ValueChanged<T?>? onFieldSubmitted;
  @protected
  final ValueChanged<T?>? onChanged;
  @protected
  final Function()? onReset;
  @protected
  final Function(T?)? onSaved;

  final ValueNotifier<String?> _errorNotifier = ValueNotifier<String?>(null);

  _AppDatePickerBaseBuilder({
    super.key,
    required this.fieldKey,
    required this.labelText,
    required this.hintText,
    this.fieldState,
    this.errorText,
    this.helperText,
    this.initialValue,
    this.enabled = true,
    this.autovalidateMode = AutovalidateMode.disabled,
    this.validator,
    this.onFieldSubmitted,
    this.onChanged,
    this.onReset,
    this.onSaved,
  });
}

part of 'app_text_field_base_builder.dart';

class AppTextFieldWidget extends _AppTextFieldBaseBuilder {
  AppTextFieldWidget.filled({
    super.key,
    required super.fieldKey,
    required super.labelText,
    required super.hintText,
    super.fieldState,
    super.initialValue,
    super.errorText,
    super.helperText,
    super.enabled,
    super.readOnly,
    super.obscureText,
    super.textInputAction,
    super.suffixIcon,
    super.prefixIcon,
    super.maxLength,
    super.maxLines,
    super.inputFormatters,
    super.keyboardType,
    super.onSubmitted,
    super.onChanged,
    super.validator,
    super.onReset,
    super.onSaved,
  }) : _appTextFieldType = _AppTextFieldType.filled;

  AppTextFieldWidget.outlined({
    super.key,
    required super.fieldKey,
    required super.labelText,
    required super.hintText,
    super.fieldState,
    super.initialValue,
    super.errorText,
    super.helperText,
    super.enabled,
    super.readOnly,
    super.obscureText,
    super.textInputAction,
    super.suffixIcon,
    super.prefixIcon,
    super.maxLength,
    super.maxLines,
    super.inputFormatters,
    super.keyboardType,
    super.onSubmitted,
    super.onChanged,
    super.validator,
    super.onReset,
    super.onSaved,
  }) : _appTextFieldType = _AppTextFieldType.outlined;

  final _AppTextFieldType _appTextFieldType;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      key: fieldState,
      name: fieldKey,
      initialValue: initialValue,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      textAlign: TextAlign.start,
      maxLines: maxLines,
      maxLength: maxLength,
      readOnly: readOnly,
      enabled: enabled,
      obscureText: obscureText,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        errorText: errorText,
        helperText: helperText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon ??
            ValueListenableBuilder<String?>(
              valueListenable: _errorNotifier,
              builder: (_, value, child) => value == null || value.isEmpty
                  ? AppIconButtonWidget(
                      icon: Icons.cancel_outlined,
                      onPressed: onReset,
                    )
                  : const Icon(Icons.error),
            ),
        border: _appTextFieldType == _AppTextFieldType.outlined
            ? const OutlineInputBorder()
            : null,
      ),
      validator: (value) {
        final errorText = validator?.call(value);
        _errorNotifier.value = errorText;
        return errorText;
      },
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      onReset: onReset,
      onSaved: onSaved,
    );
  }
}

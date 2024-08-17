import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../iconButton/app_icon_button_base_builder.dart';

part 'app_text_field_widget.dart';

enum _AppTextFieldType { filled, outlined }

abstract class _AppTextFieldBaseBuilder extends StatelessWidget {
  @protected
  final GlobalKey<FormBuilderFieldState>? fieldState;

  /// [_fieldKey] for FormBuilderField
  @protected
  final String fieldKey;
  @protected
  final String? initialValue;
  @protected
  final String labelText;
  @protected
  final String hintText;
  @protected
  final String? errorText;
  @protected
  final String? helperText;
  @protected
  final int? maxLines;
  @protected
  final int? maxLength;
  @protected
  final bool enabled;
  @protected
  final bool readOnly;
  @protected
  final bool obscureText;
  @protected
  final Widget? suffixIcon;
  @protected
  final Widget? prefixIcon;
  @protected
  final TextInputType? keyboardType;
  @protected
  final List<TextInputFormatter>? inputFormatters;
  @protected
  final TextInputAction? textInputAction;
  @protected
  final void Function(String?)? onChanged;
  @protected
  final String? Function(String?)? validator;
  @protected
  final void Function(String?)? onSubmitted;
  @protected
  final void Function()? onReset;
  @protected
  final void Function(String?)? onSaved;

  _AppTextFieldBaseBuilder({
    super.key,
    required this.fieldKey,
    required this.labelText,
    required this.hintText,
    this.fieldState,
    this.initialValue,
    this.errorText,
    this.helperText,
    this.maxLength,
    this.maxLines,
    this.enabled = true,
    this.readOnly = false,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
    this.inputFormatters,
    this.textInputAction,
    this.onChanged,
    this.validator,
    this.onSubmitted,
    this.onReset,
    this.onSaved,
  });

  final ValueNotifier<String?> _errorNotifier = ValueNotifier<String?>(null);
}

import 'package:flutter/material.dart';

part 'app_checkbox_widget.dart';

enum _AppCheckboxType { checkbox, checkboxListTitle }

abstract class _AppCheckboxBaseBuilder<T> extends StatelessWidget {
  @protected
  final bool? value;
  @protected
  final bool isError;
  @protected
  final Widget? title;
  @protected
  final Widget? subtitle;
  @protected
  final ListTileControlAffinity controlAffinity;
  @protected
  final ValueChanged<bool?>? onChanged;

  const _AppCheckboxBaseBuilder({
    super.key,
    required this.value,
    this.title,
    this.subtitle,
    this.controlAffinity = ListTileControlAffinity.platform,
    this.isError = false,
    this.onChanged,
  });
}

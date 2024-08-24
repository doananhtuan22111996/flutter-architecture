import 'package:flutter/material.dart';

part 'app_radio_button_widget.dart';

enum _AppRadioType { radio, radioListTitle }

abstract class _AppRadioButtonBaseBuilder<T> extends StatelessWidget {
  @protected
  final T value;
  @protected
  final T? groupValue;
  @protected
  final Widget? title;
  @protected
  final Widget? subtitle;
  @protected
  final ValueChanged<T?>? onChanged;

  const _AppRadioButtonBaseBuilder({
    super.key,
    required this.value,
    this.groupValue,
    this.onChanged,
    this.title,
    this.subtitle,
  });
}

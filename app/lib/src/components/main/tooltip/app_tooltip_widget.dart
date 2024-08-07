import 'package:app/src/components/main/text/app_text_base_builder.dart';
import 'package:flutter/material.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';

import '../../../config/app_theme_ext.dart';

class AppTooltipWidget extends StatelessWidget {
  const AppTooltipWidget(
      {super.key, required this.child, required this.message});

  final Widget child;
  final String message;

  @override
  Widget build(BuildContext context) {
    return JustTheTooltip(
      backgroundColor: AppThemeExt.of.colorScheme.surface,
      triggerMode: TooltipTriggerMode.tap,
      content: Padding(
          padding: EdgeInsets.symmetric(
              vertical: AppThemeExt.of.majorScale(2),
              horizontal: AppThemeExt.of.majorScale(3)),
          child: AppTextBody1Widget(
            text: message,
            textStyle: AppThemeExt.of.textTheme.bodyMedium
                ?.copyWith(color: AppThemeExt.of.colorScheme.onSurface),
          )),
      child: child,
    );
  }
}

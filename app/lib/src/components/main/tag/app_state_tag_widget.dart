// part of 'app_tag_base_builder.dart';
//
// class AppStateTagWidget extends AppTagBaseBuilder {
//   const AppStateTagWidget({super.key, super.appTagBaseType, super.tag});
//
//   @override
//   Widget build(BuildContext context) {
//     return _stateTag(context);
//   }
//
//   Widget _stateTag(BuildContext context) {
//     Color? filledColor = Colors.transparent;
//     Color? textColor = AppThemeExt.of.colorScheme.surface;
//     SvgGenImage? icon;
//     if (appTagBaseType == AppTagBaseType.success) {
//       filledColor = AppThemeExt.of.colorScheme.primary;
//       textColor = AppThemeExt.of.colorScheme.primaryContainer;
//       icon = R.svgs.check24px;
//     }
//     if (appTagBaseType == AppTagBaseType.error) {
//       filledColor = AppThemeExt.of.colorScheme.error;
//       textColor = AppThemeExt.of.colorScheme.errorContainer;
//       icon = R.svgs.check24px;
//     }
//     if (appTagBaseType == AppTagBaseType.warning) {
//       filledColor = AppThemeExt.of.colorScheme.secondary;
//       textColor = AppThemeExt.of.colorScheme.secondaryContainer;
//       icon = R.svgs.outline.tagBadge.exclamationCircle;
//     }
//     if (appTagBaseType == AppTagBaseType.processing) {
//       filledColor = AppThemeExt.of.colorScheme.tertiary;
//       textColor = AppThemeExt.of.colorScheme.tertiaryContainer;
//       icon = R.svgs.outline.tagBadge.infoCircle;
//     }
//     if (appTagBaseType == AppTagBaseType.cancel) {
//       filledColor = AppThemeExt.of.colorScheme.onSecondary;
//       textColor = AppThemeExt.of.colorScheme.onSecondaryContainer;
//       icon = R.svgs.outline.tagBadge.closeCircle1;
//     }
//     if (appTagBaseType == AppTagBaseType.waiting) {
//       filledColor = AppThemeExt.of.colorScheme.secondary;
//       textColor = AppThemeExt.of.colorScheme.secondaryContainer;
//       icon = R.svgs.outline.tagBadge.clockCircle;
//     }
//     if (appTagBaseType == AppTagBaseType.value) {
//       filledColor = AppThemeExt.of.colorScheme.primary;
//       textColor = AppThemeExt.of.colorScheme.primaryContainer;
//       icon = R.svgs.outline.tagBadge.bulb;
//     }
//     return Container(
//       padding: EdgeInsets.symmetric(
//         horizontal: AppThemeExt.of.majorScale(2),
//       ),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(AppThemeExt.of.majorScale(4)),
//         border: appTagBaseType == AppTagBaseType.disabled
//             ? Border.all(color: AppThemeExt.of.colorScheme.onSurface)
//             : null,
//         color: filledColor,
//       ),
//       child: Row(
//         children: [
//           if (icon != null)
//             icon.svg(
//               width: AppThemeExt.of.majorScale(4),
//               height: AppThemeExt.of.majorScale(4),
//             ),
//           if (icon != null) SizedBox(width: AppThemeExt.of.majorScale(1)),
//           AppTextBody3Widget(
//             text: tag,
//             textStyle:
//                 AppThemeExt.of.textTheme.textBody3m?.copyWith(color: textColor),
//           ),
//         ],
//       ),
//     );
//   }
// }

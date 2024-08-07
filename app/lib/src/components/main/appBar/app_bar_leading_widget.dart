part of 'app_bar_base_builder.dart';

class AppBarLeadingWidget extends AppBarBaseBuilder {
  const AppBarLeadingWidget({
    super.key,
    super.actions,
    super.backgroundColor,
    super.bottom,
    super.headerPage,
    super.leading,
  }) : _centerTitle = false;

  const AppBarLeadingWidget.centerTitle({
    super.key,
    super.actions,
    super.backgroundColor,
    super.bottom,
    super.headerPage,
    super.leading,
  }) : _centerTitle = true;

  final bool _centerTitle;

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      leading: leading ??
          AppIconFilledTonalButtonWidget(
            icon: R.svgs.arrowBack24px.svg(),
            onPressed: () => Get.back(),
          ),
      title: AppTextHeading5Widget(text: headerPage),
      centerTitle: _centerTitle,
      actions: actions,
      backgroundColor: backgroundColor ?? AppThemeExt.of.colorScheme.surface,
      bottom: bottom,
    );
  }
}

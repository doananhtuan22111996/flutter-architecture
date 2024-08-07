part of 'app_bar_base_builder.dart';

class AppBarLeadingAvatarWidget extends AppBarBaseBuilder {
  const AppBarLeadingAvatarWidget({
    super.key,
    super.actions,
    super.backgroundColor,
    super.headerPage,
    super.leading,
    super.bottom,
  }) : _centerTitle = false;

  const AppBarLeadingAvatarWidget.centerTitle({
    super.key,
    super.actions,
    super.backgroundColor,
    super.headerPage,
    super.leading,
    super.bottom,
  }) : _centerTitle = true;

  final bool _centerTitle;

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      leading: leading ??
          AppIconFilledTonalButtonWidget(
            icon: R.svgs.arrowBack24px.svg(),
            onPressed: () => Get.back(),
          ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppAvatarSvgWidget(
              svg: R.svgs.account.svg(), size: AppAvatarSize.medium),
          Flexible(child: AppTextHeading5Widget(text: headerPage)),
        ],
      ),
      centerTitle: _centerTitle,
      actions: actions ??
          [AppIconFilledTonalButtonWidget(icon: R.svgs.moreVert24px.svg())],
      backgroundColor: backgroundColor ?? AppThemeExt.of.colorScheme.surface,
      bottom: bottom,
    );
  }
}

import '../generated/assets/assets.gen.dart';
import '../generated/assets/fonts.gen.dart';
import '../generated/strings/l10n.dart';

class R {
  static Strings strings = Strings.current;
  static const AppLocalizationDelegate appLocalizationDelegate =
      Strings.delegate;

  static $AssetsSvgsGen svgs = Assets.svgs;
  static $AssetsPngsGen pngs = Assets.pngs;

  static String roboto = FontFamily.roboto;
}

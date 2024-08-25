part of 'file_generation.dart';

class IosGeneration extends _FileGenerator {
  IosGeneration({
    required super.outputFilePath,
    required super.configJson,
    required String prefix,
  }) : super(prefix: prefix);

  static const iosRootPath = '../app/ios';
  static const nativeDefineIOSFilePath =
      '$iosRootPath/Flutter/NativeGenerated.xcconfig';
  static const developmentCerIOSFilePath =
      '$iosRootPath/Flutter/DevelopmentCerGenerated.xcconfig';
  static const distributionCerIOSFilePath =
      '$iosRootPath/Flutter/DistributionCerGenerated.xcconfig';

  @override
  bool isValidate() {
    if (!configJson.containsKey(codeSignIdentity) ||
        !configJson.containsKey(developmentTeam) ||
        !configJson.containsKey(provisioningProfileSpecifier)) {
      throw Exception('Please update config file - iOS certificate');
    }
    return true;
  }
}

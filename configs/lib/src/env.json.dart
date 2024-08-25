import 'package:configs/src/method/validation_method.dart';

import 'generation/file_generation.dart';
import 'method/method_generation.dart';

void main(List<String>? args) {
  if (args?.isEmpty == true) return;
  if (args?.first == create) {
    for (var element in ['dev', 'prod']) {
      SampleGeneration(outputFilePath: jConfigFilePath(element), configJson: {})
          .execute();
    }
    return;
  }
  Map<String, dynamic> jConfig = getJsonConfig(args?.first ?? stringEmpty);
  if (!isValidate(jConfig)) return;

  _genNativeDefineFile(jConfig[nativeDefine]);
  _genDartDefineFile(jConfig[dartDefine]);
  if (isAndroidValidate(jConfig[certificate])) {
    _genAndroidConfiguration(jConfig[certificate][android]);
  }
  if (isIosValidate(jConfig[certificate])) {
    _genIosConfiguration(jConfig[certificate][ios]);
  }
}

void _genAndroidConfiguration(Map<String, dynamic> jAndroid) {
  AndroidGeneration(
    outputFilePath: AndroidGeneration.keyStoreFilePath,
    configJson: jAndroid,
  ).execute();
}

void _genIosConfiguration(Map<String, dynamic> jIos) {
  IosGeneration(
    outputFilePath: IosGeneration.developmentCerIOSFilePath,
    configJson: jIos[development],
    prefix: 'cerDev',
  ).execute();
  IosGeneration(
    outputFilePath: IosGeneration.distributionCerIOSFilePath,
    configJson: jIos[distribution],
    prefix: 'cerDis',
  ).execute();
}

void _genNativeDefineFile(Map<String, dynamic> jNativeConfig) {
  NativeGeneration(
    outputFilePath: AndroidGeneration.nativeDefineFilePath,
    configJson: jNativeConfig,
  ).execute();
  NativeGeneration(
    outputFilePath: IosGeneration.nativeDefineIOSFilePath,
    configJson: jNativeConfig,
  ).execute();
}

void _genDartDefineFile(Map<String, dynamic> jDartConfig) {
  DartGeneration(
    outputFilePath: buildConfigPath,
    configJson: jDartConfig,
  ).execute();
}

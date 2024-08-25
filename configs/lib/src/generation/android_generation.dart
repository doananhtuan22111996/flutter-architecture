part of 'file_generation.dart';

class AndroidGeneration extends _FileGenerator {
  // Android
  static const androidRootPath = '../app/android';
  static const keyStoreFilePath = '$androidRootPath/keystore.define.properties';
  static const nativeDefineFilePath =
      '$androidRootPath/native.define.properties';

  AndroidGeneration({
    required super.outputFilePath,
    required super.configJson,
  }) : super();

  @override
  bool isValidate() {
    if (!configJson.containsKey(storePassword) ||
        !configJson.containsKey(keyPassword) ||
        !configJson.containsKey(keyAlias) ||
        !configJson.containsKey(storeFile)) {
      throw Exception('Please update config file - Android key store');
    }
    return true;
  }
}

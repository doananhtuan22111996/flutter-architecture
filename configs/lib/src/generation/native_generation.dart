part of 'file_generation.dart';

class NativeGeneration extends _FileGenerator {
  NativeGeneration({
    required super.outputFilePath,
    required super.configJson,
  });

  @override
  bool isValidate() {
    if (!configJson.containsKey(appName) ||
        !configJson.containsKey(appBundleId)) {
      throw Exception(
          'Please update config file - appName or appBundleId is required in nativeDefine');
    }
    return true;
  }
}

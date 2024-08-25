part of 'file_generation.dart';

class DartGeneration extends _FileGenerator {
  DartGeneration({required super.outputFilePath, required super.configJson});

  @override
  String formatContent() {
    String content = 'class BuildConfig {\n';
    content += '  BuildConfig._();\n';
    configJson.forEach((key, value) {
      content +=
          '  static const String ${key.camelCase} = String.fromEnvironment(\'$key\');\n';
    });
    content += '}';
    return content;
  }

  @override
  bool isValidate() {
    if (!configJson.containsKey(flavor)) {
      throw Exception(
          'Please update config file - flavor is required in dartDefine');
    }
    return true;
  }

  String get api => configJson[apiDomain];

  String get storageName => configJson[secureStorageName];
}

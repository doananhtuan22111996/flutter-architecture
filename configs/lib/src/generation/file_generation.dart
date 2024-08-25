import 'dart:io';

import 'package:recase/recase.dart';

part 'android_generation.dart';

part 'ios_generation.dart';

part 'native_generation.dart';

part 'dart_generation.dart';

part 'sample_generation.dart';

const String stringEmpty = '';
const String create = 'create';
const String certificate = 'certificate';
const String android = 'android';
const String storePassword = 'storePassword';
const String keyPassword = 'keyPassword';
const String keyAlias = 'keyAlias';
const String storeFile = 'storeFile';
const String ios = 'ios';
const String development = 'development';
const String distribution = 'distribution';
const String codeSignIdentity = 'codeSignIdentity';
const String developmentTeam = 'developmentTeam';
const String provisioningProfileSpecifier = 'provisioningProfileSpecifier';
const String dartDefine = 'dartDefine';
const String flavor = 'flavor';
const String apiDomain = 'apiDomain';
const String secureStorageName = 'secureStorageName';
const String nativeDefine = 'nativeDefine';
const String appName = 'appName';
const String appBundleId = 'appBundleId';

String jConfigFilePath(String flavor, {String? prefix}) => prefix == null
    ? '.env/config.$flavor.json'
    : '$prefix/.env/config.$flavor.json';
const String buildConfigPath = 'lib/src/generated/build_config.g.dart';

abstract class _FileGenerator {
  final String outputFilePath;
  final Map<String, dynamic> configJson;
  final String? prefix;
  final bool isOverride;

  _FileGenerator({
    required this.outputFilePath,
    required this.configJson,
    this.prefix,
    this.isOverride = true,
  });

  bool isValidate();

  void execute() {
    final mandatoryFile = File(outputFilePath);
    if (!mandatoryFile.existsSync()) {
      mandatoryFile.createSync(recursive: true);
      if (isOverride == false) {
        mandatoryFile.writeAsStringSync(formatContent());
      }
    }
    if (isOverride == true) {
      mandatoryFile.writeAsStringSync(formatContent());
    }
  }

  String formatContent() {
    String content = stringEmpty;
    if (!isValidate()) return content;
    configJson.forEach((key, value) {
      if (prefix?.isNotEmpty == true) {
        '${prefix}_$key'.snakeCase.toUpperCase();
        content +=
            '${'${prefix}_$key'.snakeCase.toUpperCase()}=${configJson[key]}\n';
      } else {
        content += '${key.snakeCase.toUpperCase()}=${configJson[key]}\n';
      }
    });
    return content;
  }
}

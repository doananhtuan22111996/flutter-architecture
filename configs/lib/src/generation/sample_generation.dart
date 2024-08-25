part of 'file_generation.dart';

class SampleGeneration extends _FileGenerator {
  SampleGeneration({
    required super.outputFilePath,
    required super.configJson,
  }) : super(isOverride: false);

  @override
  bool isValidate() => true;

  @override
  String formatContent() {
    return """{
      "$certificate": {
        "$android": {
          "$storePassword": "keyPassword",
          "$keyPassword": "keyPassword",
          "$keyAlias": "keyAlias",
          "$storeFile": "path keyStore file",
        },
        "$ios": {
          "$development": {
            "$codeSignIdentity": "iPhone Developer",
            "$developmentTeam": "developmentTeam",
            "$provisioningProfileSpecifier": "Sample Dev Provisioning"
          },
          "$distribution": {
            "$codeSignIdentity": "iPhone Distribution",
            "$developmentTeam": "developmentTeam",
            "$provisioningProfileSpecifier": "Sample Dev App Store Provisioning",
          }
        }
      },
      "$dartDefine": {
        "$flavor": "dev",
        "$apiDomain": "https://sample.io",
        "$secureStorageName": "the name for share preference"
      },
      "$nativeDefine": {
        "$appName": "Sample",
        "$appBundleId": "io.root.sample"
      }
    }""";
  }
}

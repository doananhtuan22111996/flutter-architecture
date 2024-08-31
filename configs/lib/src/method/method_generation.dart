import 'dart:convert';
import 'dart:io';

import '../generation/file_generation.dart';

Map<String, dynamic> getJsonConfig(String flavor, {String? prefix}) =>
    readFile(jConfigFilePath(flavor, prefix: prefix));

Map<String, dynamic> readFile(String filePath) {
  final mandatoryFile = File(filePath);
  var fileContent = mandatoryFile.readAsStringSync();
  fileContent = fileContent.replaceAll(RegExp('.+// .+\n'), '');
  return jsonDecode(fileContent);
}

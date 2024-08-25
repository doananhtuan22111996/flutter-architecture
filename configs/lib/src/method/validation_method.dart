import '../generation/file_generation.dart';

bool isValidate(Map<String, dynamic> jConfig) {
  if (!jConfig.containsKey(certificate)) {
    throw Exception('Please update config file - certificate not found');
  }
  if (!jConfig.containsKey(nativeDefine)) {
    throw Exception('Please update config file - nativeDefine not found');
  }
  if (!jConfig.containsKey(dartDefine)) {
    throw Exception('Please update config file - dartDefine not found');
  }
  return true;
}

bool isAndroidValidate(Map<String, dynamic> jConfig) {
  if (!jConfig.containsKey(android)) {
    throw Exception(
        'Please update config file - certificate -> android not found');
  }
  return true;
}

bool isIosValidate(Map<String, dynamic> jConfig) {
  if (!jConfig.containsKey(ios)) {
    throw Exception('Please update config file - certificate -> iOS not found');
  }
  final jIos = jConfig[ios] as Map<String, dynamic>;
  if (!jIos.containsKey(development)) {
    throw Exception(
        'Please update config file - certificate -> iOS development not found');
  }
  if (!jIos.containsKey(distribution)) {
    throw Exception(
        'Please update config file - certificate -> iOS distribution not found');
  }
  return true;
}

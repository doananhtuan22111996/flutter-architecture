import 'dart:convert';
import 'dart:io';

import 'package:configs/configs.dart';

void main(List<String>? args) async {
  Map<String, dynamic> jConfig =
      getJsonConfig(args?.first ?? stringEmpty, prefix: './configs');
  final dart = DartGeneration(
    outputFilePath: buildConfigPath,
    configJson: jConfig[dartDefine],
  );
  List<String> arguments = [
    'run',
    '-t',
    'lib/widget_book.dart',
    '--dart-define',
    '$apiDomain=${dart.api}',
    '--dart-define',
    '$secureStorageName=${dart.storageName}',
    '-d',
    'chrome',
  ];

  print('cmd: fvm flutter ${arguments.join(' ')}');
  final process = await Process.start('fvm', ['flutter', ...arguments],
      workingDirectory: './app', runInShell: true);
  // Print standard output (stdout)
  process.stdout.transform(utf8.decoder).listen((data) {
    print('$data');
  });
  // Print standard error (stderr)
  process.stderr.transform(utf8.decoder).listen((data) {
    print('$data');
  });

  final exitCode = await process.exitCode;
  if (exitCode != 0) {
    throw Exception('Script failed with exit code: $exitCode');
  }
}

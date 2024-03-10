import 'dart:io';

Future<void> main() async {
  final dir = Directory('./examples-ndjson');
  final files = await dir.list().toList();
  for (var file in files) {
    final contents = await File(file.path).readAsString();
    final lines = contents.split('\n');
    final type = file.toString().split('/').last.split('.').first;
    for (int i = 0; i < lines.length; i++) {
      if (lines[i].isNotEmpty) {
        File('test/r6_examples/$type$i.json').writeAsStringSync(lines[i]);
      }
    }
  }
}

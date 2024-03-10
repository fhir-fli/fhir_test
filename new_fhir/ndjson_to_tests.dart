import 'dart:io';

Future<void> main() async {
  final dir = Directory('./examples-ndjson');
  final files = await dir.list().toList();
}

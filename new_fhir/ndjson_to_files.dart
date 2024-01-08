import 'dart:convert';
import 'dart:io';

import 'package:fhir_bulk/r5.dart';

Future<void> main() async {
  var dir = Directory('examples-ndjson');
  final fileList = await dir.list().map((event) => event.path).toList();
  for (final file in fileList) {
    print(file);
    if (file.contains('ndjson')) {
      final resources = await FhirBulk.fromFile(file);
      for (int i = 0; i < resources.length; i++) {
        final resource = resources[i];
        print(resource.path);
        if (resource.path.contains('List')) {
          print(resource.toJson());
        }
        await File('r5_examples/${resource.resourceTypeString}$i.json')
            .writeAsString(jsonEncode(resource.toJson()));
      }
    }
  }
}

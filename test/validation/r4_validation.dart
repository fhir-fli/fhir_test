part of 'validation.dart';

Future<List<String>> r4Validation() async {
  var dir = Directory('./test/r4_examples');
  var string = <String>[];
  for (var file in await dir.list().toList()) {
    var contents = await File(file.path).readAsString();
    try {
      var resource = r4.Resource.fromJson(jsonDecode(contents));
      if (!DeepCollectionEquality()
          .equals(resource.toJson(), jsonDecode(contents))) {
        string.add(file.path);
      }
      if (!DeepCollectionEquality()
          .equals(jsonDecode(contents), resource.toJson())) {
        string.add(file.path);
        print(file.path);
        var fileString = await File('./test/wrong.txt').readAsString();
        fileString += '***************************************************';
        fileString += file.path;
        fileString += '\n${contents}\n\n${jsonEncode(resource.toJson())}';
        fileString += '\n***************************************************';
        await File('./test/wrong.txt').writeAsString(fileString);
        await File(
                './test/wrong/${file.path.split('/').last.replaceAll('.json', '1.json')}')
            .writeAsString(contents);
        await File(
                './test/wrong/${file.path.split('/').last.replaceAll('.json', '2.json')}')
            .writeAsString(jsonEncode(resource.toJson()));
      }
    } catch (e) {
      final errorContents = jsonDecode(contents);
      print('Error with file $file\n'
          'Resource: ${errorContents["resourceType"]}/${errorContents["id"]}\n'
          'Error: $e');
    }
  }
  return string;
}

Future<List<String>> r4ValidationYaml() async {
  var dir = Directory('./test/r4_examples');
  var string = <String>[];
  for (var file in await dir.list().toList()) {
    var contents = await File(file.path).readAsString();
    try {
      final tempResource = r4.Resource.fromJson(jsonDecode(contents));
      var resource = r4.Resource.fromYaml(tempResource.toYaml());
      if (!DeepCollectionEquality()
          .equals(resource.toJson(), jsonDecode(contents))) {
        string.add(file.path);
      }
      if (!DeepCollectionEquality()
          .equals(jsonDecode(contents), resource.toJson())) {
        string.add(file.path);
      }
    } catch (e) {
      final errorContents = jsonDecode(contents);
      print(
          'Error with file $file\nResource: ${errorContents["resourceType"]}/${errorContents["id"]}');
    }
  }
  return string;
}

part of 'validation.dart';

Future<List<String>> r6Validation() async {
  var dir = Directory('./test/r6_examples');
  var string = <String>[];
  for (var file in await dir.list().toList()) {
    var contents = await File(file.path).readAsString();
    try {
      var resource = r6.Resource.fromJson(jsonDecode(contents));
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
      }
    } catch (e) {
      final errorContents = jsonDecode(contents);
      print(
          'Error with file $file\nResource: ${errorContents["resourceType"]}/${errorContents["id"]}');
    }
  }
  return string;
}

Future<List<String>> r6ValidationYaml() async {
  var dir = Directory('./test/r6_examples');
  var string = <String>[];
  for (var file in await dir.list().toList()) {
    var contents = await File(file.path).readAsString();
    try {
      final tempResource = r6.Resource.fromJson(jsonDecode(contents));
      var resource = r6.Resource.fromYaml(tempResource.toYaml());
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
part of 'validation.dart';

Future<List<String>> dstu2Validation() async {
  var dir = Directory('./test/dstu2_examples');
  var string = <String>[];
  for (var file in await dir.list().toList()) {
    print(file.path);
    var contents = await File(file.path).readAsString();
    try {
      var resource = dstu2.Resource.fromJson(jsonDecode(contents));
      if (!DeepCollectionEquality()
          .equals(resource.toJson(), jsonDecode(contents))) {
        string.add(file.path);
        print(file.path);
        print(jsonEncode(resource.toJson));
        print(jsonDecode(contents));
      }
      if (!DeepCollectionEquality()
          .equals(jsonDecode(contents), resource.toJson())) {
        string.add(file.path);
      }
    } catch (e) {
      print(e);
      final errorContents = jsonDecode(contents);
      print(
          'Error with file $file\nResource: ${errorContents["resourceType"]}/${errorContents["id"]}');
    }
  }
  return string;
}

Future<List<String>> dstu2ValidationYaml() async {
  var dir = Directory('./test/dstu2_examples');
  var string = <String>[];
  for (var file in await dir.list().toList()) {
    var contents = await File(file.path).readAsString();
    try {
      final tempResource = dstu2.Resource.fromJson(jsonDecode(contents));
      var resource = dstu2.Resource.fromYaml(tempResource.toYaml());
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

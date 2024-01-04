part of 'validation.dart';

Future<List<String>> dstu2Validation() async {
  var dir = Directory('./test/dstu2_examples');
  var string = <String>[];
  for (var file in await dir.list().toList()) {
    var contents = await File(file.path).readAsString();
    try {
      print('a');
      var resource = dstu2.Resource.fromJson(jsonDecode(contents));
      print('b');
      print(jsonEncode(resource.toJson()));
      print('c');
      if (!DeepCollectionEquality()
          .equals(resource.toJson(), jsonDecode(contents))) {
        print('d');
        string.add(file.path);
        print('e');
        print(file.path);
        print('f');
        print(jsonEncode(resource.toJson));
        print('g');
        print(jsonDecode(contents));
        print('h');
      }
      if (!DeepCollectionEquality()
          .equals(jsonDecode(contents), resource.toJson())) {
        print('i');
        string.add(file.path);
        print('j');
      }
    } catch (e) {
      print(e);
      final errorContents = jsonDecode(contents);
      print(
          'Error with file $file\nResource: ${errorContents["resourceType"]}/${errorContents["id"]}');
      rethrow;
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

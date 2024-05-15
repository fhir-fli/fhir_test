import 'dart:io';

Future<void> main() async {
  final Directory dir = Directory('.');
  for (final FileSystemEntity file in dir.listSync(recursive: true)) {
    if (file.path.endsWith('.dart') &&
        file.path.contains('enum') &&
        !file.path.contains('enum_methods')) {
      final String fileContent = await File(file.path).readAsString();
      final String transformedContent = transformEnums(fileContent);
      await (file as File).writeAsString(transformedContent);
    }
  }
}

String transformEnums(String content) {
  final RegExp regExp = RegExp(r"\('([^']+)'\)");
  final List<String> lines = content.split('\n');
  String? enumName;
  List<String> enumValues = <String>[];
  List<String> jsonValues = <String>[];

  for (int i = 0; i < lines.length; i++) {
    if (lines[i].contains('enum ') && !lines[i].trim().startsWith('//')) {
      enumName = lines[i].split(' ')[1].trim().replaceAll('{', '');
      enumValues = <String>[];
      jsonValues = <String>[];
    }
    if (lines[i].contains("'") && !lines[i].trim().startsWith('//')) {
      final RegExpMatch? match = regExp.firstMatch(lines[i]);
      if (match != null) {
        jsonValues.add(match.group(1)!);
      }
    }
    if (lines[i].contains(',') &&
        !lines[i].contains("'") &&
        !lines[i].trim().startsWith('//')) {
      enumValues.add(lines[i].split(',')[0].trim());
    }
    if (lines[i].contains('}') &&
        enumName != null &&
        enumValues.isNotEmpty &&
        jsonValues.isNotEmpty &&
        !lines[i].trim().startsWith('//')) {
      // Build methods
      String fromStringCases = '';
      String toStringCases = '';
      for (int j = 0; j < enumValues.length; j++) {
        if (j < jsonValues.length) {
          fromStringCases +=
              "      case '${jsonValues[j]}':\n        return $enumName.${enumValues[j]};\n";
          toStringCases +=
              "      case $enumName.${enumValues[j]}:\n        return '${jsonValues[j]}';\n";
        }
      }

      // Insert new methods after enum definition
      final String newMethods = '''

  static $enumName? fromString(String string) {
    switch (string) {
$fromStringCases
      default:
        return null;
    }
  }

  static $enumName? fromJson(dynamic json) {
    if (json is String) {
      return fromString(json);
    }
    return null;
  }

  @override
  String toString() {
    switch (this) {
$toStringCases
    }
  }

  String toJson() => toString();
}''';

      lines[i - 1] = lines[i - 1].replaceAll(',', ';');
      lines[i] =
          newMethods; // append the methods directly after the enum definition ends with newline
    }
  }
  return lines.join('\n');
}

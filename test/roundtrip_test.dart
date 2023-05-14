import 'package:test/test.dart';

import 'validation/validation.dart';

Future roundtripTestJson() async {
  /// Runs through all examples provided. Each example resource is a Json file,
  /// we read in that file as a String, convert it to a Map, then create the
  /// Resource. We then convert it back to Map, and perform a deep comparison
  /// of the input map with the output map to test for any inconsistencies.
  /// It then reverses them and and performs a deep comparison of the output
  /// to the input. Any files with errors are printed out in the debug console
  group(
    'JSON',
    () {
      test(
        '\n****Dstu2 Json is being Validated****',
        () async {
          var testList = await dstu2JsonValidation();

          print(
              'Invalid examples: ${testList.isEmpty ? 'none' : testList.join('\n')}');

          expect(testList.isEmpty, true);
        },
        timeout: Timeout(Duration(minutes: 15)),
      );
      test(
        '\n****Stu3 Json is being Validated****',
        () async {
          var testList = await stu3JsonValidation();

          print(
              'Invalid examples: ${testList.isEmpty ? 'none' : testList.join('\n')}');

          expect(testList.isEmpty, true);
        },
        timeout: Timeout(Duration(minutes: 15)),
      );
      test(
        '\n****R4 Json is being Validated****',
        () async {
          var testList = await r4JsonValidation();

          print(
              'Invalid examples: ${testList.isEmpty ? 'none' : testList.join('\n')}');

          expect(testList.isEmpty, true);
        },
        timeout: Timeout(Duration(minutes: 15)),
      );
      test(
        '\n****R5 Json is being Validated****',
        () async {
          var testList = await r5JsonValidation();

          print(
              'Invalid examples: ${testList.isEmpty ? 'none' : testList.join('\n')}');

          expect(testList.isEmpty, true);
        },
        timeout: Timeout(Duration(minutes: 15)),
      );
    },
  );
}

Future roundtripTestYaml() async {
  /// Runs through all examples provided. Each example resource is a Json file,
  /// we read in that file as a String, convert it to a Map, Yaml, and finally
  /// a Resource. We then convert it back to Map, and perform a deep comparison
  /// of the input map with the output map to test for any inconsistencies.
  /// It then reverses them and and performs a deep comparison of the output
  /// to the input. Any files with errors are printed out in the debug console
  group(
    'YAML',
    () {
      test(
        '\n****Dstu2 Yaml is being Validated****',
        () async {
          var testList = await dstu2YamlValidation();

          print(
              'Invalid examples: ${testList.isEmpty ? 'none' : testList.join('\n')}');

          expect(testList.isEmpty, true);
        },
        timeout: Timeout(Duration(minutes: 25)),
      );

      test(
        '\n****Stu3 Yaml is being Validated****',
        () async {
          var testList = await stu3YamlValidation();

          print(
              'Invalid examples: ${testList.isEmpty ? 'none' : testList.join('\n')}');

          expect(testList.isEmpty, true);
        },
        timeout: Timeout(Duration(minutes: 25)),
      );

      test(
        '\n****R4 Yaml is being Validated****',
        () async {
          var testList = await r4YamlValidation();

          print(
              'Invalid examples: ${testList.isEmpty ? 'none' : testList.join('\n')}');

          expect(testList.isEmpty, true);
        },
        timeout: Timeout(Duration(minutes: 25)),
      );

      test(
        '\n****R5 Yaml is being Validated****',
        () async {
          var testList = await r5YamlValidation();

          print(
              'Invalid examples: ${testList.isEmpty ? 'none' : testList.join('\n')}');

          expect(testList.isEmpty, true);
        },
        timeout: Timeout(Duration(minutes: 25)),
      );
    },
  );
}

Future roundtripTestXml() async {
  /// This one is slightly different because we don't convert back into XML.
  /// What we do instead is take all of the XML files, read them in as strings,
  /// convert to XML, which uses both Badgerfish as well as a little code from
  ///  us, because unsurprisingly, FHIR does not directly translate from XML to
  /// JSON. If there are any resources that are not equivalent, these aare printed
  ///  out in the debug console.
  group('XML', () {
    // test(
    //   '\n****R4 XML is being Validated****',
    //   () async {
    //     var testList = await r4XmlValidation();

    //     print(
    //         'Invalid examples: ${testList.isEmpty ? 'none' : testList.join('\n')}');

    //     expect(testList.isEmpty, true);
    //   },
    //   timeout: Timeout(Duration(minutes: 25)),
    // );

    test(
      '\n****R5 XML is being Validated****',
      () async {
        var testList = await r5XmlValidation();

        print(
            'Invalid examples: ${testList.isEmpty ? 'none' : testList.join('\n')}');

        expect(testList.isEmpty, true);
      },
      timeout: Timeout(Duration(minutes: 25)),
    );
  });
}

import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:fhir/r4.dart' as r4;
import 'package:test/test.dart';

void fhirInstantTest() {
  group('FhirInstant Tests', () {
    test('Check Instant type with the regex', () {
      var issued = FhirInstant(DateTime.now()).toString();
      var pattern = RegExp(
          r'([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))');
      expect(pattern.hasMatch(issued), true);
    });
    test('Valid FhirInstant String', () {
      final fhirInstant = FhirInstant('2023-12-22T12:34:56.789Z');
      expect(fhirInstant.isValid, isTrue);
      expect(fhirInstant.value, isA<DateTime>());
      expect(fhirInstant.year, 2023);
      expect(fhirInstant.month, 12);
      expect(fhirInstant.day, 22);
      expect(fhirInstant.hour, 12);
      expect(fhirInstant.minute, 34);
      expect(fhirInstant.second, 56);
      expect(fhirInstant.millisecond, 789);
    });

    test('Invalid FhirInstant String', () {
      final fhirInstant = FhirInstant('invalid_instant');
      expect(fhirInstant.isValid, isFalse);
      expect(fhirInstant.value, DateTime(1));
      expect(fhirInstant.year, 1);
      expect(fhirInstant.month, 1);
      expect(fhirInstant.day, 1);
      expect(fhirInstant.hour, 0);
      expect(fhirInstant.minute, 0);
      expect(fhirInstant.second, 0);
      expect(fhirInstant.millisecond, 0);
    });

    test('FhirInstant Comparison', () {
      final fhirInstant1 = FhirInstant('2023-12-22T12:34:56.789Z');
      final fhirInstant2 = FhirInstant('2024-01-01T00:00:00.000Z');
      final fhirInstant3 = FhirInstant('2023-12-22T12:34:56.789Z');

      expect(fhirInstant1 == fhirInstant2, isFalse);
      expect(fhirInstant1 == fhirInstant3, isTrue);
      expect(fhirInstant1 < fhirInstant2, isTrue);
      expect(fhirInstant1 <= fhirInstant2, isTrue);
      expect(fhirInstant1 > fhirInstant2, isFalse);
      expect(fhirInstant1 >= fhirInstant2, isFalse);
    });
    test('FhirInstant regex Check', () {
      var issued = FhirInstant(DateTime.now()).toString();
      expect(patternInstant.hasMatch(issued), true);
    });

    test('FhirDateTime regex check', () {
      var issued = FhirDateTime(DateTime.now());
      expect(patternDateTime.hasMatch(issued.toString()), true);
    });

    test('Observation Issued Format Check', () {
      expect(patternInstant.hasMatch(testJson['issued'].toString()), true);
    });

    test('Observation EffectiveDateTime Format Check', () {
      expect(patternDateTime.hasMatch(testJson['effectiveDateTime'].toString()),
          true);
    });
  });
}

var patternInstant = RegExp(
    r'^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$');

var patternDateTime = RegExp(
    r'^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$');

var resource = r4.Observation(
  resourceType: r4.R4ResourceType.Observation,
  status: FhirCode('final'),
  category: [
    r4.CodeableConcept(coding: <r4.Coding>[
      r4.Coding(
        system: FhirUri(
            'http://terminology.hl7.org/CodeSystem/observation-category'),
        code: FhirCode('survey'),
        display: 'survey',
      )
    ])
  ],
  code: r4.CodeableConcept(
    coding: <r4.Coding>[
      r4.Coding(
        system: FhirUri('http://snomed.info'),
        code: FhirCode('103579009'),
        display: 'Race',
      )
    ],
    text: "Race (observable entity)",
  ),
  subject: const r4.Reference(reference: "Patient/test"),
  effectiveDateTime: FhirDateTime(DateTime.now()),
  issued: FhirInstant(DateTime.now()),
  valueCodeableConcept: r4.CodeableConcept(coding: <r4.Coding>[
    r4.Coding(
        system: FhirUri('http://snomed.info/sct'),
        code: FhirCode('413582008'),
        display: 'Asian race')
  ], text: 'Asian race (racial group)'),
);
var testJson = resource.toJson();

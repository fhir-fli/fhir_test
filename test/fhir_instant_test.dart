import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:test/test.dart';

void fhirInstantTest() {
  test('Check Instant type with the regex', () {
    var issued = FhirInstant.fromDateTime(DateTime.now()).toString();
    print(issued);
    var pattern = RegExp(
        r'([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))');
    expect(pattern.hasMatch(issued), true);
  });

  group('FhirInstant Tests', () {
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
      expect(fhirInstant.value, isNull);
      expect(fhirInstant.year, isNull);
      expect(fhirInstant.month, isNull);
      expect(fhirInstant.day, isNull);
      expect(fhirInstant.hour, isNull);
      expect(fhirInstant.minute, isNull);
      expect(fhirInstant.second, isNull);
      expect(fhirInstant.millisecond, isNull);
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
  });
}

import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:test/test.dart';

void dateTimeTest() {
  group('DateTimePrecision enum tests', () {
    test('All enum values should have unique string representations', () {
      final values = DateTimePrecision.values;
      final uniqueStrings = values.map((e) => e.toString()).toSet();
      expect(uniqueStrings.length, equals(values.length));
    });

    test('DateTimePrecisionExtension should correctly convert DateTime objects',
        () {
      final dateTime = DateTime(2023, 7, 15, 12, 30, 45);
      expect((DateTimePrecision.yyyy).convert(dateTime), equals('2023'));
      expect((DateTimePrecision.yyyy_MM).convert(dateTime), equals('2023-07'));
      expect((DateTimePrecision.yyyy_MM_dd).convert(dateTime),
          equals('2023-07-15'));
    });

    test('FhirDate fromString should handle different date string formats', () {
      // Test different valid date string formats
      final dateString1 = '2023-07-15';
      final date1 = FhirDate.fromString(dateString1);
      expect(date1.isValid, equals(true));
      expect(date1.valueString, equals('2023-07-15'));
      expect(date1.valueDateTime, equals(DateTime(2023, 7, 15)));
    });
    test('FhirDate fromUnits should handle different input units', () {
      // Test with valid units
      final date = FhirDate.fromUnits(year: 2023, month: 7, day: 15);
      expect(date.isValid, equals(true));
      expect(date.valueString, equals('2023-07-15'));
      expect(date.valueDateTime, equals(DateTime(2023, 7, 15)));

      // Test with incomplete units
      expect(
        FhirDate.fromUnits(year: 2023, month: 7),
        FhirDate('2023-07'),
      );
    });
  });
  group('FhirDate tests', () {
    test('FhirDate fromString should parse valid date strings', () {
      final validDateString = '2023-07-15';
      final validDate = FhirDate.fromString(validDateString);
      expect(validDate.isValid, equals(true));
      expect(validDate.valueString, equals(validDateString));
      expect(validDate.valueDateTime, equals(DateTime(2023, 7, 15)));
    });

    test('FhirDate fromUnits should construct valid dates from units', () {
      final validDate = FhirDate.fromUnits(year: 2023, month: 7, day: 15);
      expect(validDate.isValid, equals(true));
      expect(validDate.valueString, equals('2023-07-15'));
      expect(validDate.valueDateTime, equals(DateTime(2023, 7, 15)));
    });
  });
  group('FhirDateTime tests', () {
    test('FhirDateTime fromString should parse valid datetime strings', () {
      final validDateTimeString = '2023-07-15T13:45:30Z';
      final validDateTime = FhirDateTime.fromString(validDateTimeString);
      expect(validDateTime.isValid, equals(true));
      expect(validDateTime.valueString, equals(validDateTimeString));
      expect(validDateTime.valueDateTime,
          equals(DateTime.utc(2023, 7, 15, 13, 45, 30).toUtc()));
    });

    test('FhirDateTime fromDateTime should construct valid datetimes', () {
      final validDateTime =
          FhirDateTime.fromDateTime(DateTime(2023, 7, 15, 13, 45, 30, 000));
      expect(validDateTime.isValid, equals(true));
      expect(validDateTime.valueString, equals('2023-07-15T13:45:30.000'));
      expect(validDateTime.valueDateTime, DateTime(2023, 7, 15, 13, 45, 30));
    });

    test('FhirDateTime fromYaml should convert YAML strings correctly', () {
      final yamlString = '2023-07-15T13:45:30Z';
      final dateTime = FhirDateTime.fromYaml(yamlString);
      expect(dateTime.isValid, equals(true));
      expect(dateTime.valueString, equals('2023-07-15T13:45:30Z'));
      expect(dateTime.valueDateTime,
          equals(DateTime.utc(2023, 7, 15, 13, 45, 30)));
    });

    test('FhirDateTime getters should retrieve correct date components', () {
      final dateTime =
          FhirDateTime.fromDateTime(DateTime(2023, 7, 15, 13, 45, 30));
      expect(dateTime.hour, equals(13));
      expect(dateTime.minute, equals(45));
      expect(dateTime.second, equals(30));

      // Test getters for edge cases, null values, and invalid instances
      final nullDateTime = FhirDateTime.fromDateTime(DateTime(2000));
      expect(nullDateTime.hour, equals(0));
      expect(nullDateTime.minute, equals(0));
      expect(nullDateTime.second, equals(0));
    });

    test('FhirDateTime fromJson should handle various JSON formats', () {
      // Test valid JSON strings with different formats and variations
      final validJsonString = '"2023-07-15T13:45:30Z"';
      final dateTime = FhirDateTime.fromJson(validJsonString);
      expect(dateTime.isValid, equals(true));
      expect(dateTime.valueString, equals('2023-07-15T13:45:30Z'));
      expect(dateTime.valueDateTime,
          equals(DateTime.utc(2023, 7, 15, 13, 45, 30)));
    });
    test('FhirDateTime toJson should serialize correctly', () {
      // Test serialization of a FhirDateTime instance to JSON
      final dateTime =
          FhirDateTime.fromDateTime(DateTime(2023, 7, 15, 13, 45, 30));
      final json = dateTime.toJson();
      expect(json, equals('2023-07-15T13:45:30.000'));
    });
  });

  group('FhirInstant tests', () {
    // Add tests specifically for FhirInstant functionalities and scenarios

    test('FhirInstant fromDateTime should handle various DateTime inputs', () {
      // Test valid DateTime inputs
      final dateTime = DateTime(2023, 7, 15, 13, 45, 30);
      final instant = FhirInstant.fromDateTime(dateTime);
      expect(instant.isValid, equals(true));
      expect(instant.valueString, equals('2023-07-15T13:45:30.000'));
      expect(instant.valueDateTime, equals(DateTime(2023, 7, 15, 13, 45, 30)));

      // Test null DateTime input and edge cases
      final nullDateTime = FhirInstant.fromDateTime(DateTime(2000));
      expect(nullDateTime.isValid, equals(true));
    });
  });
}

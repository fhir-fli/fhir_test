import 'package:fhir/primitive_types/date_time_precision.dart';
import 'package:fhir/primitive_types/instant.dart';
import 'package:test/test.dart';

void main() {
  group('FhirInstant Tests', () {
    final timeZoneOffsetInt = DateTime.now().timeZoneOffset.inHours;
    final timeZoneOffsetString = timeZoneOffsetInt < 0
        ? '-${timeZoneOffsetInt.abs().toString().padLeft(2, '0')}:00'
        : '+${timeZoneOffsetInt.abs().toString().padLeft(2, '0')}:00';
    group('yyyy - 2012', () {
      final yyyy = '2012';
      final yyyyDateTime = DateTime(2012);
      final yyyyDateTimeFromString = DateTime.parse('2012-01-01');

      final instantyyyy = FhirInstant(yyyy);
      test('instantyyyy', () {
        expect(instantyyyy.isValid, isTrue);
        expect(instantyyyy.valueString, equals(yyyy));
        expect(instantyyyy.valueDateTime, equals(yyyyDateTime));
        expect(instantyyyy.toString(), equals(yyyy));
        expect(instantyyyy.toJson(), equals(yyyy));
        expect(instantyyyy.toYaml(), equals(yyyy));
      });

      // TODO(Dokotela): reasonable that this test fails without specifying
      // precision in the constructor?
      final instantyyyyDateTime = FhirInstant(yyyyDateTime);
      test('instantyyyyDateTime', () {
        expect(instantyyyyDateTime.isValid, isTrue);
        expect(instantyyyyDateTime.valueString, equals('$yyyy-01-01'));
        expect(instantyyyyDateTime.valueDateTime, equals(yyyyDateTime));
        expect(instantyyyyDateTime.toString(), equals('$yyyy-01-01'));
        expect(
            instantyyyyDateTime.toJson(), equals('$yyyy-01-01 00:00:00.000'));
        expect(
            instantyyyyDateTime.toYaml(), equals('$yyyy-01-01 00:00:00.000'));
      });
      final instantyyyyDateTimeFromString =
          FhirInstant(yyyyDateTimeFromString, DateTimePrecision.yyyy);
      test('instantyyyyDateTimeFromString', () {
        expect(instantyyyyDateTimeFromString.isValid, isTrue);
        expect(instantyyyyDateTimeFromString.valueString, equals(yyyy));
        expect(
            instantyyyyDateTimeFromString.valueDateTime, equals(yyyyDateTime));
        expect(instantyyyyDateTimeFromString.toString(), equals(yyyy));
        expect(instantyyyyDateTimeFromString.toJson(), equals(yyyy));
        expect(instantyyyyDateTimeFromString.toYaml(), equals(yyyy));
      });
      final instantyyyyFromString = FhirInstant.fromString(yyyy);
      test('instantyyyyFromString', () {
        expect(instantyyyyFromString.isValid, isTrue);
        expect(instantyyyyFromString.valueString, equals(yyyy));
        expect(instantyyyyFromString.valueDateTime, equals(yyyyDateTime));
        expect(instantyyyyFromString.toString(), equals(yyyy));
        expect(instantyyyyFromString.toJson(), equals(yyyy));
        expect(instantyyyyFromString.toYaml(), equals(yyyy));
      });
      final instantyyyyFromDateTime =
          FhirInstant.fromDateTime(yyyyDateTime, DateTimePrecision.yyyy);
      test('instantyyyyFromDateTime', () {
        expect(instantyyyyFromDateTime.isValid, isTrue);
        expect(instantyyyyFromDateTime.valueString, equals(yyyy));
        expect(instantyyyyFromDateTime.valueDateTime, equals(yyyyDateTime));
        expect(instantyyyyFromDateTime.toString(), equals(yyyy));
        expect(instantyyyyFromDateTime.toJson(), equals(yyyy));
        expect(instantyyyyFromDateTime.toYaml(), equals(yyyy));
      });
      final instantyyyyFromJson = FhirInstant.fromJson(yyyy);
      test('instantyyyyFromJson', () {
        expect(instantyyyyFromJson.isValid, isTrue);
        expect(instantyyyyFromJson.valueString, equals(yyyy));
        expect(instantyyyyFromJson.valueDateTime, equals(yyyyDateTime));
        expect(instantyyyyFromJson.toString(), equals(yyyy));
        expect(instantyyyyFromJson.toJson(), equals(yyyy));
        expect(instantyyyyFromJson.toYaml(), equals(yyyy));
      });
      final instantyyyyDateTimeFromJson =
          FhirInstant.fromJson(yyyyDateTime, DateTimePrecision.yyyy);
      test('instantyyyyDateTimeFromJson', () {
        expect(instantyyyyDateTimeFromJson.isValid, isTrue);
        expect(instantyyyyDateTimeFromJson.valueString, equals(yyyy));
        expect(instantyyyyDateTimeFromJson.valueDateTime, equals(yyyyDateTime));
        expect(instantyyyyDateTimeFromJson.toString(), equals(yyyy));
        expect(instantyyyyDateTimeFromJson.toJson(), equals(yyyy));
        expect(instantyyyyDateTimeFromJson.toYaml(), equals(yyyy));
      });
      final instantyyyyDateTimeFromStringFromJson =
          FhirInstant.fromJson(yyyyDateTimeFromString);
      test('instantyyyyDateTimeFromStringFromJson', () {
        expect(instantyyyyDateTimeFromStringFromJson.isValid, isTrue);
        expect(instantyyyyDateTimeFromStringFromJson.valueString,
            equals('$yyyy-01-01'));
        expect(instantyyyyDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyDateTime));
        expect(instantyyyyDateTimeFromStringFromJson.toString(),
            equals('$yyyy-01-01'));
        expect(instantyyyyDateTimeFromStringFromJson.toJson(),
            equals('$yyyy-01-01 00:00:00.000'));
        expect(instantyyyyDateTimeFromStringFromJson.toYaml(),
            equals('$yyyy-01-01 00:00:00.000'));
      });

      final instantyyyyFromYaml = FhirInstant.fromYaml(yyyy);
      test('instantyyyyFromYaml', () {
        expect(instantyyyyFromYaml.isValid, isTrue);
        expect(instantyyyyFromYaml.valueString, equals(yyyy));
        expect(instantyyyyFromYaml.valueDateTime, equals(yyyyDateTime));
        expect(instantyyyyFromYaml.toString(), equals(yyyy));
        expect(instantyyyyFromYaml.toJson(), equals(yyyy));
        expect(instantyyyyFromYaml.toYaml(), equals(yyyy));
      });
    });
    final yyyyMM = '2012-01';
    final yyyyMMDateTime = DateTime(2012, 1);
    final yyyyMMDateTimeFromString = DateTime.parse('2012-01-01');

    group('yyyyMM - 2012-01', () {
      final instantyyyyMM = FhirInstant(yyyyMM);
      test('instantyyyyMM', () {
        expect(instantyyyyMM.isValid, isTrue);
        expect(instantyyyyMM.valueString, equals(yyyyMM));
        expect(instantyyyyMM.valueDateTime, equals(yyyyMMDateTime));
        expect(instantyyyyMM.toString(), equals(yyyyMM));
        expect(instantyyyyMM.toJson(), equals(yyyyMM));
        expect(instantyyyyMM.toYaml(), equals(yyyyMM));
      });

      // TODO(Dokotela): reasonable that this test fails without specifying precision
      // in the constructor?
      final instantyyyyMMDateTime = FhirInstant(yyyyMMDateTime);
      test(
          'instantyyyyMMDateTime - no precision given, assume full DateTime input',
          () {
        expect(instantyyyyMMDateTime.isValid, isTrue);
        expect(instantyyyyMMDateTime.valueString, equals('$yyyyMM-01'));
        expect(instantyyyyMMDateTime.valueDateTime, equals(yyyyMMDateTime));
        expect(instantyyyyMMDateTime.toString(), equals('$yyyyMM-01'));
        expect(
            instantyyyyMMDateTime.toJson(), equals(yyyyMMDateTime.toString()));
        expect(
            instantyyyyMMDateTime.toYaml(), equals(yyyyMMDateTime.toString()));
      });
      final instantyyyyMMDateTimeFromString =
          FhirInstant(yyyyMMDateTimeFromString, DateTimePrecision.yyyy_MM);
      test('instantyyyyMMDateTimeFromString', () {
        expect(instantyyyyMMDateTimeFromString.isValid, isTrue);
        expect(instantyyyyMMDateTimeFromString.valueString, equals(yyyyMM));
        expect(instantyyyyMMDateTimeFromString.valueDateTime,
            equals(yyyyMMDateTime));
        expect(instantyyyyMMDateTimeFromString.toString(), equals(yyyyMM));
        expect(instantyyyyMMDateTimeFromString.toJson(), equals(yyyyMM));
        expect(instantyyyyMMDateTimeFromString.toYaml(), equals(yyyyMM));
      });
      final instantyyyyMMFromString = FhirInstant.fromString(yyyyMM);
      test('instantyyyyMMFromString', () {
        expect(instantyyyyMMFromString.isValid, isTrue);
        expect(instantyyyyMMFromString.valueString, equals(yyyyMM));
        expect(instantyyyyMMFromString.valueDateTime, equals(yyyyMMDateTime));
        expect(instantyyyyMMFromString.toString(), equals(yyyyMM));
        expect(instantyyyyMMFromString.toJson(), equals(yyyyMM));
        expect(instantyyyyMMFromString.toYaml(), equals(yyyyMM));
      });
      final instantyyyyMMFromDateTime =
          FhirInstant.fromDateTime(yyyyMMDateTime, DateTimePrecision.yyyy_MM);
      test('instantyyyyMMFromDateTime', () {
        expect(instantyyyyMMFromDateTime.isValid, isTrue);
        expect(instantyyyyMMFromDateTime.valueString, equals(yyyyMM));
        expect(instantyyyyMMFromDateTime.valueDateTime, equals(yyyyMMDateTime));
        expect(instantyyyyMMFromDateTime.toString(), equals(yyyyMM));
        expect(instantyyyyMMFromDateTime.toJson(), equals(yyyyMM));
        expect(instantyyyyMMFromDateTime.toYaml(), equals(yyyyMM));
      });
      final instantyyyyMMFromJson = FhirInstant.fromJson(yyyyMM);
      test('instantyyyyMMFromJson', () {
        expect(instantyyyyMMFromJson.isValid, isTrue);
        expect(instantyyyyMMFromJson.valueString, equals(yyyyMM));
        expect(instantyyyyMMFromJson.valueDateTime, equals(yyyyMMDateTime));
        expect(instantyyyyMMFromJson.toString(), equals(yyyyMM));
        expect(instantyyyyMMFromJson.toJson(), equals(yyyyMM));
        expect(instantyyyyMMFromJson.toYaml(), equals(yyyyMM));
      });
      final instantyyyyMMDateTimeFromJson =
          FhirInstant.fromJson(yyyyMMDateTime);
      test('instantyyyyMMDateTimeFromJson', () {
        expect(instantyyyyMMDateTimeFromJson.isValid, isTrue);
        expect(instantyyyyMMDateTimeFromJson.valueString, equals('$yyyyMM-01'));
        expect(instantyyyyMMDateTimeFromJson.valueDateTime,
            equals(yyyyMMDateTime));
        expect(instantyyyyMMDateTimeFromJson.toString(), equals('$yyyyMM-01'));
        expect(instantyyyyMMDateTimeFromJson.toJson(),
            equals(yyyyMMDateTime.toString()));
        expect(instantyyyyMMDateTimeFromJson.toYaml(),
            equals(yyyyMMDateTime.toString()));
      });
      final instantyyyyMMDateTimeFromStringFromJson = FhirInstant.fromJson(
          yyyyMMDateTimeFromString, DateTimePrecision.yyyy_MM);
      test('instantyyyyMMDateTimeFromStringFromJson', () {
        expect(instantyyyyMMDateTimeFromStringFromJson.isValid, isTrue);
        expect(instantyyyyMMDateTimeFromStringFromJson.valueString,
            equals(yyyyMM));
        expect(instantyyyyMMDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMDateTime));
        expect(
            instantyyyyMMDateTimeFromStringFromJson.toString(), equals(yyyyMM));
        expect(
            instantyyyyMMDateTimeFromStringFromJson.toJson(), equals(yyyyMM));
        expect(
            instantyyyyMMDateTimeFromStringFromJson.toYaml(), equals(yyyyMM));
      });
      final instantyyyyMMFromYaml = FhirInstant.fromYaml(yyyyMM);
      test('instantyyyyMMFromYaml', () {
        expect(instantyyyyMMFromYaml.isValid, isTrue);
        expect(instantyyyyMMFromYaml.valueString, equals(yyyyMM));
        expect(instantyyyyMMFromYaml.valueDateTime, equals(yyyyMMDateTime));
        expect(instantyyyyMMFromYaml.toString(), equals(yyyyMM));
        expect(instantyyyyMMFromYaml.toJson(), equals(yyyyMM));
        expect(instantyyyyMMFromYaml.toYaml(), equals(yyyyMM));
      });
    });

    final yyyyMMdd = '2012-01-31';
    final yyyyMMddDateTime = DateTime(2012, 1, 31);
    final yyyyMMddDateTimeFromString = DateTime.parse('2012-01-31');

    group('yyyyMMdd - 2012-01-31', () {
      final instantyyyyMMdd = FhirInstant(yyyyMMdd);

      test('instantyyyyMMdd', () {
        expect(instantyyyyMMdd.isValid, isTrue);
        expect(instantyyyyMMdd.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMdd.valueDateTime, equals(yyyyMMddDateTime));
        expect(instantyyyyMMdd.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMdd.toJson(), equals(yyyyMMdd));
        expect(instantyyyyMMdd.toYaml(), equals(yyyyMMdd));
      });
      final instantyyyyMMddDateTime = FhirInstant(yyyyMMddDateTime);

      test(
          'instantyyyyMMddDateTime - no precision given, assumes full instantTime input',
          () {
        expect(instantyyyyMMddDateTime.isValid, isTrue);
        expect(instantyyyyMMddDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddDateTime.valueDateTime, equals(yyyyMMddDateTime));
        expect(instantyyyyMMddDateTime.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddDateTime.toJson(),
            equals('${yyyyMMdd} 00:00:00.000'));
        expect(instantyyyyMMddDateTime.toYaml(),
            equals('${yyyyMMdd} 00:00:00.000'));
      });
      final instantyyyyMMddDateTimeFromString =
          FhirInstant(yyyyMMddDateTimeFromString);

      test(
          'instantyyyyMMddDateTimeFromString - no precision given, have to assume full DateTime input',
          () {
        expect(instantyyyyMMddDateTimeFromString.isValid, isTrue);
        expect(instantyyyyMMddDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddDateTimeFromString.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(instantyyyyMMddDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddDateTimeFromString.toJson(),
            equals('${yyyyMMdd} 00:00:00.000'));
        expect(instantyyyyMMddDateTimeFromString.toYaml(),
            equals('${yyyyMMdd} 00:00:00.000'));
      });
      final instantyyyyMMddFromString = FhirInstant.fromString(yyyyMMdd);

      test('instantyyyyMMddFromString', () {
        expect(instantyyyyMMddFromString.isValid, isTrue);
        expect(instantyyyyMMddFromString.valueString, equals(yyyyMMdd));
        expect(
            instantyyyyMMddFromString.valueDateTime, equals(yyyyMMddDateTime));
        expect(instantyyyyMMddFromString.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddFromString.toJson(), equals(yyyyMMdd));
        expect(instantyyyyMMddFromString.toYaml(), equals(yyyyMMdd));
      });
      final instantyyyyMMddFromDateTime =
          FhirInstant.fromDateTime(yyyyMMddDateTime);

      test('instantyyyyMMddFromDateTime', () {
        expect(instantyyyyMMddFromDateTime.isValid, isTrue);
        expect(instantyyyyMMddFromDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddFromDateTime.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(instantyyyyMMddFromDateTime.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddFromDateTime.toJson(),
            equals('${yyyyMMdd} 00:00:00.000'));
        expect(instantyyyyMMddFromDateTime.toYaml(),
            equals('${yyyyMMdd} 00:00:00.000'));
      });
      final instantyyyyMMddFromJson = FhirInstant.fromJson(yyyyMMdd);

      test('instantyyyyMMddFromJson', () {
        expect(instantyyyyMMddFromJson.isValid, isTrue);
        expect(instantyyyyMMddFromJson.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddFromJson.valueDateTime, equals(yyyyMMddDateTime));
        expect(instantyyyyMMddFromJson.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddFromJson.toJson(), equals(yyyyMMdd));
        expect(instantyyyyMMddFromJson.toYaml(), equals(yyyyMMdd));
      });
      final instantyyyyMMddDateTimeFromJson =
          FhirInstant.fromJson(yyyyMMddDateTime);

      test('instantyyyyMMddDateTimeFromJson', () {
        expect(instantyyyyMMddDateTimeFromJson.isValid, isTrue);
        expect(instantyyyyMMddDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddDateTimeFromJson.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(instantyyyyMMddDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddDateTimeFromJson.toJson(),
            equals('${yyyyMMdd} 00:00:00.000'));
        expect(instantyyyyMMddDateTimeFromJson.toYaml(),
            equals('${yyyyMMdd} 00:00:00.000'));
      });
      final instantyyyyMMddDateTimeFromStringFromJson =
          FhirInstant.fromJson(yyyyMMddDateTimeFromString);

      test('instantyyyyMMddDateTimeFromStringFromJson', () {
        expect(instantyyyyMMddDateTimeFromStringFromJson.isValid, isTrue);
        expect(instantyyyyMMddDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(instantyyyyMMddDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(instantyyyyMMddDateTimeFromStringFromJson.toJson(),
            equals('${yyyyMMdd} 00:00:00.000'));
        expect(instantyyyyMMddDateTimeFromStringFromJson.toYaml(),
            equals('${yyyyMMdd} 00:00:00.000'));
      });
      final instantyyyyMMddFromYaml = FhirInstant.fromYaml(yyyyMMdd);
      test('instantyyyyMMddFromYaml', () {
        expect(instantyyyyMMddFromYaml.isValid, isTrue);
        expect(instantyyyyMMddFromYaml.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddFromYaml.valueDateTime, equals(yyyyMMddDateTime));
        expect(instantyyyyMMddFromYaml.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddFromYaml.toJson(), equals(yyyyMMdd));
        expect(instantyyyyMMddFromYaml.toYaml(), equals(yyyyMMdd));
      });
    });

    final yyyyMMddTZ = '2012-01-31TZ';
    final yyyyMMddTZDateTime = DateTime.utc(2012, 1, 31);
    final yyyyMMddTZDateTimeFromString = DateTime.parse('2012-01-31')
        .toUtc()
        .add(Duration(hours: DateTime.now().timeZoneOffset.inHours));

    group('yyyyMMddTZ - 2012-01-31T', () {
      // TODO(Dokotela): reasonable that this truncates the output?
      final instantyyyyMMddTZ = FhirInstant(yyyyMMddTZ);

      test('instantyyyyMMddTZ', () {
        expect(instantyyyyMMddTZ.isValid, isTrue);
        expect(instantyyyyMMddTZ.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTZ.valueDateTime, equals(yyyyMMddTZDateTime));
        expect(instantyyyyMMddTZ.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTZ.toJson(), equals(yyyyMMddTZ));
        expect(instantyyyyMMddTZ.toYaml(), equals(yyyyMMddTZ));
      });
      final instantyyyyMMddTZDateTime = FhirInstant(yyyyMMddTZDateTime);

      test(
          'instantyyyyMMddTZDateTime - no precision given, so must assume full DateTime input',
          () {
        expect(instantyyyyMMddTZDateTime.isValid, isTrue);
        expect(instantyyyyMMddTZDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTZDateTime.valueDateTime,
            equals(yyyyMMddTZDateTime));
        expect(instantyyyyMMddTZDateTime.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTZDateTime.toJson(),
            equals('${yyyyMMdd} 00:00:00.000Z'));
        expect(instantyyyyMMddTZDateTime.toYaml(),
            equals('${yyyyMMdd} 00:00:00.000Z'));
      });
      final instantyyyyMMddTZDateTimeFromString =
          FhirInstant(yyyyMMddTZDateTimeFromString);

      test('instantyyyyMMddTZDateTimeFromString', () {
        expect(instantyyyyMMddTZDateTimeFromString.isValid, isTrue);
        expect(
            instantyyyyMMddTZDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTZDateTime));
        expect(
            instantyyyyMMddTZDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTZDateTimeFromString.toJson(),
            equals('${yyyyMMdd} 00:00:00.000Z'));
        expect(instantyyyyMMddTZDateTimeFromString.toYaml(),
            equals('${yyyyMMdd} 00:00:00.000Z'));
      });
      final instantyyyyMMddTZFromString = FhirInstant.fromString(yyyyMMddTZ);

      test('instantyyyyMMddTZFromString', () {
        expect(instantyyyyMMddTZFromString.isValid, isTrue);
        expect(instantyyyyMMddTZFromString.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTZFromString.valueDateTime,
            equals(yyyyMMddTZDateTime));
        expect(instantyyyyMMddTZFromString.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTZFromString.toJson(), equals(yyyyMMddTZ));
        expect(instantyyyyMMddTZFromString.toYaml(), equals(yyyyMMddTZ));
      });
      final instantyyyyMMddTZFromDateTime =
          FhirInstant.fromDateTime(yyyyMMddTZDateTime);

      test('instantyyyyMMddTZFromDateTime', () {
        expect(instantyyyyMMddTZFromDateTime.isValid, isTrue);
        expect(instantyyyyMMddTZFromDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTZFromDateTime.valueDateTime,
            equals(yyyyMMddTZDateTime));
        expect(instantyyyyMMddTZFromDateTime.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTZFromDateTime.toJson(),
            equals('${yyyyMMdd} 00:00:00.000Z'));
        expect(instantyyyyMMddTZFromDateTime.toYaml(),
            equals('${yyyyMMdd} 00:00:00.000Z'));
      });
      final instantyyyyMMddTZFromJson = FhirInstant.fromJson(yyyyMMddTZ);

      test('instantyyyyMMddTZFromJson', () {
        expect(instantyyyyMMddTZFromJson.isValid, isTrue);
        expect(instantyyyyMMddTZFromJson.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTZFromJson.valueDateTime,
            equals(yyyyMMddTZDateTime));
        expect(instantyyyyMMddTZFromJson.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTZFromJson.toJson(), equals(yyyyMMddTZ));
        expect(instantyyyyMMddTZFromJson.toYaml(), equals(yyyyMMddTZ));
      });
      final instantyyyyMMddTZDateTimeFromJson =
          FhirInstant.fromJson(yyyyMMddTZDateTime);

      test('instantyyyyMMddTZDateTimeFromJson', () {
        expect(instantyyyyMMddTZDateTimeFromJson.isValid, isTrue);
        expect(instantyyyyMMddTZDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTZDateTime));
        expect(instantyyyyMMddTZDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTZDateTimeFromJson.toJson(),
            equals('${yyyyMMdd} 00:00:00.000Z'));
        expect(instantyyyyMMddTZDateTimeFromJson.toYaml(),
            equals('${yyyyMMdd} 00:00:00.000Z'));
      });
      final instantyyyyMMddTZDateTimeFromStringFromJson =
          FhirInstant.fromJson(yyyyMMddTZDateTimeFromString);

      test('instantyyyyMMddTZDateTimeFromStringFromJson', () {
        expect(instantyyyyMMddTZDateTimeFromStringFromJson.isValid, isTrue);
        expect(instantyyyyMMddTZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTZDateTime));
        expect(instantyyyyMMddTZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(instantyyyyMMddTZDateTimeFromStringFromJson.toJson(),
            equals('${yyyyMMdd} 00:00:00.000Z'));
        expect(instantyyyyMMddTZDateTimeFromStringFromJson.toYaml(),
            equals('${yyyyMMdd} 00:00:00.000Z'));
      });

      final instantyyyyMMddTZFromYaml = FhirInstant.fromYaml(yyyyMMddTZ);
      test('instantyyyyMMddTZFromYaml', () {
        expect(instantyyyyMMddTZFromYaml.isValid, isTrue);
        expect(instantyyyyMMddTZFromYaml.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTZFromYaml.valueDateTime,
            equals(yyyyMMddTZDateTime));
        expect(instantyyyyMMddTZFromYaml.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTZFromYaml.toJson(), equals(yyyyMMddTZ));
        expect(instantyyyyMMddTZFromYaml.toYaml(), equals(yyyyMMddTZ));
      });
    });

    final yyyyMMddTZZ = '2012-01-31T$timeZoneOffsetString';
    final yyyyMMddTZZDateTime = DateTime(2012, 1, 31);
    final yyyyMMddTZZDateTimeFromString = DateTime.parse('2012-01-31');

    group('yyyyMMddTZZ - 2012-01-31T$timeZoneOffsetString', () {
      // TODO(Dokotela): reasonable to truncate output?
      final instantyyyyMMddTZZ = FhirInstant(yyyyMMddTZZ);

      test('instantyyyyMMddTZZ', () {
        expect(instantyyyyMMddTZZ.isValid, isTrue);
        expect(instantyyyyMMddTZZ.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTZZ.valueDateTime, equals(yyyyMMddDateTime));
        expect(instantyyyyMMddTZZ.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTZZ.toJson(), equals(yyyyMMddTZZ));
        expect(instantyyyyMMddTZZ.toYaml(), equals(yyyyMMddTZZ));
      });
      final instantyyyyMMddTZZDateTime = FhirInstant(yyyyMMddTZZDateTime);

      test('instantyyyyMMddTZZDateTime', () {
        expect(instantyyyyMMddTZZDateTime.isValid, isTrue);
        expect(instantyyyyMMddTZZDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTZZDateTime.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(instantyyyyMMddTZZDateTime.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTZZDateTime.toJson(),
            equals(yyyyMMddTZZDateTime.toString()));
        expect(instantyyyyMMddTZZDateTime.toYaml(),
            equals(yyyyMMddTZZDateTime.toString()));
      });
      final instantyyyyMMddTZZDateTimeFromString =
          FhirInstant(yyyyMMddTZZDateTimeFromString);

      test('instantyyyyMMddTZZDateTimeFromString', () {
        expect(instantyyyyMMddTZZDateTimeFromString.isValid, isTrue);
        expect(
            instantyyyyMMddTZZDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTZZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(
            instantyyyyMMddTZZDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTZZDateTimeFromString.toJson(),
            equals(yyyyMMddTZZDateTime.toString()));
        expect(instantyyyyMMddTZZDateTimeFromString.toYaml(),
            equals(yyyyMMddTZZDateTime.toString()));
      });
      final instantyyyyMMddTZZFromString = FhirInstant.fromString(yyyyMMddTZZ);

      test('instantyyyyMMddTZZFromString', () {
        expect(instantyyyyMMddTZZFromString.isValid, isTrue);
        expect(instantyyyyMMddTZZFromString.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTZZFromString.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(instantyyyyMMddTZZFromString.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTZZFromString.toJson(),
            equals('2012-01-31T$timeZoneOffsetString'));
        expect(instantyyyyMMddTZZFromString.toYaml(),
            equals('2012-01-31T$timeZoneOffsetString'));
      });
      final instantyyyyMMddTZZFromDateTime =
          FhirInstant.fromDateTime(yyyyMMddTZZDateTime);

      test('instantyyyyMMddTZZFromDateTime', () {
        expect(instantyyyyMMddTZZFromDateTime.isValid, isTrue);
        expect(instantyyyyMMddTZZFromDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTZZFromDateTime.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(instantyyyyMMddTZZFromDateTime.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTZZFromDateTime.toJson(),
            equals(yyyyMMddTZZDateTime.toString()));
        expect(instantyyyyMMddTZZFromDateTime.toYaml(),
            equals(yyyyMMddTZZDateTime.toString()));
      });
      final instantyyyyMMddTZZFromJson = FhirInstant.fromJson(yyyyMMddTZZ);

      test('instantyyyyMMddTZZFromJson', () {
        expect(instantyyyyMMddTZZFromJson.isValid, isTrue);
        expect(instantyyyyMMddTZZFromJson.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTZZFromJson.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(instantyyyyMMddTZZFromJson.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTZZFromJson.toJson(), equals(yyyyMMddTZZ));
        expect(instantyyyyMMddTZZFromJson.toYaml(), equals(yyyyMMddTZZ));
      });
      final instantyyyyMMddTZZDateTimeFromJson =
          FhirInstant.fromJson(yyyyMMddTZZDateTime);

      test('instantyyyyMMddTZZDateTimeFromJson', () {
        expect(instantyyyyMMddTZZDateTimeFromJson.isValid, isTrue);
        expect(
            instantyyyyMMddTZZDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTZZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(instantyyyyMMddTZZDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTZZDateTimeFromJson.toJson(),
            equals(yyyyMMddTZZDateTime.toString()));
        expect(instantyyyyMMddTZZDateTimeFromJson.toYaml(),
            equals(yyyyMMddTZZDateTime.toString()));
      });
      final instantyyyyMMddTZZDateTimeFromStringFromJson =
          FhirInstant.fromJson(yyyyMMddTZZDateTimeFromString);

      test('instantyyyyMMddTZZDateTimeFromStringFromJson', () {
        expect(instantyyyyMMddTZZDateTimeFromStringFromJson.isValid, isTrue);
        expect(instantyyyyMMddTZZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTZZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(instantyyyyMMddTZZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(instantyyyyMMddTZZDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTZZDateTime.toString()));
        expect(instantyyyyMMddTZZDateTimeFromStringFromJson.toYaml(),
            equals(yyyyMMddTZZDateTime.toString()));
      });
      final instantyyyyMMddTZZFromYaml = FhirInstant.fromYaml(yyyyMMddTZZ);

      test('instantyyyyMMddTZZFromYaml', () {
        expect(instantyyyyMMddTZZFromYaml.isValid, isTrue);
        expect(instantyyyyMMddTZZFromYaml.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTZZFromYaml.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(instantyyyyMMddTZZFromYaml.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTZZFromYaml.toJson(), equals(yyyyMMddTZZ));
        expect(instantyyyyMMddTZZFromYaml.toYaml(), equals(yyyyMMddTZZ));
      });
    });

    final yyyyMMddTHH = '2012-01-31T12';
    final yyyyMMddTHHDateTime = DateTime(2012, 1, 31, 12);
    final yyyyMMddTHHDateTimeFromString = DateTime.parse('2012-01-31T12');

    group('yyyyMMddTHH - 2012-01-31T12', () {
      final instantyyyyMMddTHH = FhirInstant(yyyyMMddTHH);

      test('instantyyyyMMddTHH', () {
        expect(instantyyyyMMddTHH.isValid, isTrue);
        expect(instantyyyyMMddTHH.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHH.valueDateTime, yyyyMMddTHHDateTime);
        expect(instantyyyyMMddTHH.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHH.toJson(), equals(yyyyMMddTHH));
        expect(instantyyyyMMddTHH.toYaml(), equals(yyyyMMddTHH));
      });
      final instantyyyyMMddTHHDateTime = FhirInstant(yyyyMMddTHHDateTime);

      test('instantyyyyMMddTHHDateTime', () {
        expect(instantyyyyMMddTHHDateTime.isValid, isTrue);
        expect(instantyyyyMMddTHHDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHDateTime.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(instantyyyyMMddTHHDateTime.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHDateTime.toJson(),
            equals(yyyyMMddTHHDateTime.toString()));
        expect(instantyyyyMMddTHHDateTime.toYaml(),
            equals(yyyyMMddTHHDateTime.toString()));
      });
      final instantyyyyMMddTHHDateTimeFromString =
          FhirInstant(yyyyMMddTHHDateTimeFromString);

      test('instantyyyyMMddTHHDateTimeFromString', () {
        expect(instantyyyyMMddTHHDateTimeFromString.isValid, isTrue);
        expect(
            instantyyyyMMddTHHDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(
            instantyyyyMMddTHHDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHDateTimeFromString.toJson(),
            equals(yyyyMMddTHHDateTime.toString()));
        expect(instantyyyyMMddTHHDateTimeFromString.toYaml(),
            equals(yyyyMMddTHHDateTime.toString()));
      });
      final instantyyyyMMddTHHFromString = FhirInstant.fromString(yyyyMMddTHH);

      test('instantyyyyMMddTHHFromString', () {
        expect(instantyyyyMMddTHHFromString.isValid, isTrue);
        expect(instantyyyyMMddTHHFromString.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHFromString.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(instantyyyyMMddTHHFromString.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHFromString.toJson(), equals(yyyyMMddTHH));
        expect(instantyyyyMMddTHHFromString.toYaml(), equals(yyyyMMddTHH));
      });
      final instantyyyyMMddTHHFromDateTime =
          FhirInstant.fromDateTime(yyyyMMddTHHDateTime);

      test('instantyyyyMMddTHHFromDateTime', () {
        expect(instantyyyyMMddTHHFromDateTime.isValid, isTrue);
        expect(instantyyyyMMddTHHFromDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHFromDateTime.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(instantyyyyMMddTHHFromDateTime.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHFromDateTime.toJson(),
            equals(yyyyMMddTHHDateTime.toString()));
        expect(instantyyyyMMddTHHFromDateTime.toYaml(),
            equals(yyyyMMddTHHDateTime.toString()));
      });
      final instantyyyyMMddTHHFromJson = FhirInstant.fromJson(yyyyMMddTHH);

      test('instantyyyyMMddTHHFromJson', () {
        expect(instantyyyyMMddTHHFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHFromJson.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHFromJson.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(instantyyyyMMddTHHFromJson.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHFromJson.toJson(), equals(yyyyMMddTHH));
        expect(instantyyyyMMddTHHFromJson.toYaml(), equals(yyyyMMddTHH));
      });
      final instantyyyyMMddTHHDateTimeFromJson =
          FhirInstant.fromJson(yyyyMMddTHHDateTime);

      test('instantyyyyMMddTHHDateTimeFromJson', () {
        expect(instantyyyyMMddTHHDateTimeFromJson.isValid, isTrue);
        expect(
            instantyyyyMMddTHHDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(instantyyyyMMddTHHDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHDateTimeFromJson.toJson(),
            equals(yyyyMMddTHHDateTime.toString()));
        expect(instantyyyyMMddTHHDateTimeFromJson.toYaml(),
            equals(yyyyMMddTHHDateTime.toString()));
      });
      final instantyyyyMMddTHHDateTimeFromStringFromJson =
          FhirInstant.fromJson(yyyyMMddTHHDateTimeFromString);

      test('instantyyyyMMddTHHDateTimeFromStringFromJson', () {
        expect(instantyyyyMMddTHHDateTimeFromStringFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(instantyyyyMMddTHHDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTHHDateTime.toString()));
        expect(instantyyyyMMddTHHDateTimeFromStringFromJson.toYaml(),
            equals(yyyyMMddTHHDateTime.toString()));
      });
      final instantyyyyMMddTHHFromYaml = FhirInstant.fromYaml(yyyyMMddTHH);
      test('instantyyyyMMddTHHFromYaml', () {
        expect(instantyyyyMMddTHHFromYaml.isValid, isTrue);
        expect(instantyyyyMMddTHHFromYaml.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHFromYaml.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(instantyyyyMMddTHHFromYaml.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHFromYaml.toJson(), equals(yyyyMMddTHH));
        expect(instantyyyyMMddTHHFromYaml.toYaml(), equals(yyyyMMddTHH));
      });
    });

    final yyyyMMddTHHZ = '2012-01-31T12Z';
    final yyyyMMddTHHZDateTime = DateTime.utc(2012, 1, 31, 12);
    final yyyyMMddTHHZDateTimeFromString = DateTime.parse('2012-01-31T12Z');

    group('yyyyMMddTHHZ - 2012-01-31TZ', () {
      final instantyyyyMMddTHHZ = FhirInstant(yyyyMMddTHHZ);

      test('instantyyyyMMddTHHZ', () {
        expect(instantyyyyMMddTHHZ.isValid, isTrue);
        expect(instantyyyyMMddTHHZ.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZ.valueDateTime, equals(yyyyMMddTHHZDateTime));
        expect(instantyyyyMMddTHHZ.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZ.toJson(), equals(yyyyMMddTHHZ));
        expect(instantyyyyMMddTHHZ.toYaml(), equals(yyyyMMddTHHZ));
      });
      final instantyyyyMMddTHHZDateTime = FhirInstant(yyyyMMddTHHZDateTime);

      test('instantyyyyMMddTHHZDateTime', () {
        expect(instantyyyyMMddTHHZDateTime.isValid, isTrue);
        expect(instantyyyyMMddTHHZDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZDateTime.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(instantyyyyMMddTHHZDateTime.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZDateTime.toJson(),
            equals(instantyyyyMMddTHHZDateTime.valueDateTime.toString()));
        expect(instantyyyyMMddTHHZDateTime.toYaml(),
            equals(instantyyyyMMddTHHZDateTime.valueDateTime.toString()));
      });
      final instantyyyyMMddTHHZDateTimeFromString =
          FhirInstant(yyyyMMddTHHZDateTimeFromString);

      test('instantyyyyMMddTHHZDateTimeFromString', () {
        expect(instantyyyyMMddTHHZDateTimeFromString.isValid, isTrue);
        expect(instantyyyyMMddTHHZDateTimeFromString.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(
            instantyyyyMMddTHHZDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHZDateTimeFromString.toJson(),
            equals(instantyyyyMMddTHHZDateTimeFromString.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHZDateTimeFromString.toYaml(),
            equals(instantyyyyMMddTHHZDateTimeFromString.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHZFromString =
          FhirInstant.fromString(yyyyMMddTHHZ);

      test('instantyyyyMMddTHHZFromString', () {
        expect(instantyyyyMMddTHHZFromString.isValid, isTrue);
        expect(instantyyyyMMddTHHZFromString.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZFromString.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(instantyyyyMMddTHHZFromString.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZFromString.toJson(), equals(yyyyMMddTHHZ));
        expect(instantyyyyMMddTHHZFromString.toYaml(), equals(yyyyMMddTHHZ));
      });
      final instantyyyyMMddTHHZFromDateTime =
          FhirInstant.fromDateTime(yyyyMMddTHHZDateTime);

      test('instantyyyyMMddTHHZFromDateTime', () {
        expect(instantyyyyMMddTHHZFromDateTime.isValid, isTrue);
        expect(instantyyyyMMddTHHZFromDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(instantyyyyMMddTHHZFromDateTime.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZFromDateTime.toJson(),
            equals(instantyyyyMMddTHHZFromDateTime.valueDateTime.toString()));
        expect(instantyyyyMMddTHHZFromDateTime.toYaml(),
            equals(instantyyyyMMddTHHZFromDateTime.valueDateTime.toString()));
      });
      final instantyyyyMMddTHHZFromJson = FhirInstant.fromJson(yyyyMMddTHHZ);

      test('instantyyyyMMddTHHZFromJson', () {
        expect(instantyyyyMMddTHHZFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHZFromJson.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZFromJson.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(instantyyyyMMddTHHZFromJson.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZFromJson.toJson(), equals(yyyyMMddTHHZ));
        expect(instantyyyyMMddTHHZFromJson.toYaml(), equals(yyyyMMddTHHZ));
      });
      final instantyyyyMMddTHHZDateTimeFromJson =
          FhirInstant.fromJson(yyyyMMddTHHZDateTime);

      test('instantyyyyMMddTHHZDateTimeFromJson', () {
        expect(instantyyyyMMddTHHZDateTimeFromJson.isValid, isTrue);
        expect(
            instantyyyyMMddTHHZDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(
            instantyyyyMMddTHHZDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHZDateTimeFromJson.toJson(),
            equals(
                instantyyyyMMddTHHZDateTimeFromJson.valueDateTime.toString()));
        expect(
            instantyyyyMMddTHHZDateTimeFromJson.toYaml(),
            equals(
                instantyyyyMMddTHHZDateTimeFromJson.valueDateTime.toString()));
      });
      final instantyyyyMMddTHHZDateTimeFromStringFromJson =
          FhirInstant.fromJson(yyyyMMddTHHZDateTimeFromString);

      test('instantyyyyMMddTHHZDateTimeFromStringFromJson', () {
        expect(instantyyyyMMddTHHZDateTimeFromStringFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(instantyyyyMMddTHHZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHZDateTimeFromStringFromJson.toJson(),
            equals(instantyyyyMMddTHHZDateTimeFromStringFromJson.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHZDateTimeFromStringFromJson.toYaml(),
            equals(instantyyyyMMddTHHZDateTimeFromStringFromJson.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHZFromYaml = FhirInstant.fromYaml(yyyyMMddTHHZ);
      test('instantyyyyMMddTHHZFromYaml', () {
        expect(instantyyyyMMddTHHZFromYaml.isValid, isTrue);
        expect(instantyyyyMMddTHHZFromYaml.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZFromYaml.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(instantyyyyMMddTHHZFromYaml.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZFromYaml.toJson(), equals(yyyyMMddTHHZ));
        expect(instantyyyyMMddTHHZFromYaml.toYaml(), equals(yyyyMMddTHHZ));
      });
    });

    final yyyyMMddTHHZZ = '2012-01-31T12$timeZoneOffsetString';
    final yyyyMMddTHHZZDateTime = DateTime(2012, 1, 31, 12);
    final yyyyMMddTHHZZDateTimeFromString =
        DateTime.parse('2012-01-31T12$timeZoneOffsetString');

    group('yyyyMMddTHHZZ - 2012-01-31T12:30${DateTime.now().timeZoneOffset}',
        () {
      final instantyyyyMMddTHHZZ = FhirInstant(yyyyMMddTHHZZ);

      test('instantyyyyMMddTHHZZ', () {
        expect(instantyyyyMMddTHHZZ.isValid, isTrue);
        expect(instantyyyyMMddTHHZZ.valueString, equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHZZ.valueDateTime, equals(yyyyMMddTHHZZDateTime));
        expect(instantyyyyMMddTHHZZ.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZZ.toJson(), equals(yyyyMMddTHHZZ));
        expect(instantyyyyMMddTHHZZ.toYaml(), equals(yyyyMMddTHHZZ));
      });
      final instantyyyyMMddTHHZZDateTime = FhirInstant(yyyyMMddTHHZZDateTime);
      test('instantyyyyMMddTHHZZDateTime', () {
        expect(instantyyyyMMddTHHZZDateTime.isValid, isTrue);
        expect(instantyyyyMMddTHHZZDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZZDateTime.valueDateTime?.toUtc(),
            equals(yyyyMMddTHHZZDateTime.toUtc()));
        expect(instantyyyyMMddTHHZZDateTime.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZZDateTime.toJson(),
            equals(instantyyyyMMddTHHZZDateTime.valueDateTime.toString()));
        expect(instantyyyyMMddTHHZZDateTime.toYaml(),
            equals(instantyyyyMMddTHHZZDateTime.valueDateTime.toString()));
      });

      final instantyyyyMMddTHHZZDateTimeFromString =
          FhirInstant(yyyyMMddTHHZZDateTimeFromString);

      test('instantyyyyMMddTHHZZDateTimeFromString', () {
        expect(instantyyyyMMddTHHZZDateTimeFromString.isValid, isTrue);
        expect(instantyyyyMMddTHHZZDateTimeFromString.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHZZDateTime.toUtc()));
        expect(instantyyyyMMddTHHZZDateTimeFromString.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHZZDateTimeFromString.toJson(),
            equals(instantyyyyMMddTHHZZDateTimeFromString.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHZZDateTimeFromString.toYaml(),
            equals(instantyyyyMMddTHHZZDateTimeFromString.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHZZFromString =
          FhirInstant.fromString(yyyyMMddTHHZZ);

      test('instantyyyyMMddTHHZZFromString', () {
        expect(instantyyyyMMddTHHZZFromString.isValid, isTrue);
        expect(instantyyyyMMddTHHZZFromString.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZZFromString.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(instantyyyyMMddTHHZZFromString.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZZFromString.toJson(), equals(yyyyMMddTHHZZ));
        expect(instantyyyyMMddTHHZZFromString.toYaml(), equals(yyyyMMddTHHZZ));
      });
      final instantyyyyMMddTHHZZFromDateTime =
          FhirInstant.fromDateTime(yyyyMMddTHHZZDateTime);

      test('instantyyyyMMddTHHZZFromDateTime', () {
        expect(instantyyyyMMddTHHZZFromDateTime.isValid, isTrue);
        expect(instantyyyyMMddTHHZZFromDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(instantyyyyMMddTHHZZFromDateTime.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZZFromDateTime.toJson(),
            equals(instantyyyyMMddTHHZZFromDateTime.valueDateTime.toString()));
        expect(instantyyyyMMddTHHZZFromDateTime.toYaml(),
            equals(instantyyyyMMddTHHZZFromDateTime.valueDateTime.toString()));
      });
      final instantyyyyMMddTHHZZFromJson = FhirInstant.fromJson(yyyyMMddTHHZZ);

      test('instantyyyyMMddTHHZZFromJson', () {
        expect(instantyyyyMMddTHHZZFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHZZFromJson.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZZFromJson.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(instantyyyyMMddTHHZZFromJson.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZZFromJson.toJson(), equals(yyyyMMddTHHZZ));
        expect(instantyyyyMMddTHHZZFromJson.toYaml(), equals(yyyyMMddTHHZZ));
      });
      final instantyyyyMMddTHHZZDateTimeFromJson =
          FhirInstant.fromJson(yyyyMMddTHHZZDateTime);

      test('instantyyyyMMddTHHZZDateTimeFromJson', () {
        expect(instantyyyyMMddTHHZZDateTimeFromJson.isValid, isTrue);
        expect(
            instantyyyyMMddTHHZZDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(
            instantyyyyMMddTHHZZDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHZZDateTimeFromJson.toJson(),
            equals(
                instantyyyyMMddTHHZZDateTimeFromJson.valueDateTime.toString()));
        expect(
            instantyyyyMMddTHHZZDateTimeFromJson.toYaml(),
            equals(
                instantyyyyMMddTHHZZDateTimeFromJson.valueDateTime.toString()));
      });
      final instantyyyyMMddTHHZZDateTimeFromStringFromJson =
          FhirInstant.fromJson(yyyyMMddTHHZZDateTimeFromString);

      test('instantyyyyMMddTHHZZDateTimeFromStringFromJson', () {
        expect(instantyyyyMMddTHHZZDateTimeFromStringFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHZZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHZZDateTime.toUtc()));
        expect(instantyyyyMMddTHHZZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHZZDateTimeFromStringFromJson.toJson(),
            equals(instantyyyyMMddTHHZZDateTimeFromStringFromJson.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHZZDateTimeFromStringFromJson.toYaml(),
            equals(instantyyyyMMddTHHZZDateTimeFromStringFromJson.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHZZFromYaml = FhirInstant.fromYaml(yyyyMMddTHHZZ);
      test('instantyyyyMMddTHHZZFromYaml', () {
        expect(instantyyyyMMddTHHZZFromYaml.isValid, isTrue);
        expect(instantyyyyMMddTHHZZFromYaml.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZZFromYaml.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(instantyyyyMMddTHHZZFromYaml.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHZZFromYaml.toJson(), equals(yyyyMMddTHHZZ));
        expect(instantyyyyMMddTHHZZFromYaml.toYaml(), equals(yyyyMMddTHHZZ));
      });
    });

    final yyyyMMddTHHmm = '2012-01-31T12:30';
    final yyyyMMddTHHmmDateTime = DateTime(2012, 1, 31, 12, 30);
    final yyyyMMddTHHmmDateTimeFromString = DateTime.parse('2012-01-31T12:30');

    group('yyyyMMddTHHmm - 2012-01-31T12:30+04:00', () {
      final instantyyyyMMddTHHmm = FhirInstant(yyyyMMddTHHmm);

      test('instantyyyyMMddTHHmm', () {
        expect(instantyyyyMMddTHHmm.isValid, isTrue);
        expect(instantyyyyMMddTHHmm.valueString, equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmm.valueDateTime, equals(yyyyMMddTHHmmDateTime));
        expect(instantyyyyMMddTHHmm.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmm.toJson(), equals(yyyyMMddTHHmm));
        expect(instantyyyyMMddTHHmm.toYaml(), equals(yyyyMMddTHHmm));
      });
      final instantyyyyMMddTHHmmDateTime = FhirInstant(yyyyMMddTHHmmDateTime);

      test('instantyyyyMMddTHHmmDateTime', () {
        expect(instantyyyyMMddTHHmmDateTime.isValid, isTrue);
        expect(instantyyyyMMddTHHmmDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmDateTime.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(instantyyyyMMddTHHmmDateTime.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmDateTime.toJson(),
            equals(instantyyyyMMddTHHmmDateTime.valueDateTime.toString()));
        expect(instantyyyyMMddTHHmmDateTime.toYaml(),
            equals(instantyyyyMMddTHHmmDateTime.valueDateTime.toString()));
      });
      final instantyyyyMMddTHHmmDateTimeFromString =
          FhirInstant(yyyyMMddTHHmmDateTimeFromString);

      test('instantyyyyMMddTHHmmDateTimeFromString', () {
        expect(instantyyyyMMddTHHmmDateTimeFromString.isValid, isTrue);
        expect(instantyyyyMMddTHHmmDateTimeFromString.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(instantyyyyMMddTHHmmDateTimeFromString.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmDateTimeFromString.toJson(),
            equals(instantyyyyMMddTHHmmDateTimeFromString.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmDateTimeFromString.toYaml(),
            equals(instantyyyyMMddTHHmmDateTimeFromString.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmFromString =
          FhirInstant.fromString(yyyyMMddTHHmm);
      test('instantyyyyMMddTHHmmFromString', () {
        expect(instantyyyyMMddTHHmmFromString.isValid, isTrue);
        expect(instantyyyyMMddTHHmmFromString.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmFromString.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(instantyyyyMMddTHHmmFromString.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmFromString.toJson(), equals(yyyyMMddTHHmm));
        expect(instantyyyyMMddTHHmmFromString.toYaml(), equals(yyyyMMddTHHmm));
      });
      final instantyyyyMMddTHHmmFromDateTime =
          FhirInstant.fromDateTime(yyyyMMddTHHmmDateTime);

      test('instantyyyyMMddTHHmmFromDateTime', () {
        expect(instantyyyyMMddTHHmmFromDateTime.isValid, isTrue);
        expect(instantyyyyMMddTHHmmFromDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(instantyyyyMMddTHHmmFromDateTime.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmFromDateTime.toJson(),
            equals(instantyyyyMMddTHHmmFromDateTime.valueDateTime.toString()));
        expect(instantyyyyMMddTHHmmFromDateTime.toYaml(),
            equals(instantyyyyMMddTHHmmFromDateTime.valueDateTime.toString()));
      });
      final instantyyyyMMddTHHmmFromJson = FhirInstant.fromJson(yyyyMMddTHHmm);

      test('instantyyyyMMddTHHmmFromJson', () {
        expect(instantyyyyMMddTHHmmFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHmmFromJson.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmFromJson.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(instantyyyyMMddTHHmmFromJson.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmFromJson.toJson(), equals(yyyyMMddTHHmm));
        expect(instantyyyyMMddTHHmmFromJson.toYaml(), equals(yyyyMMddTHHmm));
      });
      final instantyyyyMMddTHHmmDateTimeFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmDateTime);

      test('instantyyyyMMddTHHmmDateTimeFromJson', () {
        expect(instantyyyyMMddTHHmmDateTimeFromJson.isValid, isTrue);
        expect(
            instantyyyyMMddTHHmmDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(
            instantyyyyMMddTHHmmDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmDateTimeFromJson.toJson(),
            equals(
                instantyyyyMMddTHHmmDateTimeFromJson.valueDateTime.toString()));
        expect(
            instantyyyyMMddTHHmmDateTimeFromJson.toYaml(),
            equals(
                instantyyyyMMddTHHmmDateTimeFromJson.valueDateTime.toString()));
      });
      final instantyyyyMMddTHHmmDateTimeFromStringFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmDateTimeFromString);

      test('instantyyyyMMddTHHmmDateTimeFromStringFromJson', () {
        expect(instantyyyyMMddTHHmmDateTimeFromStringFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHmmDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(instantyyyyMMddTHHmmDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmDateTimeFromStringFromJson.toJson(),
            equals(instantyyyyMMddTHHmmDateTimeFromStringFromJson.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmDateTimeFromStringFromJson.toYaml(),
            equals(instantyyyyMMddTHHmmDateTimeFromStringFromJson.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmFromYaml = FhirInstant.fromYaml(yyyyMMddTHHmm);

      test('instantyyyyMMddTHHmmFromYaml', () {
        expect(instantyyyyMMddTHHmmFromYaml.isValid, isTrue);
        expect(instantyyyyMMddTHHmmFromYaml.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(instantyyyyMMddTHHmmFromYaml.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmFromYaml.toJson(), equals(yyyyMMddTHHmm));
        expect(instantyyyyMMddTHHmmFromYaml.toYaml(), equals(yyyyMMddTHHmm));
      });
    });

    final yyyyMMddTHHmmZ = '2012-01-31T12:30Z';
    final yyyyMMddTHHmmZDateTime = DateTime.utc(2012, 1, 31, 12, 30);
    final yyyyMMddTHHmmZDateTimeFromString =
        DateTime.parse('2012-01-31T12:30Z');

    group('yyyyMMddTHHmmZ - 2012-01-31T12:30+04:00', () {
      final instantyyyyMMddTHHmmZ = FhirInstant(yyyyMMddTHHmmZ);

      test('instantyyyyMMddTHHmmZ', () {
        expect(instantyyyyMMddTHHmmZ.isValid, isTrue);
        expect(instantyyyyMMddTHHmmZ.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZ.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(instantyyyyMMddTHHmmZ.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZ.toJson(), equals(yyyyMMddTHHmmZ));
        expect(instantyyyyMMddTHHmmZ.toYaml(), equals(yyyyMMddTHHmmZ));
      });
      final instantyyyyMMddTHHmmZDateTime = FhirInstant(yyyyMMddTHHmmZDateTime);

      test('instantyyyyMMddTHHmmZDateTime', () {
        expect(instantyyyyMMddTHHmmZDateTime.isValid, isTrue);
        expect(instantyyyyMMddTHHmmZDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZDateTime.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(instantyyyyMMddTHHmmZDateTime.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZDateTime.toJson(),
            equals(instantyyyyMMddTHHmmZDateTime.valueDateTime.toString()));
        expect(instantyyyyMMddTHHmmZDateTime.toYaml(),
            equals(instantyyyyMMddTHHmmZDateTime.valueDateTime.toString()));
      });
      final instantyyyyMMddTHHmmZDateTimeFromString =
          FhirInstant(yyyyMMddTHHmmZDateTimeFromString);

      test('instantyyyyMMddTHHmmZDateTimeFromString', () {
        expect(instantyyyyMMddTHHmmZDateTimeFromString.isValid, isTrue);
        expect(instantyyyyMMddTHHmmZDateTimeFromString.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(instantyyyyMMddTHHmmZDateTimeFromString.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmZDateTimeFromString.toJson(),
            equals(instantyyyyMMddTHHmmZDateTimeFromString.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmZDateTimeFromString.toYaml(),
            equals(instantyyyyMMddTHHmmZDateTimeFromString.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmZFromString =
          FhirInstant.fromString(yyyyMMddTHHmmZ);

      test('instantyyyyMMddTHHmmZFromString', () {
        expect(instantyyyyMMddTHHmmZFromString.isValid, isTrue);
        expect(instantyyyyMMddTHHmmZFromString.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZFromString.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(instantyyyyMMddTHHmmZFromString.toString(), equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmZFromString.toJson(), equals(yyyyMMddTHHmmZ));
        expect(
            instantyyyyMMddTHHmmZFromString.toYaml(), equals(yyyyMMddTHHmmZ));
      });
      final instantyyyyMMddTHHmmZFromDateTime =
          FhirInstant.fromDateTime(yyyyMMddTHHmmZDateTime);

      test('instantyyyyMMddTHHmmZFromDateTime', () {
        expect(instantyyyyMMddTHHmmZFromDateTime.isValid, isTrue);
        expect(instantyyyyMMddTHHmmZFromDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(instantyyyyMMddTHHmmZFromDateTime.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZFromDateTime.toJson(),
            equals(instantyyyyMMddTHHmmZFromDateTime.valueDateTime.toString()));
        expect(instantyyyyMMddTHHmmZFromDateTime.toYaml(),
            equals(instantyyyyMMddTHHmmZFromDateTime.valueDateTime.toString()));
      });
      final instantyyyyMMddTHHmmZFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmZ);

      test('instantyyyyMMddTHHmmZFromJson', () {
        expect(instantyyyyMMddTHHmmZFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHmmZFromJson.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZFromJson.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(instantyyyyMMddTHHmmZFromJson.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZFromJson.toJson(), equals(yyyyMMddTHHmmZ));
        expect(instantyyyyMMddTHHmmZFromJson.toYaml(), equals(yyyyMMddTHHmmZ));
      });
      final instantyyyyMMddTHHmmZDateTimeFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmZDateTime);

      test('instantyyyyMMddTHHmmZDateTimeFromJson', () {
        expect(instantyyyyMMddTHHmmZDateTimeFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHmmZDateTimeFromJson.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(
            instantyyyyMMddTHHmmZDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmZDateTimeFromJson.toJson(),
            equals(instantyyyyMMddTHHmmZDateTimeFromJson.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmZDateTimeFromJson.toYaml(),
            equals(instantyyyyMMddTHHmmZDateTimeFromJson.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmZDateTimeFromStringFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmZDateTimeFromString);

      test('instantyyyyMMddTHHmmZDateTimeFromStringFromJson', () {
        expect(instantyyyyMMddTHHmmZDateTimeFromStringFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHmmZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(instantyyyyMMddTHHmmZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmZDateTimeFromStringFromJson.toJson(),
            equals(instantyyyyMMddTHHmmZDateTimeFromStringFromJson.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmZDateTimeFromStringFromJson.toYaml(),
            equals(instantyyyyMMddTHHmmZDateTimeFromStringFromJson.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmZFromYaml =
          FhirInstant.fromYaml(yyyyMMddTHHmmZ);

      test('instantyyyyMMddTHHmmZFromYaml', () {
        expect(instantyyyyMMddTHHmmZFromYaml.isValid, isTrue);
        expect(instantyyyyMMddTHHmmZFromYaml.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(instantyyyyMMddTHHmmZFromYaml.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZFromYaml.toJson(), equals(yyyyMMddTHHmmZ));
        expect(instantyyyyMMddTHHmmZFromYaml.toYaml(), equals(yyyyMMddTHHmmZ));
      });
    });

    final yyyyMMddTHHmmZZ = '2012-01-31T12:30-05:00';
    final yyyyMMddTHHmmZZDateTime = DateTime(2012, 1, 31, 12, 30).toUtc();
    final yyyyMMddTHHmmZZDateTimeFromString =
        DateTime.parse('2012-01-31T12:30-05:00');

    group('yyyyMMddTHHmmZZ - 2012-01-31T12:30$timeZoneOffsetString', () {
      final instantyyyyMMddTHHmmZZ = FhirInstant(yyyyMMddTHHmmZZ);

      test('instantyyyyMMddTHHmmZZ', () {
        expect(instantyyyyMMddTHHmmZZ.isValid, isTrue);
        expect(instantyyyyMMddTHHmmZZ.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZZ.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(instantyyyyMMddTHHmmZZ.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZZ.toJson(), equals(yyyyMMddTHHmmZZ));
        expect(instantyyyyMMddTHHmmZZ.toYaml(), equals(yyyyMMddTHHmmZZ));
      });
      final instantyyyyMMddTHHmmZZDateTime =
          FhirInstant(yyyyMMddTHHmmZZDateTime);

      test('instantyyyyMMddTHHmmZZDateTime', () {
        expect(instantyyyyMMddTHHmmZZDateTime.isValid, isTrue);
        expect(instantyyyyMMddTHHmmZZDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZZDateTime.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(instantyyyyMMddTHHmmZZDateTime.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZZDateTime.toJson(),
            equals(instantyyyyMMddTHHmmZZDateTime.valueDateTime.toString()));
        expect(instantyyyyMMddTHHmmZZDateTime.toYaml(),
            equals(instantyyyyMMddTHHmmZZDateTime.valueDateTime.toString()));
      });
      final instantyyyyMMddTHHmmZZDateTimeFromString =
          FhirInstant(yyyyMMddTHHmmZZDateTimeFromString);

      test('instantyyyyMMddTHHmmZZDateTimeFromString', () {
        expect(instantyyyyMMddTHHmmZZDateTimeFromString.isValid, isTrue);
        expect(instantyyyyMMddTHHmmZZDateTimeFromString.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(instantyyyyMMddTHHmmZZDateTimeFromString.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmZZDateTimeFromString.toJson(),
            equals(instantyyyyMMddTHHmmZZDateTimeFromString.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmZZDateTimeFromString.toYaml(),
            equals(instantyyyyMMddTHHmmZZDateTimeFromString.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmZZFromString =
          FhirInstant.fromString(yyyyMMddTHHmmZZ);

      test('instantyyyyMMddTHHmmZZFromString', () {
        expect(instantyyyyMMddTHHmmZZFromString.isValid, isTrue);
        expect(instantyyyyMMddTHHmmZZFromString.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZZFromString.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(instantyyyyMMddTHHmmZZFromString.toString(), equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmZZFromString.toJson(), equals(yyyyMMddTHHmmZZ));
        expect(
            instantyyyyMMddTHHmmZZFromString.toYaml(), equals(yyyyMMddTHHmmZZ));
      });
      final instantyyyyMMddTHHmmZZFromDateTime =
          FhirInstant.fromDateTime(yyyyMMddTHHmmZZDateTime);

      test('instantyyyyMMddTHHmmZZFromDateTime', () {
        expect(instantyyyyMMddTHHmmZZFromDateTime.isValid, isTrue);
        expect(
            instantyyyyMMddTHHmmZZFromDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(instantyyyyMMddTHHmmZZFromDateTime.toString(), equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmZZFromDateTime.toJson(),
            equals(
                instantyyyyMMddTHHmmZZFromDateTime.valueDateTime.toString()));
        expect(
            instantyyyyMMddTHHmmZZFromDateTime.toYaml(),
            equals(
                instantyyyyMMddTHHmmZZFromDateTime.valueDateTime.toString()));
      });
      final instantyyyyMMddTHHmmZZFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmZZ);

      test('instantyyyyMMddTHHmmZZFromJson', () {
        expect(instantyyyyMMddTHHmmZZFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHmmZZFromJson.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZZFromJson.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(instantyyyyMMddTHHmmZZFromJson.toString(), equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmZZFromJson.toJson(), equals(yyyyMMddTHHmmZZ));
        expect(
            instantyyyyMMddTHHmmZZFromJson.toYaml(), equals(yyyyMMddTHHmmZZ));
      });
      final instantyyyyMMddTHHmmZZDateTimeFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmZZDateTime);

      test('instantyyyyMMddTHHmmZZDateTimeFromJson', () {
        expect(instantyyyyMMddTHHmmZZDateTimeFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHmmZZDateTimeFromJson.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(instantyyyyMMddTHHmmZZDateTimeFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmZZDateTimeFromJson.toJson(),
            equals(instantyyyyMMddTHHmmZZDateTimeFromJson.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmZZDateTimeFromJson.toYaml(),
            equals(instantyyyyMMddTHHmmZZDateTimeFromJson.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmZZDateTimeFromStringFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmZZDateTimeFromString);

      test('instantyyyyMMddTHHmmZZDateTimeFromStringFromJson', () {
        expect(
            instantyyyyMMddTHHmmZZDateTimeFromStringFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHmmZZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(instantyyyyMMddTHHmmZZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmZZDateTimeFromStringFromJson.toJson(),
            equals(instantyyyyMMddTHHmmZZDateTimeFromStringFromJson
                .valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmZZDateTimeFromStringFromJson.toYaml(),
            equals(instantyyyyMMddTHHmmZZDateTimeFromStringFromJson
                .valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmZZFromYaml =
          FhirInstant.fromYaml(yyyyMMddTHHmmZZ);

      test('instantyyyyMMddTHHmmZZFromYaml', () {
        expect(instantyyyyMMddTHHmmZZFromYaml.isValid, isTrue);
        expect(instantyyyyMMddTHHmmZZFromYaml.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmZZFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(instantyyyyMMddTHHmmZZFromYaml.toString(), equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmZZFromYaml.toJson(), equals(yyyyMMddTHHmmZZ));
        expect(
            instantyyyyMMddTHHmmZZFromYaml.toYaml(), equals(yyyyMMddTHHmmZZ));
      });
    });

    final yyyyMMddTHHmmss = '2012-01-31T12:30:59';
    final yyyyMMddTHHmmssDateTime = DateTime(2012, 1, 31, 12, 30, 59);
    final yyyyMMddTHHmmssDateTimeFromString =
        DateTime.parse('2012-01-31T12:30:59');

    group('yyyyMMddTHHmmss - 2012-01-31T12:30+04:00', () {
      final instantyyyyMMddTHHmmss = FhirInstant(yyyyMMddTHHmmss);
      test('instantyyyyMMddTHHmmss', () {
        expect(instantyyyyMMddTHHmmss.isValid, isTrue);
        expect(instantyyyyMMddTHHmmss.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmss.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(instantyyyyMMddTHHmmss.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmss.toJson(), equals(yyyyMMddTHHmmss));
        expect(instantyyyyMMddTHHmmss.toYaml(), equals(yyyyMMddTHHmmss));
      });
      final instantyyyyMMddTHHmmssDateTime =
          FhirInstant(yyyyMMddTHHmmssDateTime);

      test('instantyyyyMMddTHHmmssDateTime', () {
        expect(instantyyyyMMddTHHmmssDateTime.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(instantyyyyMMddTHHmmssDateTime.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssDateTime.toJson(),
            equals(instantyyyyMMddTHHmmssDateTime.valueDateTime.toString()));
        expect(instantyyyyMMddTHHmmssDateTime.toYaml(),
            equals(instantyyyyMMddTHHmmssDateTime.valueDateTime.toString()));
      });
      final instantyyyyMMddTHHmmssDateTimeFromString =
          FhirInstant(yyyyMMddTHHmmssDateTimeFromString);
      test('instantyyyyMMddTHHmmssDateTimeFromString', () {
        expect(instantyyyyMMddTHHmmssDateTimeFromString.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssDateTimeFromString.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(instantyyyyMMddTHHmmssDateTimeFromString.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssDateTimeFromString.toJson(),
            equals(instantyyyyMMddTHHmmssDateTimeFromString.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmssDateTimeFromString.toYaml(),
            equals(instantyyyyMMddTHHmmssDateTimeFromString.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmssFromString =
          FhirInstant.fromString(yyyyMMddTHHmmss);

      test('instantyyyyMMddTHHmmssFromString', () {
        expect(instantyyyyMMddTHHmmssFromString.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssFromString.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssFromString.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(instantyyyyMMddTHHmmssFromString.toString(), equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssFromString.toJson(), equals(yyyyMMddTHHmmss));
        expect(
            instantyyyyMMddTHHmmssFromString.toYaml(), equals(yyyyMMddTHHmmss));
      });
      final instantyyyyMMddTHHmmssFromDateTime =
          FhirInstant.fromDateTime(yyyyMMddTHHmmssDateTime);

      test('instantyyyyMMddTHHmmssFromDateTime', () {
        expect(instantyyyyMMddTHHmmssFromDateTime.isValid, isTrue);
        expect(
            instantyyyyMMddTHHmmssFromDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(instantyyyyMMddTHHmmssFromDateTime.toString(), equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssFromDateTime.toJson(),
            equals(
                instantyyyyMMddTHHmmssFromDateTime.valueDateTime.toString()));
        expect(
            instantyyyyMMddTHHmmssFromDateTime.toYaml(),
            equals(
                instantyyyyMMddTHHmmssFromDateTime.valueDateTime.toString()));
      });
      final instantyyyyMMddTHHmmssFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmss);

      test('instantyyyyMMddTHHmmssFromJson', () {
        expect(instantyyyyMMddTHHmmssFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssFromJson.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(instantyyyyMMddTHHmmssFromJson.toString(), equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssFromJson.toJson(), equals(yyyyMMddTHHmmss));
        expect(
            instantyyyyMMddTHHmmssFromJson.toYaml(), equals(yyyyMMddTHHmmss));
      });
      final instantyyyyMMddTHHmmssDateTimeFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmssDateTime);
      test('instantyyyyMMddTHHmmssDateTimeFromJson', () {
        expect(instantyyyyMMddTHHmmssDateTimeFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssDateTimeFromJson.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(instantyyyyMMddTHHmmssDateTimeFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssDateTimeFromJson.toJson(),
            equals(instantyyyyMMddTHHmmssDateTimeFromJson.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmssDateTimeFromJson.toYaml(),
            equals(instantyyyyMMddTHHmmssDateTimeFromJson.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmssDateTimeFromStringFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmssDateTimeFromString);

      test('instantyyyyMMddTHHmmssDateTimeFromStringFromJson', () {
        expect(
            instantyyyyMMddTHHmmssDateTimeFromStringFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(instantyyyyMMddTHHmmssDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssDateTimeFromStringFromJson.toJson(),
            equals(instantyyyyMMddTHHmmssDateTimeFromStringFromJson
                .valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmssDateTimeFromStringFromJson.toYaml(),
            equals(instantyyyyMMddTHHmmssDateTimeFromStringFromJson
                .valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmssFromUnits = FhirInstant.fromUnits(
          year: 2012,
          month: 1,
          day: 31,
          hour: 12,
          minute: 30,
          second: 59,
          timeZoneOffset: timeZoneOffsetInt);
      test('instantyyyyMMddTHHmmssFromUnits', () {
        expect(instantyyyyMMddTHHmmssFromUnits.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssFromUnits.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssFromUnits.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(instantyyyyMMddTHHmmssFromUnits.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssFromUnits.toJson(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssFromUnits.toYaml(), equals(yyyyMMdd));
      });
      final instantyyyyMMddTHHmmssFromYaml =
          FhirInstant.fromYaml(yyyyMMddTHHmmss);
      test('instantyyyyMMddTHHmmssFromYaml', () {
        expect(instantyyyyMMddTHHmmssFromYaml.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssFromYaml.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(instantyyyyMMddTHHmmssFromYaml.toString(), equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssFromYaml.toJson(), equals(yyyyMMddTHHmmss));
        expect(
            instantyyyyMMddTHHmmssFromYaml.toYaml(), equals(yyyyMMddTHHmmss));
      });
    });

    final yyyyMMddTHHmmssZ = '2012-01-31T12:30:59Z';
    final yyyyMMddTHHmmssZDateTime = DateTime.utc(2012, 1, 31, 12, 30, 59);
    final yyyyMMddTHHmmssZDateTimeFromString =
        DateTime.parse('2012-01-31T12:30:59Z');

    group('yyyyMMddTHHmmssZ - 2012-01-31T12:30+04:00', () {
      final instantyyyyMMddTHHmmssZ = FhirInstant(yyyyMMddTHHmmssZ);

      test('instantyyyyMMddTHHmmssZ', () {
        expect(instantyyyyMMddTHHmmssZ.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssZ.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZ.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(instantyyyyMMddTHHmmssZ.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZ.toJson(), equals(yyyyMMddTHHmmssZ));
        expect(instantyyyyMMddTHHmmssZ.toYaml(), equals(yyyyMMddTHHmmssZ));
      });
      final instantyyyyMMddTHHmmssZDateTime =
          FhirInstant(yyyyMMddTHHmmssZDateTime);

      test('instantyyyyMMddTHHmmssZDateTime', () {
        expect(instantyyyyMMddTHHmmssZDateTime.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssZDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(instantyyyyMMddTHHmmssZDateTime.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZDateTime.toJson(),
            equals(instantyyyyMMddTHHmmssZDateTime.valueDateTime.toString()));
        expect(instantyyyyMMddTHHmmssZDateTime.toYaml(),
            equals(instantyyyyMMddTHHmmssZDateTime.valueDateTime.toString()));
      });
      final instantyyyyMMddTHHmmssZDateTimeFromString =
          FhirInstant(yyyyMMddTHHmmssZDateTimeFromString);

      test('instantyyyyMMddTHHmmssZDateTimeFromString', () {
        expect(instantyyyyMMddTHHmmssZDateTimeFromString.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssZDateTimeFromString.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(instantyyyyMMddTHHmmssZDateTimeFromString.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssZDateTimeFromString.toJson(),
            equals(instantyyyyMMddTHHmmssZDateTimeFromString.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmssZDateTimeFromString.toYaml(),
            equals(instantyyyyMMddTHHmmssZDateTimeFromString.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmssZFromString =
          FhirInstant.fromString(yyyyMMddTHHmmssZ);

      FhirInstant.fromYaml(yyyyMMddTHHmmssZ);
      test('instantyyyyMMddTHHmmssZFromString', () {
        expect(instantyyyyMMddTHHmmssZFromString.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssZFromString.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(instantyyyyMMddTHHmmssZFromString.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZFromString.toJson(),
            equals(yyyyMMddTHHmmssZ));
        expect(instantyyyyMMddTHHmmssZFromString.toYaml(),
            equals(yyyyMMddTHHmmssZ));
      });
      final instantyyyyMMddTHHmmssZFromDateTime =
          FhirInstant.fromDateTime(yyyyMMddTHHmmssZDateTime);

      test('instantyyyyMMddTHHmmssZFromDateTime', () {
        expect(instantyyyyMMddTHHmmssZFromDateTime.isValid, isTrue);
        expect(
            instantyyyyMMddTHHmmssZFromDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(
            instantyyyyMMddTHHmmssZFromDateTime.toString(), equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssZFromDateTime.toJson(),
            equals(
                instantyyyyMMddTHHmmssZFromDateTime.valueDateTime.toString()));
        expect(
            instantyyyyMMddTHHmmssZFromDateTime.toYaml(),
            equals(
                instantyyyyMMddTHHmmssZFromDateTime.valueDateTime.toString()));
      });
      final instantyyyyMMddTHHmmssZFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmssZ);

      test('instantyyyyMMddTHHmmssZFromJson', () {
        expect(instantyyyyMMddTHHmmssZFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssZFromJson.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(instantyyyyMMddTHHmmssZFromJson.toString(), equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssZFromJson.toJson(), equals(yyyyMMddTHHmmssZ));
        expect(
            instantyyyyMMddTHHmmssZFromJson.toYaml(), equals(yyyyMMddTHHmmssZ));
      });
      final instantyyyyMMddTHHmmssZDateTimeFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmssZDateTime);

      test('instantyyyyMMddTHHmmssZDateTimeFromJson', () {
        expect(instantyyyyMMddTHHmmssZDateTimeFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssZDateTimeFromJson.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(instantyyyyMMddTHHmmssZDateTimeFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssZDateTimeFromJson.toJson(),
            equals(instantyyyyMMddTHHmmssZDateTimeFromJson.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmssZDateTimeFromJson.toYaml(),
            equals(instantyyyyMMddTHHmmssZDateTimeFromJson.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmssZDateTimeFromStringFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmssZDateTimeFromString);

      test('instantyyyyMMddTHHmmssZDateTimeFromStringFromJson', () {
        expect(
            instantyyyyMMddTHHmmssZDateTimeFromStringFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(instantyyyyMMddTHHmmssZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssZDateTimeFromStringFromJson.toJson(),
            equals(instantyyyyMMddTHHmmssZDateTimeFromStringFromJson
                .valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmssZDateTimeFromStringFromJson.toYaml(),
            equals(instantyyyyMMddTHHmmssZDateTimeFromStringFromJson
                .valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmssZFromUnits = FhirInstant.fromUnits(
          year: 2012,
          month: 1,
          day: 31,
          hour: 12,
          minute: 30,
          second: 59,
          timeZoneOffset: 0,
          isUtc: true);

      test('instantyyyyMMddTHHmmssZFromUnits', () {
        expect(instantyyyyMMddTHHmmssZFromUnits.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssZFromUnits.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZFromUnits.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(instantyyyyMMddTHHmmssZFromUnits.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZFromUnits.toJson(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZFromUnits.toYaml(), equals(yyyyMMdd));
      });
      final instantyyyyMMddTHHmmssZFromYaml =
          FhirInstant.fromYaml(yyyyMMddTHHmmssZ);
      test('instantyyyyMMddTHHmmssZFromYaml', () {
        expect(instantyyyyMMddTHHmmssZFromYaml.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssZFromYaml.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(instantyyyyMMddTHHmmssZFromYaml.toString(), equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssZFromYaml.toJson(), equals(yyyyMMddTHHmmssZ));
        expect(
            instantyyyyMMddTHHmmssZFromYaml.toYaml(), equals(yyyyMMddTHHmmssZ));
      });
    });

    final yyyyMMddTHHmmssZZ = '2012-01-31T12:30:59$timeZoneOffsetString';
    final yyyyMMddTHHmmssZZDateTime = DateTime(2012, 1, 31, 12, 30, 59);
    final yyyyMMddTHHmmssZZDateTimeFromString =
        DateTime.parse('2012-01-31T12:30:59$timeZoneOffsetString');

    group('yyyyMMddTHHmmssZZ - 2012-01-31T12:30:59$timeZoneOffsetString', () {
      final instantyyyyMMddTHHmmssZZ = FhirInstant(yyyyMMddTHHmmssZZ);

      test('instantyyyyMMddTHHmmssZZ', () {
        expect(instantyyyyMMddTHHmmssZZ.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssZZ.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZZ.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(instantyyyyMMddTHHmmssZZ.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZZ.toJson(), equals(yyyyMMddTHHmmssZZ));
        expect(instantyyyyMMddTHHmmssZZ.toYaml(), equals(yyyyMMddTHHmmssZZ));
      });
      final instantyyyyMMddTHHmmssZZDateTime =
          FhirInstant(yyyyMMddTHHmmssZZDateTime);

      test('instantyyyyMMddTHHmmssZZDateTime', () {
        expect(instantyyyyMMddTHHmmssZZDateTime.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssZZDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZZDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(instantyyyyMMddTHHmmssZZDateTime.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZZDateTime.toJson(),
            equals(instantyyyyMMddTHHmmssZZDateTime.valueDateTime.toString()));
        expect(instantyyyyMMddTHHmmssZZDateTime.toYaml(),
            equals(instantyyyyMMddTHHmmssZZDateTime.valueDateTime.toString()));
      });
      final instantyyyyMMddTHHmmssZZDateTimeFromString =
          FhirInstant(yyyyMMddTHHmmssZZDateTimeFromString);

      test('instantyyyyMMddTHHmmssZZDateTimeFromString', () {
        expect(instantyyyyMMddTHHmmssZZDateTimeFromString.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssZZDateTimeFromString.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime.toUtc()));
        expect(instantyyyyMMddTHHmmssZZDateTimeFromString.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssZZDateTimeFromString.toJson(),
            equals(instantyyyyMMddTHHmmssZZDateTimeFromString.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmssZZDateTimeFromString.toYaml(),
            equals(instantyyyyMMddTHHmmssZZDateTimeFromString.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmssZZFromString =
          FhirInstant.fromString(yyyyMMddTHHmmssZZ);

      test('instantyyyyMMddTHHmmssZZFromString', () {
        expect(instantyyyyMMddTHHmmssZZFromString.isValid, isTrue);
        expect(
            instantyyyyMMddTHHmmssZZFromString.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(instantyyyyMMddTHHmmssZZFromString.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZZFromString.toJson(),
            equals(yyyyMMddTHHmmssZZ));
        expect(instantyyyyMMddTHHmmssZZFromString.toYaml(),
            equals(yyyyMMddTHHmmssZZ));
      });
      final instantyyyyMMddTHHmmssZZFromDateTime =
          FhirInstant.fromDateTime(yyyyMMddTHHmmssZZDateTime);

      test('instantyyyyMMddTHHmmssZZFromDateTime', () {
        expect(instantyyyyMMddTHHmmssZZFromDateTime.isValid, isTrue);
        expect(
            instantyyyyMMddTHHmmssZZFromDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(
            instantyyyyMMddTHHmmssZZFromDateTime.toString(), equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssZZFromDateTime.toJson(),
            equals(
                instantyyyyMMddTHHmmssZZFromDateTime.valueDateTime.toString()));
        expect(
            instantyyyyMMddTHHmmssZZFromDateTime.toYaml(),
            equals(
                instantyyyyMMddTHHmmssZZFromDateTime.valueDateTime.toString()));
      });
      final instantyyyyMMddTHHmmssZZFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmssZZ);

      test('instantyyyyMMddTHHmmssZZFromJson', () {
        expect(instantyyyyMMddTHHmmssZZFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssZZFromJson.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZZFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(instantyyyyMMddTHHmmssZZFromJson.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZZFromJson.toJson(),
            equals(yyyyMMddTHHmmssZZ));
        expect(instantyyyyMMddTHHmmssZZFromJson.toYaml(),
            equals(yyyyMMddTHHmmssZZ));
      });
      final instantyyyyMMddTHHmmssZZDateTimeFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmssZZDateTime);

      test('instantyyyyMMddTHHmmssZZDateTimeFromJson', () {
        expect(instantyyyyMMddTHHmmssZZDateTimeFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssZZDateTimeFromJson.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(instantyyyyMMddTHHmmssZZDateTimeFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssZZDateTimeFromJson.toJson(),
            equals(instantyyyyMMddTHHmmssZZDateTimeFromJson.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmssZZDateTimeFromJson.toYaml(),
            equals(instantyyyyMMddTHHmmssZZDateTimeFromJson.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmssZZDateTimeFromStringFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmssZZDateTimeFromString);

      test('instantyyyyMMddTHHmmssZZDateTimeFromStringFromJson', () {
        expect(
            instantyyyyMMddTHHmmssZZDateTimeFromStringFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssZZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime.toUtc()));
        expect(instantyyyyMMddTHHmmssZZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssZZDateTimeFromStringFromJson.toJson(),
            equals(instantyyyyMMddTHHmmssZZDateTimeFromStringFromJson
                .valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmssZZDateTimeFromStringFromJson.toYaml(),
            equals(instantyyyyMMddTHHmmssZZDateTimeFromStringFromJson
                .valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmssZZFromUnits = FhirInstant.fromUnits(
          year: 2012,
          month: 1,
          day: 31,
          hour: 12,
          minute: 30,
          second: 59,
          timeZoneOffset: timeZoneOffsetInt);

      test('instantyyyyMMddTHHmmssZZFromUnits', () {
        expect(instantyyyyMMddTHHmmssZZFromUnits.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssZZFromUnits.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZZFromUnits.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(instantyyyyMMddTHHmmssZZFromUnits.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZZFromUnits.toJson(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZZFromUnits.toYaml(), equals(yyyyMMdd));
      });
      final instantyyyyMMddTHHmmssZZFromYaml =
          FhirInstant.fromYaml(yyyyMMddTHHmmssZZ);
      test('instantyyyyMMddTHHmmssZZFromYaml', () {
        expect(instantyyyyMMddTHHmmssZZFromYaml.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssZZFromYaml.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZZFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(instantyyyyMMddTHHmmssZZFromYaml.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssZZFromYaml.toJson(),
            equals(yyyyMMddTHHmmssZZ));
        expect(instantyyyyMMddTHHmmssZZFromYaml.toYaml(),
            equals(yyyyMMddTHHmmssZZ));
      });
    });

    final yyyyMMddTHHmmssSSS = '2012-01-31T12:30:59.001';
    final yyyyMMddTHHmmssSSSDateTime = DateTime(2012, 1, 31, 12, 30, 59, 1);
    final yyyyMMddTHHmmssSSSDateTimeFromString =
        DateTime.parse('2012-01-31T12:30:59.001');

    group('yyyyMMddTHHmmssSSS - 2012-01-31T12:30+04:00', () {
      final instantyyyyMMddTHHmmssSSS = FhirInstant(yyyyMMddTHHmmssSSS);

      test('instantyyyyMMddTHHmmssSSS', () {
        expect(instantyyyyMMddTHHmmssSSS.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssSSS.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSS.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(instantyyyyMMddTHHmmssSSS.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSS.toJson(), equals(yyyyMMddTHHmmssSSS));
        expect(instantyyyyMMddTHHmmssSSS.toYaml(), equals(yyyyMMddTHHmmssSSS));
      });
      final instantyyyyMMddTHHmmssSSSDateTime =
          FhirInstant(yyyyMMddTHHmmssSSSDateTime);

      test('instantyyyyMMddTHHmmssSSSDateTime', () {
        expect(instantyyyyMMddTHHmmssSSSDateTime.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssSSSDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(instantyyyyMMddTHHmmssSSSDateTime.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSDateTime.toJson(),
            equals(instantyyyyMMddTHHmmssSSSDateTime.valueDateTime.toString()));
        expect(instantyyyyMMddTHHmmssSSSDateTime.toYaml(),
            equals(instantyyyyMMddTHHmmssSSSDateTime.valueDateTime.toString()));
      });
      final instantyyyyMMddTHHmmssSSSDateTimeFromString =
          FhirInstant(yyyyMMddTHHmmssSSSDateTimeFromString);

      test('instantyyyyMMddTHHmmssSSSDateTimeFromString', () {
        expect(instantyyyyMMddTHHmmssSSSDateTimeFromString.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssSSSDateTimeFromString.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(instantyyyyMMddTHHmmssSSSDateTimeFromString.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssSSSDateTimeFromString.toJson(),
            equals(instantyyyyMMddTHHmmssSSSDateTimeFromString.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmssSSSDateTimeFromString.toYaml(),
            equals(instantyyyyMMddTHHmmssSSSDateTimeFromString.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmssSSSFromString =
          FhirInstant.fromString(yyyyMMddTHHmmssSSS);

      test('instantyyyyMMddTHHmmssSSSFromString', () {
        expect(instantyyyyMMddTHHmmssSSSFromString.isValid, isTrue);
        expect(
            instantyyyyMMddTHHmmssSSSFromString.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(
            instantyyyyMMddTHHmmssSSSFromString.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSFromString.toJson(),
            equals(yyyyMMddTHHmmssSSS));
        expect(instantyyyyMMddTHHmmssSSSFromString.toYaml(),
            equals(yyyyMMddTHHmmssSSS));
      });
      final instantyyyyMMddTHHmmssSSSFromDateTime =
          FhirInstant.fromDateTime(yyyyMMddTHHmmssSSSDateTime);

      test('instantyyyyMMddTHHmmssSSSFromDateTime', () {
        expect(instantyyyyMMddTHHmmssSSSFromDateTime.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssSSSFromDateTime.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(
            instantyyyyMMddTHHmmssSSSFromDateTime.toString(), equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssSSSFromDateTime.toJson(),
            equals(instantyyyyMMddTHHmmssSSSFromDateTime.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmssSSSFromDateTime.toYaml(),
            equals(instantyyyyMMddTHHmmssSSSFromDateTime.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmssSSSFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmssSSS);

      test('instantyyyyMMddTHHmmssSSSFromJson', () {
        expect(instantyyyyMMddTHHmmssSSSFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssSSSFromJson.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(instantyyyyMMddTHHmmssSSSFromJson.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSFromJson.toJson(),
            equals(yyyyMMddTHHmmssSSS));
        expect(instantyyyyMMddTHHmmssSSSFromJson.toYaml(),
            equals(yyyyMMddTHHmmssSSS));
      });
      final instantyyyyMMddTHHmmssSSSDateTimeFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmssSSSDateTime);

      test('instantyyyyMMddTHHmmssSSSDateTimeFromJson', () {
        expect(instantyyyyMMddTHHmmssSSSDateTimeFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssSSSDateTimeFromJson.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(instantyyyyMMddTHHmmssSSSDateTimeFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssSSSDateTimeFromJson.toJson(),
            equals(instantyyyyMMddTHHmmssSSSDateTimeFromJson.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmssSSSDateTimeFromJson.toYaml(),
            equals(instantyyyyMMddTHHmmssSSSDateTimeFromJson.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmssSSSDateTimeFromStringFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmssSSSDateTimeFromString);

      test('instantyyyyMMddTHHmmssSSSDateTimeFromStringFromJson', () {
        expect(instantyyyyMMddTHHmmssSSSDateTimeFromStringFromJson.isValid,
            isTrue);
        expect(instantyyyyMMddTHHmmssSSSDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssSSSDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(instantyyyyMMddTHHmmssSSSDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssSSSDateTimeFromStringFromJson.toJson(),
            equals(instantyyyyMMddTHHmmssSSSDateTimeFromStringFromJson
                .valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmssSSSDateTimeFromStringFromJson.toYaml(),
            equals(instantyyyyMMddTHHmmssSSSDateTimeFromStringFromJson
                .valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmssSSSFromUnits = FhirInstant.fromUnits(
          year: 2012,
          month: 1,
          day: 31,
          hour: 12,
          minute: 30,
          second: 59,
          millisecond: 1,
          timeZoneOffset: timeZoneOffsetInt);

      test('instantyyyyMMddTHHmmssSSSFromUnits', () {
        expect(instantyyyyMMddTHHmmssSSSFromUnits.isValid, isTrue);
        expect(
            instantyyyyMMddTHHmmssSSSFromUnits.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSFromUnits.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(instantyyyyMMddTHHmmssSSSFromUnits.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSFromUnits.toJson(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSFromUnits.toYaml(), equals(yyyyMMdd));
      });
      final instantyyyyMMddTHHmmssSSSFromYaml =
          FhirInstant.fromYaml(yyyyMMddTHHmmssSSS);
      test('instantyyyyMMddTHHmmssSSSFromYaml', () {
        expect(instantyyyyMMddTHHmmssSSSFromYaml.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssSSSFromYaml.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(instantyyyyMMddTHHmmssSSSFromYaml.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSFromYaml.toJson(),
            equals(yyyyMMddTHHmmssSSS));
        expect(instantyyyyMMddTHHmmssSSSFromYaml.toYaml(),
            equals(yyyyMMddTHHmmssSSS));
      });
    });

    final yyyyMMddTHHmmssSSSZ = '2012-01-31T12:30:59.010Z';
    final yyyyMMddTHHmmssSSSZDateTime =
        DateTime.utc(2012, 1, 31, 12, 30, 59, 10);
    final yyyyMMddTHHmmssSSSZDateTimeFromString =
        DateTime.parse('2012-01-31T12:30:59.010Z');

    group('yyyyMMddTHHmmssSSSZ - 2012-01-31T12:30:59.010Z', () {
      final instantyyyyMMddTHHmmssSSSZ = FhirInstant(yyyyMMddTHHmmssSSSZ);

      test('instantyyyyMMddTHHmmssSSSZ', () {
        expect(instantyyyyMMddTHHmmssSSSZ.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssSSSZ.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZ.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime.toUtc()));
        expect(instantyyyyMMddTHHmmssSSSZ.toString(), equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssSSSZ.toJson(), equals(yyyyMMddTHHmmssSSSZ));
        expect(
            instantyyyyMMddTHHmmssSSSZ.toYaml(), equals(yyyyMMddTHHmmssSSSZ));
      });
      final instantyyyyMMddTHHmmssSSSZDateTime =
          FhirInstant(yyyyMMddTHHmmssSSSZDateTime);

      test('instantyyyyMMddTHHmmssSSSZDateTime', () {
        expect(instantyyyyMMddTHHmmssSSSZDateTime.isValid, isTrue);
        expect(
            instantyyyyMMddTHHmmssSSSZDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(instantyyyyMMddTHHmmssSSSZDateTime.toString(), equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssSSSZDateTime.toJson(),
            equals(
                instantyyyyMMddTHHmmssSSSZDateTime.valueDateTime.toString()));
        expect(
            instantyyyyMMddTHHmmssSSSZDateTime.toYaml(),
            equals(
                instantyyyyMMddTHHmmssSSSZDateTime.valueDateTime.toString()));
      });
      final instantyyyyMMddTHHmmssSSSZDateTimeFromString =
          FhirInstant(yyyyMMddTHHmmssSSSZDateTimeFromString);

      test('instantyyyyMMddTHHmmssSSSZDateTimeFromString', () {
        expect(instantyyyyMMddTHHmmssSSSZDateTimeFromString.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssSSSZDateTimeFromString.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(instantyyyyMMddTHHmmssSSSZDateTimeFromString.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssSSSZDateTimeFromString.toJson(),
            equals(instantyyyyMMddTHHmmssSSSZDateTimeFromString.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmssSSSZDateTimeFromString.toYaml(),
            equals(instantyyyyMMddTHHmmssSSSZDateTimeFromString.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmssSSSZFromString =
          FhirInstant.fromString(yyyyMMddTHHmmssSSSZ);

      test('instantyyyyMMddTHHmmssSSSZFromString', () {
        expect(instantyyyyMMddTHHmmssSSSZFromString.isValid, isTrue);
        expect(
            instantyyyyMMddTHHmmssSSSZFromString.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(
            instantyyyyMMddTHHmmssSSSZFromString.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZFromString.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
        expect(instantyyyyMMddTHHmmssSSSZFromString.toYaml(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
      final instantyyyyMMddTHHmmssSSSZFromDateTime =
          FhirInstant.fromDateTime(yyyyMMddTHHmmssSSSZDateTime);
      test('instantyyyyMMddTHHmmssSSSZFromDateTime', () {
        expect(instantyyyyMMddTHHmmssSSSZFromDateTime.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssSSSZFromDateTime.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(instantyyyyMMddTHHmmssSSSZFromDateTime.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssSSSZFromDateTime.toJson(),
            equals(instantyyyyMMddTHHmmssSSSZFromDateTime.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmssSSSZFromDateTime.toYaml(),
            equals(instantyyyyMMddTHHmmssSSSZFromDateTime.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmssSSSZFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmssSSSZ);

      test('instantyyyyMMddTHHmmssSSSZFromJson', () {
        expect(instantyyyyMMddTHHmmssSSSZFromJson.isValid, isTrue);
        expect(
            instantyyyyMMddTHHmmssSSSZFromJson.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(instantyyyyMMddTHHmmssSSSZFromJson.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZFromJson.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
        expect(instantyyyyMMddTHHmmssSSSZFromJson.toYaml(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
      final instantyyyyMMddTHHmmssSSSZDateTimeFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmssSSSZDateTime);

      test('instantyyyyMMddTHHmmssSSSZDateTimeFromJson', () {
        expect(instantyyyyMMddTHHmmssSSSZDateTimeFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssSSSZDateTimeFromJson.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(instantyyyyMMddTHHmmssSSSZDateTimeFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssSSSZDateTimeFromJson.toJson(),
            equals(instantyyyyMMddTHHmmssSSSZDateTimeFromJson.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmssSSSZDateTimeFromJson.toYaml(),
            equals(instantyyyyMMddTHHmmssSSSZDateTimeFromJson.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmssSSSZDateTimeFromString);

      test('instantyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson', () {
        expect(instantyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson.isValid,
            isTrue);
        expect(instantyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(instantyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson.toJson(),
            equals(instantyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson
                .valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson.toYaml(),
            equals(instantyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson
                .valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmssSSSZFromUnits = FhirInstant.fromUnits(
          year: 2012,
          month: 1,
          day: 31,
          hour: 12,
          minute: 30,
          second: 59,
          millisecond: 10,
          timeZoneOffset: 0,
          isUtc: true);
      test('instantyyyyMMddTHHmmssSSSZFromUnits', () {
        expect(instantyyyyMMddTHHmmssSSSZFromUnits.isValid, isTrue);
        expect(
            instantyyyyMMddTHHmmssSSSZFromUnits.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZFromUnits.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(
            instantyyyyMMddTHHmmssSSSZFromUnits.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZFromUnits.toJson(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZFromUnits.toYaml(), equals(yyyyMMdd));
      });
      final instantyyyyMMddTHHmmssSSSZFromYaml =
          FhirInstant.fromYaml(yyyyMMddTHHmmssSSSZ);

      test('instantyyyyMMddTHHmmssSSSZFromYaml', () {
        expect(instantyyyyMMddTHHmmssSSSZFromYaml.isValid, isTrue);
        expect(
            instantyyyyMMddTHHmmssSSSZFromYaml.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(instantyyyyMMddTHHmmssSSSZFromYaml.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZFromYaml.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
        expect(instantyyyyMMddTHHmmssSSSZFromYaml.toYaml(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
    });

    final yyyyMMddTHHmmssSSSZZ = '2012-01-31T12:30:59.100$timeZoneOffsetString';
    final yyyyMMddTHHmmssSSSZZDateTime = DateTime(2012, 1, 31, 12, 30, 59, 100);
    final yyyyMMddTHHmmssSSSZZDateTimeFromString =
        DateTime.parse('2012-01-31T12:30:59.100$timeZoneOffsetString');

    group('yyyyMMddTHHmmssSSSZZ - 2012-01-31T12:30+04:00', () {
      final instantyyyyMMddTHHmmssSSSZZ = FhirInstant(yyyyMMddTHHmmssSSSZZ);

      test('instantyyyyMMddTHHmmssSSSZZ', () {
        expect(instantyyyyMMddTHHmmssSSSZZ.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssSSSZZ.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZZ.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(instantyyyyMMddTHHmmssSSSZZ.toString(), equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssSSSZZ.toJson(), equals(yyyyMMddTHHmmssSSSZZ));
        expect(
            instantyyyyMMddTHHmmssSSSZZ.toYaml(), equals(yyyyMMddTHHmmssSSSZZ));
      });
      final instantyyyyMMddTHHmmssSSSZZDateTime =
          FhirInstant(yyyyMMddTHHmmssSSSZZDateTime);

      test('instantyyyyMMddTHHmmssSSSZZDateTime', () {
        expect(instantyyyyMMddTHHmmssSSSZZDateTime.isValid, isTrue);
        expect(
            instantyyyyMMddTHHmmssSSSZZDateTime.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZZDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(
            instantyyyyMMddTHHmmssSSSZZDateTime.toString(), equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssSSSZZDateTime.toJson(),
            equals(
                instantyyyyMMddTHHmmssSSSZZDateTime.valueDateTime.toString()));
        expect(
            instantyyyyMMddTHHmmssSSSZZDateTime.toYaml(),
            equals(
                instantyyyyMMddTHHmmssSSSZZDateTime.valueDateTime.toString()));
      });
      final instantyyyyMMddTHHmmssSSSZZDateTimeFromString =
          FhirInstant(yyyyMMddTHHmmssSSSZZDateTimeFromString);

      test('instantyyyyMMddTHHmmssSSSZZDateTimeFromString', () {
        expect(instantyyyyMMddTHHmmssSSSZZDateTimeFromString.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssSSSZZDateTimeFromString.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime.toUtc()));
        expect(instantyyyyMMddTHHmmssSSSZZDateTimeFromString.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssSSSZZDateTimeFromString.toJson(),
            equals(instantyyyyMMddTHHmmssSSSZZDateTimeFromString.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmssSSSZZDateTimeFromString.toYaml(),
            equals(instantyyyyMMddTHHmmssSSSZZDateTimeFromString.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmssSSSZZFromString =
          FhirInstant.fromString(yyyyMMddTHHmmssSSSZZ);

      test('instantyyyyMMddTHHmmssSSSZZFromString', () {
        expect(instantyyyyMMddTHHmmssSSSZZFromString.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssSSSZZFromString.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(
            instantyyyyMMddTHHmmssSSSZZFromString.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZZFromString.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(instantyyyyMMddTHHmmssSSSZZFromString.toYaml(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
      final instantyyyyMMddTHHmmssSSSZZFromDateTime =
          FhirInstant.fromDateTime(yyyyMMddTHHmmssSSSZZDateTime);

      test('instantyyyyMMddTHHmmssSSSZZFromDateTime', () {
        expect(instantyyyyMMddTHHmmssSSSZZFromDateTime.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssSSSZZFromDateTime.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(instantyyyyMMddTHHmmssSSSZZFromDateTime.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssSSSZZFromDateTime.toJson(),
            equals(instantyyyyMMddTHHmmssSSSZZFromDateTime.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmssSSSZZFromDateTime.toYaml(),
            equals(instantyyyyMMddTHHmmssSSSZZFromDateTime.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmssSSSZZFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmssSSSZZ);

      test('instantyyyyMMddTHHmmssSSSZZFromJson', () {
        expect(instantyyyyMMddTHHmmssSSSZZFromJson.isValid, isTrue);
        expect(
            instantyyyyMMddTHHmmssSSSZZFromJson.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZZFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(
            instantyyyyMMddTHHmmssSSSZZFromJson.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZZFromJson.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(instantyyyyMMddTHHmmssSSSZZFromJson.toYaml(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
      final instantyyyyMMddTHHmmssSSSZZDateTimeFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmssSSSZZDateTime);

      test('instantyyyyMMddTHHmmssSSSZZDateTimeFromJson', () {
        expect(instantyyyyMMddTHHmmssSSSZZDateTimeFromJson.isValid, isTrue);
        expect(instantyyyyMMddTHHmmssSSSZZDateTimeFromJson.valueString,
            equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(instantyyyyMMddTHHmmssSSSZZDateTimeFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssSSSZZDateTimeFromJson.toJson(),
            equals(instantyyyyMMddTHHmmssSSSZZDateTimeFromJson.valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmssSSSZZDateTimeFromJson.toYaml(),
            equals(instantyyyyMMddTHHmmssSSSZZDateTimeFromJson.valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson =
          FhirInstant.fromJson(yyyyMMddTHHmmssSSSZZDateTimeFromString);

      test('instantyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson', () {
        expect(instantyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson.isValid,
            isTrue);
        expect(
            instantyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime.toUtc()));
        expect(instantyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            instantyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson.toJson(),
            equals(instantyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson
                .valueDateTime
                .toString()));
        expect(
            instantyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson.toYaml(),
            equals(instantyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson
                .valueDateTime
                .toString()));
      });
      final instantyyyyMMddTHHmmssSSSZZFromUnits = FhirInstant.fromUnits(
          year: 2012,
          month: 1,
          day: 31,
          hour: 12,
          minute: 30,
          second: 59,
          millisecond: 100,
          timeZoneOffset: timeZoneOffsetInt);

      test('instantyyyyMMddTHHmmssSSSZZFromUnits', () {
        expect(instantyyyyMMddTHHmmssSSSZZFromUnits.isValid, isTrue);
        expect(
            instantyyyyMMddTHHmmssSSSZZFromUnits.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZZFromUnits.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(
            instantyyyyMMddTHHmmssSSSZZFromUnits.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZZFromUnits.toJson(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZZFromUnits.toYaml(), equals(yyyyMMdd));
      });
      final instantyyyyMMddTHHmmssSSSZZFromYaml =
          FhirInstant.fromYaml(yyyyMMddTHHmmssSSSZZ);
      test('instantyyyyMMddTHHmmssSSSZZFromYaml', () {
        expect(instantyyyyMMddTHHmmssSSSZZFromYaml.isValid, isTrue);
        expect(
            instantyyyyMMddTHHmmssSSSZZFromYaml.valueString, equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZZFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(
            instantyyyyMMddTHHmmssSSSZZFromYaml.toString(), equals(yyyyMMdd));
        expect(instantyyyyMMddTHHmmssSSSZZFromYaml.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(instantyyyyMMddTHHmmssSSSZZFromYaml.toYaml(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
    });

    final instant = '2012-01-31T12:30:59.111$timeZoneOffsetString';
    final instantDateTime = DateTime(2012, 1, 31, 12, 30, 59, 111);
    final instantDateTimeFromString =
        DateTime.parse('2012-01-31T12:30:59.111$timeZoneOffsetString');

    group('instantInstant - 2012-01-31T12:30+04:00', () {
      final instantInstant = FhirInstant(instant);
      test('instantInstant', () {
        expect(instantInstant.isValid, isTrue);
        expect(instantInstant.valueString, equals(yyyyMMdd));
        expect(instantInstant.valueDateTime, equals(instantDateTime));
        expect(instantInstant.toString(), equals(yyyyMMdd));
        expect(instantInstant.toJson(), equals(instant));
        expect(instantInstant.toYaml(), equals(instant));
      });
      final instantInstantDateTime = FhirInstant(instantDateTime);

      test('instantInstantDateTime', () {
        expect(instantInstantDateTime.isValid, isTrue);
        expect(instantInstantDateTime.valueString, equals(yyyyMMdd));
        expect(instantInstantDateTime.valueDateTime, equals(instantDateTime));
        expect(instantInstantDateTime.toString(), equals(yyyyMMdd));
        expect(instantInstantDateTime.toJson(),
            equals(instantInstantDateTime.valueDateTime.toString()));
        expect(instantInstantDateTime.toYaml(),
            equals(instantInstantDateTime.valueDateTime.toString()));
      });
      final instantInstantDateTimeFromString =
          FhirInstant(instantDateTimeFromString);

      test('instantInstantDateTimeFromString', () {
        expect(instantInstantDateTimeFromString.isValid, isTrue);
        expect(instantInstantDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(instantInstantDateTimeFromString.valueDateTime,
            equals(instantDateTime.toUtc()));
        expect(instantInstantDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(instantInstantDateTimeFromString.toJson(),
            equals(instantInstantDateTimeFromString.valueDateTime.toString()));
        expect(instantInstantDateTimeFromString.toYaml(),
            equals(instantInstantDateTimeFromString.valueDateTime.toString()));
      });
      final instantInstantFromString = FhirInstant.fromString(instant);

      test('instantInstantFromString', () {
        expect(instantInstantFromString.isValid, isTrue);
        expect(instantInstantFromString.valueString, equals(yyyyMMdd));
        expect(instantInstantFromString.valueDateTime, equals(instantDateTime));
        expect(instantInstantFromString.toString(), equals(yyyyMMdd));
        expect(instantInstantFromString.toJson(), equals(instant));
        expect(instantInstantFromString.toYaml(), equals(instant));
      });
      final instantInstantFromDateTime =
          FhirInstant.fromDateTime(instantDateTime);
      test('instantInstantFromDateTime', () {
        expect(instantInstantFromDateTime.isValid, isTrue);
        expect(instantInstantFromDateTime.valueString, equals(yyyyMMdd));
        expect(
            instantInstantFromDateTime.valueDateTime, equals(instantDateTime));
        expect(instantInstantFromDateTime.toString(), equals(yyyyMMdd));
        expect(instantInstantFromDateTime.toJson(),
            equals(instantInstantFromDateTime.valueDateTime.toString()));
        expect(instantInstantFromDateTime.toYaml(),
            equals(instantInstantFromDateTime.valueDateTime.toString()));
      });
      final instantInstantFromJson = FhirInstant.fromJson(instant);

      test('instantInstantFromJson', () {
        expect(instantInstantFromJson.isValid, isTrue);
        expect(instantInstantFromJson.valueString, equals(yyyyMMdd));
        expect(instantInstantFromJson.valueDateTime, equals(instantDateTime));
        expect(instantInstantFromJson.toString(), equals(yyyyMMdd));
        expect(instantInstantFromJson.toJson(), equals(instant));
        expect(instantInstantFromJson.toYaml(), equals(instant));
      });
      final instantInstantDateTimeFromJson =
          FhirInstant.fromJson(instantDateTime);

      test('instantInstantDateTimeFromJson', () {
        expect(instantInstantDateTimeFromJson.isValid, isTrue);
        expect(instantInstantDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(instantInstantDateTimeFromJson.valueDateTime,
            equals(instantDateTime));
        expect(instantInstantDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(instantInstantDateTimeFromJson.toJson(),
            equals(instantInstantDateTimeFromJson.valueDateTime.toString()));
        expect(instantInstantDateTimeFromJson.toYaml(),
            equals(instantInstantDateTimeFromJson.valueDateTime.toString()));
      });
      final instantInstantDateTimeFromStringFromJson =
          FhirInstant.fromJson(instantDateTimeFromString);

      test('instantInstantDateTimeFromStringFromJson', () {
        expect(instantInstantDateTimeFromStringFromJson.isValid, isTrue);
        expect(instantInstantDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(instantInstantDateTimeFromStringFromJson.valueDateTime,
            equals(instantDateTime.toUtc()));
        expect(instantInstantDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            instantInstantDateTimeFromStringFromJson.toJson(),
            equals(instantInstantDateTimeFromStringFromJson.valueDateTime
                .toString()));
        expect(
            instantInstantDateTimeFromStringFromJson.toYaml(),
            equals(instantInstantDateTimeFromStringFromJson.valueDateTime
                .toString()));
      });
      final instantInstantFromUnits = FhirInstant.fromUnits(
          year: 2012,
          month: 1,
          day: 31,
          hour: 12,
          minute: 30,
          second: 59,
          timeZoneOffset: timeZoneOffsetInt);

      test('instantInstantFromUnits', () {
        expect(instantInstantFromUnits.isValid, isTrue);
        expect(instantInstantFromUnits.valueString, equals(yyyyMMdd));
        expect(instantInstantFromUnits.valueDateTime, equals(yyyyMMddDateTime));
        expect(instantInstantFromUnits.toString(), equals(yyyyMMdd));
        expect(instantInstantFromUnits.toJson(), equals(yyyyMMdd));
        expect(instantInstantFromUnits.toYaml(), equals(yyyyMMdd));
      });
      final instantInstantFromYaml = FhirInstant.fromYaml(instant);
      test('instantInstantFromYaml', () {
        expect(instantInstantFromYaml.isValid, isTrue);
        expect(instantInstantFromYaml.valueString, equals(yyyyMMdd));
        expect(instantInstantFromYaml.valueDateTime, equals(instantDateTime));
        expect(instantInstantFromYaml.toString(), equals(yyyyMMdd));
        expect(instantInstantFromYaml.toJson(), equals(instant));
        expect(instantInstantFromYaml.toYaml(), equals(instant));
      });
    });

    final instantTime = '2012-01-31T12:30:59.111111$timeZoneOffsetString';
    final instantTimeDateTime = DateTime(2012, 1, 31, 12, 30, 59, 111, 111);
    final instantTimeDateTimeFromString =
        DateTime.parse('2012-01-31T12:30:59.111111$timeZoneOffsetString');

    print('************************************************************');
    group('DateTime - 2012-01-31T12:30+04:00', () {
      final instantDateTime = FhirInstant(instantTime);

      test('instantDateTime', () {
        print('************************************************************');
        expect(instantDateTime.isValid, isTrue);
        expect(instantDateTime.valueString, equals(yyyyMMdd));
        expect(
            instantDateTime.valueDateTime, equals(instantTimeDateTime.toUtc()));
        expect(instantDateTime.toString(), equals(yyyyMMdd));
        expect(instantDateTime.toJson(), equals(instantTime));
        expect(instantDateTime.toYaml(), equals(instantTime));
      });
      final instantDateTimeDateTime = FhirInstant(instantTimeDateTime);

      test('instantDateTimeDateTime', () {
        expect(instantDateTimeDateTime.isValid, isTrue);
        expect(instantDateTimeDateTime.valueString, equals(yyyyMMdd));
        expect(
            instantDateTimeDateTime.valueDateTime, equals(instantTimeDateTime));
        expect(instantDateTimeDateTime.toString(), equals(yyyyMMdd));
        expect(instantDateTimeDateTime.toJson(),
            equals(instantDateTimeDateTime.valueDateTime.toString()));
        expect(instantDateTimeDateTime.toYaml(),
            equals(instantDateTimeDateTime.valueDateTime.toString()));
      });
      final instantDateTimeDateTimeFromString =
          FhirInstant(instantTimeDateTimeFromString);

      test('instantDateTimeDateTimeFromString', () {
        expect(instantDateTimeDateTimeFromString.isValid, isTrue);
        expect(instantDateTimeDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(instantDateTimeDateTimeFromString.valueDateTime,
            equals(instantTimeDateTime.toUtc()));
        expect(instantDateTimeDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(instantDateTimeDateTimeFromString.toJson(),
            equals(instantDateTimeDateTimeFromString.valueDateTime.toString()));
        expect(instantDateTimeDateTimeFromString.toYaml(),
            equals(instantDateTimeDateTimeFromString.valueDateTime.toString()));
      });
      final instantDateTimeFromString = FhirInstant.fromString(instantTime);

      test('instantDateTimeFromString', () {
        expect(instantDateTimeFromString.isValid, isTrue);
        expect(instantDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(instantDateTimeFromString.valueDateTime,
            equals(instantTimeDateTime.toUtc()));
        expect(instantDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(instantDateTimeFromString.toJson(), equals(instantTime));
        expect(instantDateTimeFromString.toYaml(), equals(instantTime));
      });
      final instantDateTimeFromDateTime =
          FhirInstant.fromDateTime(instantTimeDateTime);

      test('instantDateTimeFromDateTime', () {
        expect(instantDateTimeFromDateTime.isValid, isTrue);
        expect(instantDateTimeFromDateTime.valueString, equals(yyyyMMdd));
        expect(instantDateTimeFromDateTime.valueDateTime,
            equals(instantTimeDateTime));
        expect(instantDateTimeFromDateTime.toString(), equals(yyyyMMdd));
        expect(instantDateTimeFromDateTime.toJson(),
            equals(instantDateTimeFromDateTime.valueDateTime.toString()));
        expect(instantDateTimeFromDateTime.toYaml(),
            equals(instantDateTimeFromDateTime.valueDateTime.toString()));
      });
      final instantDateTimeFromJson = FhirInstant.fromJson(instantTime);

      test('instantDateTimeFromJson', () {
        expect(instantDateTimeFromJson.isValid, isTrue);
        expect(instantDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(instantDateTimeFromJson.valueDateTime,
            equals(instantTimeDateTime.toUtc()));
        expect(instantDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(instantDateTimeFromJson.toJson(), equals(instantTime));
        expect(instantDateTimeFromJson.toYaml(), equals(instantTime));
      });
      final instantDateTimeDateTimeFromJson = FhirInstant.fromJson(
          instantDateTimeFromJson.valueDateTime.toString());

      test('instantDateTimeDateTimeFromJson', () {
        expect(instantDateTimeDateTimeFromJson.isValid, isTrue);
        expect(instantDateTimeDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(instantDateTimeDateTimeFromJson.valueDateTime,
            equals(instantTimeDateTime.toUtc()));
        expect(instantDateTimeDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(instantDateTimeDateTimeFromJson.toJson(),
            equals(instantDateTimeDateTimeFromJson.valueDateTime.toString()));
        expect(instantDateTimeDateTimeFromJson.toYaml(),
            equals(instantDateTimeDateTimeFromJson.valueDateTime.toString()));
      });
      final instantDateTimeDateTimeFromStringFromJson =
          FhirInstant.fromJson(instantTimeDateTimeFromString);

      test('instantDateTimeDateTimeFromStringFromJson', () {
        expect(instantDateTimeDateTimeFromStringFromJson.isValid, isTrue);
        expect(instantDateTimeDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(instantDateTimeDateTimeFromStringFromJson.valueDateTime,
            equals(instantTimeDateTime.toUtc()));
        expect(instantDateTimeDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            instantDateTimeDateTimeFromStringFromJson.toJson(),
            equals(instantDateTimeDateTimeFromStringFromJson.valueDateTime
                .toString()));
        expect(
            instantDateTimeDateTimeFromStringFromJson.toYaml(),
            equals(instantDateTimeDateTimeFromStringFromJson.valueDateTime
                .toString()));
      });
      final instantDateTimeFromUnits = FhirInstant.fromUnits(
          year: 2012,
          month: 1,
          day: 31,
          hour: 12,
          minute: 30,
          second: 59,
          millisecond: 111,
          timeZoneOffset: 0);

      test('instantDateTimeFromUnits', () {
        expect(instantDateTimeFromUnits.isValid, isTrue);
        expect(instantDateTimeFromUnits.valueString, equals(yyyyMMdd));
        expect(
            instantDateTimeFromUnits.valueDateTime, equals(yyyyMMddDateTime));
        expect(instantDateTimeFromUnits.toString(), equals(yyyyMMdd));
        expect(instantDateTimeFromUnits.toJson(), equals(yyyyMMdd));
        expect(instantDateTimeFromUnits.toYaml(), equals(yyyyMMdd));
      });
      final instantDateTimeFromYaml = FhirInstant.fromYaml(instantTime);
      test('instantDateTimeFromYaml', () {
        expect(instantDateTimeFromYaml.isValid, isTrue);
        expect(instantDateTimeFromYaml.valueString, equals(yyyyMMdd));
        expect(instantDateTimeFromYaml.valueDateTime,
            equals(instantTimeDateTime.toUtc()));
        expect(instantDateTimeFromYaml.toString(), equals(yyyyMMdd));
        expect(instantDateTimeFromYaml.toJson(), equals(instantTime));
        expect(instantDateTimeFromYaml.toYaml(), equals(instantTime));
      });
    });
  });
}

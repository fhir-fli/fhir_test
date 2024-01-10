import 'package:fhir/primitive_types/date.dart';
import 'package:fhir/primitive_types/date_time_precision.dart';
import 'package:test/test.dart';

void main() {
  group('FhirDate Tests', () {
    final timezoneOffsetInt = DateTime.now().timeZoneOffset.inHours;
    final timezoneOffsetString = timezoneOffsetInt < 0
        ? '-${timezoneOffsetInt.abs().toString().padLeft(2, '0')}:00'
        : '+${timezoneOffsetInt.abs().toString().padLeft(2, '0')}:00';
    group('yyyy - 2012', () {
      final yyyy = '2012';
      final yyyyDateTime = DateTime(2012);
      final yyyyDateTimeFromString = DateTime.parse('2012-01-01');

      final dateyyyy = FhirDate(yyyy);
      test('dateyyyy', () {
        expect(dateyyyy.isValid, isTrue);
        expect(dateyyyy.valueString, equals(yyyy));
        expect(dateyyyy.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyy.toString(), equals(yyyy));
        expect(dateyyyy.toJson(), equals(yyyy));
        expect(dateyyyy.toYaml(), equals(yyyy));
      });

      // TODO(Dokotela): reasonable that this test fails without specifying
      // precision in the constructor?
      final dateyyyyDateTime = FhirDate(yyyyDateTime);
      test('dateyyyyDateTime', () {
        expect(dateyyyyDateTime.isValid, isTrue);
        expect(dateyyyyDateTime.valueString, equals('$yyyy-01-01'));
        expect(dateyyyyDateTime.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyDateTime.toString(), equals('$yyyy-01-01'));
        expect(dateyyyyDateTime.toJson(), equals('$yyyy-01-01 00:00:00.000'));
        expect(dateyyyyDateTime.toYaml(), equals('$yyyy-01-01 00:00:00.000'));
      });
      final dateyyyyDateTimeFromString =
          FhirDate(yyyyDateTimeFromString, DateTimePrecision.yyyy);
      test('dateyyyyDateTimeFromString', () {
        expect(dateyyyyDateTimeFromString.isValid, isTrue);
        expect(dateyyyyDateTimeFromString.valueString, equals(yyyy));
        expect(dateyyyyDateTimeFromString.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyDateTimeFromString.toString(), equals(yyyy));
        expect(dateyyyyDateTimeFromString.toJson(), equals(yyyy));
        expect(dateyyyyDateTimeFromString.toYaml(), equals(yyyy));
      });
      final dateyyyyFromString = FhirDate.fromString(yyyy);
      test('dateyyyyFromString', () {
        expect(dateyyyyFromString.isValid, isTrue);
        expect(dateyyyyFromString.valueString, equals(yyyy));
        expect(dateyyyyFromString.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromString.toString(), equals(yyyy));
        expect(dateyyyyFromString.toJson(), equals(yyyy));
        expect(dateyyyyFromString.toYaml(), equals(yyyy));
      });
      final dateyyyyFromDateTime =
          FhirDate.fromDateTime(yyyyDateTime, DateTimePrecision.yyyy);
      test('dateyyyyFromDateTime', () {
        expect(dateyyyyFromDateTime.isValid, isTrue);
        expect(dateyyyyFromDateTime.valueString, equals(yyyy));
        expect(dateyyyyFromDateTime.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromDateTime.toString(), equals(yyyy));
        expect(dateyyyyFromDateTime.toJson(), equals(yyyy));
        expect(dateyyyyFromDateTime.toYaml(), equals(yyyy));
      });
      final dateyyyyFromJson = FhirDate.fromJson(yyyy);
      test('dateyyyyFromJson', () {
        expect(dateyyyyFromJson.isValid, isTrue);
        expect(dateyyyyFromJson.valueString, equals(yyyy));
        expect(dateyyyyFromJson.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromJson.toString(), equals(yyyy));
        expect(dateyyyyFromJson.toJson(), equals(yyyy));
        expect(dateyyyyFromJson.toYaml(), equals(yyyy));
      });
      final dateyyyyDateTimeFromJson =
          FhirDate.fromJson(yyyyDateTime, DateTimePrecision.yyyy);
      test('dateyyyyDateTimeFromJson', () {
        expect(dateyyyyDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyDateTimeFromJson.valueString, equals(yyyy));
        expect(dateyyyyDateTimeFromJson.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyDateTimeFromJson.toString(), equals(yyyy));
        expect(dateyyyyDateTimeFromJson.toJson(), equals(yyyy));
        expect(dateyyyyDateTimeFromJson.toYaml(), equals(yyyy));
      });
      final dateyyyyDateTimeFromStringFromJson =
          FhirDate.fromJson(yyyyDateTimeFromString);
      test('dateyyyyDateTimeFromStringFromJson', () {
        expect(dateyyyyDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyDateTimeFromStringFromJson.valueString,
            equals('$yyyy-01-01'));
        expect(dateyyyyDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyDateTime));
        expect(dateyyyyDateTimeFromStringFromJson.toString(),
            equals('$yyyy-01-01'));
        expect(dateyyyyDateTimeFromStringFromJson.toJson(),
            equals('$yyyy-01-01 00:00:00.000'));
        expect(dateyyyyDateTimeFromStringFromJson.toYaml(),
            equals('$yyyy-01-01 00:00:00.000'));
      });
      final dateyyyyFromUnits = FhirDate.fromUnits(year: 2012);
      test('dateyyyyFromUnits', () {
        expect(dateyyyyFromUnits.isValid, isTrue);
        expect(dateyyyyFromUnits.valueString, equals(yyyy));
        expect(dateyyyyFromUnits.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromUnits.toString(), equals(yyyy));
        expect(dateyyyyFromUnits.toJson(), equals(yyyy));
        expect(dateyyyyFromUnits.toYaml(), equals(yyyy));
      });

      final dateyyyyFromYaml = FhirDate.fromYaml(yyyy);
      test('dateyyyyFromYaml', () {
        expect(dateyyyyFromYaml.isValid, isTrue);
        expect(dateyyyyFromYaml.valueString, equals(yyyy));
        expect(dateyyyyFromYaml.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromYaml.toString(), equals(yyyy));
        expect(dateyyyyFromYaml.toJson(), equals(yyyy));
        expect(dateyyyyFromYaml.toYaml(), equals(yyyy));
      });
    });
    final yyyyMM = '2012-01';
    final yyyyMMDateTime = DateTime(2012, 1);
    final yyyyMMDateTimeFromString = DateTime.parse('2012-01-01');

    group('yyyyMM - 2012-01', () {
      final dateyyyyMM = FhirDate(yyyyMM);
      test('dateyyyyMM', () {
        expect(dateyyyyMM.isValid, isTrue);
        expect(dateyyyyMM.valueString, equals(yyyyMM));
        expect(dateyyyyMM.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMM.toString(), equals(yyyyMM));
        expect(dateyyyyMM.toJson(), equals(yyyyMM));
        expect(dateyyyyMM.toYaml(), equals(yyyyMM));
      });

      // TODO(Dokotela): reasonable that this test fails without specifying precision
      // in the constructor?
      final dateyyyyMMDateTime = FhirDate(yyyyMMDateTime);
      test(
          'dateyyyyMMDateTime - no precision given, assume full DateTime input',
          () {
        expect(dateyyyyMMDateTime.isValid, isTrue);
        expect(dateyyyyMMDateTime.valueString, equals('$yyyyMM-01'));
        expect(dateyyyyMMDateTime.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMDateTime.toString(), equals('$yyyyMM-01'));
        expect(dateyyyyMMDateTime.toJson(), equals(yyyyMMDateTime.toString()));
        expect(dateyyyyMMDateTime.toYaml(), equals(yyyyMMDateTime.toString()));
      });
      final dateyyyyMMDateTimeFromString =
          FhirDate(yyyyMMDateTimeFromString, DateTimePrecision.yyyy_MM);
      test('dateyyyyMMDateTimeFromString', () {
        expect(dateyyyyMMDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMDateTimeFromString.valueString, equals(yyyyMM));
        expect(
            dateyyyyMMDateTimeFromString.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMDateTimeFromString.toString(), equals(yyyyMM));
        expect(dateyyyyMMDateTimeFromString.toJson(), equals(yyyyMM));
        expect(dateyyyyMMDateTimeFromString.toYaml(), equals(yyyyMM));
      });
      final dateyyyyMMFromString = FhirDate.fromString(yyyyMM);
      test('dateyyyyMMFromString', () {
        expect(dateyyyyMMFromString.isValid, isTrue);
        expect(dateyyyyMMFromString.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromString.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromString.toString(), equals(yyyyMM));
        expect(dateyyyyMMFromString.toJson(), equals(yyyyMM));
        expect(dateyyyyMMFromString.toYaml(), equals(yyyyMM));
      });
      final dateyyyyMMFromDateTime =
          FhirDate.fromDateTime(yyyyMMDateTime, DateTimePrecision.yyyy_MM);
      test('dateyyyyMMFromDateTime', () {
        expect(dateyyyyMMFromDateTime.isValid, isTrue);
        expect(dateyyyyMMFromDateTime.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromDateTime.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromDateTime.toString(), equals(yyyyMM));
        expect(dateyyyyMMFromDateTime.toJson(), equals(yyyyMM));
        expect(dateyyyyMMFromDateTime.toYaml(), equals(yyyyMM));
      });
      final dateyyyyMMFromJson = FhirDate.fromJson(yyyyMM);
      test('dateyyyyMMFromJson', () {
        expect(dateyyyyMMFromJson.isValid, isTrue);
        expect(dateyyyyMMFromJson.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromJson.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromJson.toString(), equals(yyyyMM));
        expect(dateyyyyMMFromJson.toJson(), equals(yyyyMM));
        expect(dateyyyyMMFromJson.toYaml(), equals(yyyyMM));
      });
      final dateyyyyMMDateTimeFromJson = FhirDate.fromJson(yyyyMMDateTime);
      test('dateyyyyMMDateTimeFromJson', () {
        expect(dateyyyyMMDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMDateTimeFromJson.valueString, equals('$yyyyMM-01'));
        expect(
            dateyyyyMMDateTimeFromJson.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMDateTimeFromJson.toString(), equals('$yyyyMM-01'));
        expect(dateyyyyMMDateTimeFromJson.toJson(),
            equals(yyyyMMDateTime.toString()));
        expect(dateyyyyMMDateTimeFromJson.toYaml(),
            equals(yyyyMMDateTime.toString()));
      });
      final dateyyyyMMDateTimeFromStringFromJson = FhirDate.fromJson(
          yyyyMMDateTimeFromString, DateTimePrecision.yyyy_MM);
      test('dateyyyyMMDateTimeFromStringFromJson', () {
        expect(dateyyyyMMDateTimeFromStringFromJson.isValid, isTrue);
        expect(
            dateyyyyMMDateTimeFromStringFromJson.valueString, equals(yyyyMM));
        expect(dateyyyyMMDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMDateTime));
        expect(dateyyyyMMDateTimeFromStringFromJson.toString(), equals(yyyyMM));
        expect(dateyyyyMMDateTimeFromStringFromJson.toJson(), equals(yyyyMM));
        expect(dateyyyyMMDateTimeFromStringFromJson.toYaml(), equals(yyyyMM));
      });
      final dateyyyyMMFromUnits = FhirDate.fromUnits(year: 2012, month: 1);
      test('dateyyyyMMFromUnits', () {
        expect(dateyyyyMMFromUnits.isValid, isTrue);
        expect(dateyyyyMMFromUnits.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromUnits.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromUnits.toString(), equals(yyyyMM));
        expect(dateyyyyMMFromUnits.toJson(), equals(yyyyMM));
        expect(dateyyyyMMFromUnits.toYaml(), equals(yyyyMM));
      });
      final dateyyyyMMFromYaml = FhirDate.fromYaml(yyyyMM);
      test('dateyyyyMMFromYaml', () {
        expect(dateyyyyMMFromYaml.isValid, isTrue);
        expect(dateyyyyMMFromYaml.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromYaml.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromYaml.toString(), equals(yyyyMM));
        expect(dateyyyyMMFromYaml.toJson(), equals(yyyyMM));
        expect(dateyyyyMMFromYaml.toYaml(), equals(yyyyMM));
      });
    });

    final yyyyMMdd = '2012-01-31';
    final yyyyMMddDateTime = DateTime(2012, 1, 31);
    final yyyyMMddDateTimeFromString = DateTime.parse('2012-01-31');

    group('yyyyMMdd - 2012-01-31', () {
      final dateyyyyMMdd = FhirDate(yyyyMMdd);

      test('dateyyyyMMdd', () {
        expect(dateyyyyMMdd.isValid, isTrue);
        expect(dateyyyyMMdd.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMdd.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMdd.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMdd.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMdd.toYaml(), equals(yyyyMMdd));
      });
      final dateyyyyMMddDateTime = FhirDate(yyyyMMddDateTime);

      test(
          'dateyyyyMMddDateTime - no precision given, assumes full dateTime input',
          () {
        expect(dateyyyyMMddDateTime.isValid, isTrue);
        expect(dateyyyyMMddDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddDateTime.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddDateTime.toString(), equals(yyyyMMdd));
        expect(
            dateyyyyMMddDateTime.toJson(), equals('${yyyyMMdd} 00:00:00.000'));
        expect(
            dateyyyyMMddDateTime.toYaml(), equals('${yyyyMMdd} 00:00:00.000'));
      });
      final dateyyyyMMddDateTimeFromString =
          FhirDate(yyyyMMddDateTimeFromString);

      test(
          'dateyyyyMMddDateTimeFromString - no precision given, have to assume full DateTime input',
          () {
        expect(dateyyyyMMddDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddDateTimeFromString.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddDateTimeFromString.toJson(),
            equals('${yyyyMMdd} 00:00:00.000'));
        expect(dateyyyyMMddDateTimeFromString.toYaml(),
            equals('${yyyyMMdd} 00:00:00.000'));
      });
      final dateyyyyMMddFromString = FhirDate.fromString(yyyyMMdd);

      test('dateyyyyMMddFromString', () {
        expect(dateyyyyMMddFromString.isValid, isTrue);
        expect(dateyyyyMMddFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddFromString.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromString.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromString.toYaml(), equals(yyyyMMdd));
      });
      final dateyyyyMMddFromDateTime = FhirDate.fromDateTime(yyyyMMddDateTime);

      test('dateyyyyMMddFromDateTime', () {
        expect(dateyyyyMMddFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddFromDateTime.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddFromDateTime.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromDateTime.toJson(),
            equals('${yyyyMMdd} 00:00:00.000'));
        expect(dateyyyyMMddFromDateTime.toYaml(),
            equals('${yyyyMMdd} 00:00:00.000'));
      });
      final dateyyyyMMddFromJson = FhirDate.fromJson(yyyyMMdd);

      test('dateyyyyMMddFromJson', () {
        expect(dateyyyyMMddFromJson.isValid, isTrue);
        expect(dateyyyyMMddFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddFromJson.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromJson.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromJson.toYaml(), equals(yyyyMMdd));
      });
      final dateyyyyMMddDateTimeFromJson = FhirDate.fromJson(yyyyMMddDateTime);

      test('dateyyyyMMddDateTimeFromJson', () {
        expect(dateyyyyMMddDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddDateTimeFromJson.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddDateTimeFromJson.toJson(),
            equals('${yyyyMMdd} 00:00:00.000'));
        expect(dateyyyyMMddDateTimeFromJson.toYaml(),
            equals('${yyyyMMdd} 00:00:00.000'));
      });
      final dateyyyyMMddDateTimeFromStringFromJson =
          FhirDate.fromJson(yyyyMMddDateTimeFromString);

      test('dateyyyyMMddDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(dateyyyyMMddDateTimeFromStringFromJson.toJson(),
            equals('${yyyyMMdd} 00:00:00.000'));
        expect(dateyyyyMMddDateTimeFromStringFromJson.toYaml(),
            equals('${yyyyMMdd} 00:00:00.000'));
      });
      final dateyyyyMMddFromUnits =
          FhirDate.fromUnits(year: 2012, month: 1, day: 31);

      test('dateyyyyMMddFromUnits', () {
        expect(dateyyyyMMddFromUnits.isValid, isTrue);
        expect(dateyyyyMMddFromUnits.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddFromUnits.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromUnits.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromUnits.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromUnits.toYaml(), equals(yyyyMMdd));
      });
      final dateyyyyMMddFromYaml = FhirDate.fromYaml(yyyyMMdd);
      test('dateyyyyMMddFromYaml', () {
        expect(dateyyyyMMddFromYaml.isValid, isTrue);
        expect(dateyyyyMMddFromYaml.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddFromYaml.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromYaml.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromYaml.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromYaml.toYaml(), equals(yyyyMMdd));
      });
    });

    final yyyyMMddTZ = '2012-01-31TZ';
    final yyyyMMddTZDateTime = DateTime.utc(2012, 1, 31);
    final yyyyMMddTZDateTimeFromString = DateTime.parse('2012-01-31')
        .toUtc()
        .add(Duration(hours: DateTime.now().timeZoneOffset.inHours));

    group('yyyyMMddTZ - 2012-01-31T', () {
      // TODO(Dokotela): reasonable that this truncates the output?
      final dateyyyyMMddTZ = FhirDate(yyyyMMddTZ);

      test('dateyyyyMMddTZ', () {
        expect(dateyyyyMMddTZ.isValid, isTrue);
        expect(dateyyyyMMddTZ.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZ.valueDateTime, equals(yyyyMMddTZDateTime));
        expect(dateyyyyMMddTZ.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZ.toJson(), equals(yyyyMMddTZ));
        expect(dateyyyyMMddTZ.toYaml(), equals(yyyyMMddTZ));
      });
      final dateyyyyMMddTZDateTime = FhirDate(yyyyMMddTZDateTime);

      test(
          'dateyyyyMMddTZDateTime - no precision given, so must assume full DateTime input',
          () {
        expect(dateyyyyMMddTZDateTime.isValid, isTrue);
        expect(dateyyyyMMddTZDateTime.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTZDateTime.valueDateTime, equals(yyyyMMddTZDateTime));
        expect(dateyyyyMMddTZDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZDateTime.toJson(),
            equals('${yyyyMMdd} 00:00:00.000Z'));
        expect(dateyyyyMMddTZDateTime.toYaml(),
            equals('${yyyyMMdd} 00:00:00.000Z'));
      });
      final dateyyyyMMddTZDateTimeFromString =
          FhirDate(yyyyMMddTZDateTimeFromString);

      test('dateyyyyMMddTZDateTimeFromString', () {
        expect(dateyyyyMMddTZDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTZDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTZDateTime));
        expect(dateyyyyMMddTZDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZDateTimeFromString.toJson(),
            equals('${yyyyMMdd} 00:00:00.000Z'));
        expect(dateyyyyMMddTZDateTimeFromString.toYaml(),
            equals('${yyyyMMdd} 00:00:00.000Z'));
      });
      final dateyyyyMMddTZFromString = FhirDate.fromString(yyyyMMddTZ);

      test('dateyyyyMMddTZFromString', () {
        expect(dateyyyyMMddTZFromString.isValid, isTrue);
        expect(dateyyyyMMddTZFromString.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTZFromString.valueDateTime, equals(yyyyMMddTZDateTime));
        expect(dateyyyyMMddTZFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromString.toJson(), equals(yyyyMMddTZ));
        expect(dateyyyyMMddTZFromString.toYaml(), equals(yyyyMMddTZ));
      });
      final dateyyyyMMddTZFromDateTime =
          FhirDate.fromDateTime(yyyyMMddTZDateTime);

      test('dateyyyyMMddTZFromDateTime', () {
        expect(dateyyyyMMddTZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTZFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromDateTime.valueDateTime,
            equals(yyyyMMddTZDateTime));
        expect(dateyyyyMMddTZFromDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromDateTime.toJson(),
            equals('${yyyyMMdd} 00:00:00.000Z'));
        expect(dateyyyyMMddTZFromDateTime.toYaml(),
            equals('${yyyyMMdd} 00:00:00.000Z'));
      });
      final dateyyyyMMddTZFromJson = FhirDate.fromJson(yyyyMMddTZ);

      test('dateyyyyMMddTZFromJson', () {
        expect(dateyyyyMMddTZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTZFromJson.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTZFromJson.valueDateTime, equals(yyyyMMddTZDateTime));
        expect(dateyyyyMMddTZFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromJson.toJson(), equals(yyyyMMddTZ));
        expect(dateyyyyMMddTZFromJson.toYaml(), equals(yyyyMMddTZ));
      });
      final dateyyyyMMddTZDateTimeFromJson =
          FhirDate.fromJson(yyyyMMddTZDateTime);

      test('dateyyyyMMddTZDateTimeFromJson', () {
        expect(dateyyyyMMddTZDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTZDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTZDateTime));
        expect(dateyyyyMMddTZDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZDateTimeFromJson.toJson(),
            equals('${yyyyMMdd} 00:00:00.000Z'));
        expect(dateyyyyMMddTZDateTimeFromJson.toYaml(),
            equals('${yyyyMMdd} 00:00:00.000Z'));
      });
      final dateyyyyMMddTZDateTimeFromStringFromJson =
          FhirDate.fromJson(yyyyMMddTZDateTimeFromString);

      test('dateyyyyMMddTZDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTZDateTime));
        expect(dateyyyyMMddTZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(dateyyyyMMddTZDateTimeFromStringFromJson.toJson(),
            equals('${yyyyMMdd} 00:00:00.000Z'));
        expect(dateyyyyMMddTZDateTimeFromStringFromJson.toYaml(),
            equals('${yyyyMMdd} 00:00:00.000Z'));
      });
      final dateyyyyMMddTZFromUnits =
          FhirDate.fromUnits(year: 2012, month: 1, day: 31, isUtc: true);

      test('dateyyyyMMddTZFromUnits', () {
        expect(dateyyyyMMddTZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTZFromUnits.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTZFromUnits.valueDateTime, equals(yyyyMMddTZDateTime));
        expect(dateyyyyMMddTZFromUnits.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromUnits.toJson(), equals(yyyyMMddTZ));
        expect(dateyyyyMMddTZFromUnits.toYaml(), equals(yyyyMMddTZ));
      });
      final dateyyyyMMddTZFromYaml = FhirDate.fromYaml(yyyyMMddTZ);
      test('dateyyyyMMddTZFromYaml', () {
        expect(dateyyyyMMddTZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTZFromYaml.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTZFromYaml.valueDateTime, equals(yyyyMMddTZDateTime));
        expect(dateyyyyMMddTZFromYaml.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromYaml.toJson(), equals(yyyyMMddTZ));
        expect(dateyyyyMMddTZFromYaml.toYaml(), equals(yyyyMMddTZ));
      });
    });

    final yyyyMMddTZZ = '2012-01-31T$timezoneOffsetString';
    final yyyyMMddTZZDateTime = DateTime(2012, 1, 31);
    final yyyyMMddTZZDateTimeFromString = DateTime.parse('2012-01-31');

    final dateyyyyMMddTZZ = FhirDate(yyyyMMddTZZ);
    final dateyyyyMMddTZZDateTime = FhirDate(yyyyMMddTZZDateTime);
    final dateyyyyMMddTZZDateTimeFromString =
        FhirDate(yyyyMMddTZZDateTimeFromString);
    final dateyyyyMMddTZZFromString = FhirDate.fromString(yyyyMMddTZZ);
    final dateyyyyMMddTZZFromDateTime =
        FhirDate.fromDateTime(yyyyMMddTZZDateTime);
    final dateyyyyMMddTZZFromJson = FhirDate.fromJson(yyyyMMddTZZ);
    final dateyyyyMMddTZZDateTimeFromJson =
        FhirDate.fromJson(yyyyMMddTZZDateTime);
    final dateyyyyMMddTZZDateTimeFromStringFromJson =
        FhirDate.fromJson(yyyyMMddTZZDateTimeFromString);
    final dateyyyyMMddTZZFromUnits =
        FhirDate.fromUnits(year: 2012, month: 1, day: 31);
    final dateyyyyMMddTZZFromYaml = FhirDate.fromYaml(yyyyMMddTZZ);

    group('yyyyMMddTZZ - 2012-01-31T$timezoneOffsetString', () {
      // TODO(Dokotela): reasonable to truncate output?
      test('dateyyyyMMddTZZ', () {
        expect(dateyyyyMMddTZZ.isValid, isTrue);
        expect(dateyyyyMMddTZZ.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZZ.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddTZZ.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZ.toJson(), equals(yyyyMMddTZZ));
        expect(dateyyyyMMddTZZ.toYaml(), equals(yyyyMMddTZZ));
      });
      test('dateyyyyMMddTZZDateTime', () {
        expect(dateyyyyMMddTZZDateTime.isValid, isTrue);
        expect(dateyyyyMMddTZZDateTime.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTZZDateTime.valueDateTime, equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZDateTime.toJson(),
            equals(yyyyMMddTZZDateTime.toString()));
        expect(dateyyyyMMddTZZDateTime.toYaml(),
            equals(yyyyMMddTZZDateTime.toString()));
      });
      test('dateyyyyMMddTZZDateTimeFromString', () {
        expect(dateyyyyMMddTZZDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTZZDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZDateTimeFromString.toJson(),
            equals(yyyyMMddTZZDateTime.toString()));
        expect(dateyyyyMMddTZZDateTimeFromString.toYaml(),
            equals(yyyyMMddTZZDateTime.toString()));
      });
      test('dateyyyyMMddTZZFromString', () {
        expect(dateyyyyMMddTZZFromString.isValid, isTrue);
        expect(dateyyyyMMddTZZFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZZFromString.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZFromString.toJson(),
            equals('2012-01-31T$timezoneOffsetString'));
        expect(dateyyyyMMddTZZFromString.toYaml(),
            equals('2012-01-31T$timezoneOffsetString'));
      });
      test('dateyyyyMMddTZZFromDateTime', () {
        expect(dateyyyyMMddTZZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTZZFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZZFromDateTime.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZFromDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZFromDateTime.toJson(),
            equals(yyyyMMddTZZDateTime.toString()));
        expect(dateyyyyMMddTZZFromDateTime.toYaml(),
            equals(yyyyMMddTZZDateTime.toString()));
      });
      test('dateyyyyMMddTZZFromJson', () {
        expect(dateyyyyMMddTZZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTZZFromJson.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTZZFromJson.valueDateTime, equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZFromJson.toJson(), equals(yyyyMMddTZZ));
        expect(dateyyyyMMddTZZFromJson.toYaml(), equals(yyyyMMddTZZ));
      });
      test('dateyyyyMMddTZZDateTimeFromJson', () {
        expect(dateyyyyMMddTZZDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTZZDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZDateTimeFromJson.toJson(),
            equals(yyyyMMddTZZDateTime.toString()));
        expect(dateyyyyMMddTZZDateTimeFromJson.toYaml(),
            equals(yyyyMMddTZZDateTime.toString()));
      });
      test('dateyyyyMMddTZZDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTZZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTZZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTZZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(dateyyyyMMddTZZDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTZZDateTime.toString()));
        expect(dateyyyyMMddTZZDateTimeFromStringFromJson.toYaml(),
            equals(yyyyMMddTZZDateTime.toString()));
      });
      test('dateyyyyMMddTZZFromUnits', () {
        expect(dateyyyyMMddTZZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTZZFromUnits.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZZFromUnits.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZFromUnits.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZFromUnits.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZFromUnits.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZZFromYaml', () {
        expect(dateyyyyMMddTZZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTZZFromYaml.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTZZFromYaml.valueDateTime, equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZFromYaml.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZFromYaml.toJson(), equals(yyyyMMddTZZ));
        expect(dateyyyyMMddTZZFromYaml.toYaml(), equals(yyyyMMddTZZ));
      });
    });

    final yyyyMMddTHH = '2012-01-31T12';
    final yyyyMMddTHHDateTime = DateTime(2012, 1, 31, 12);
    final yyyyMMddTHHDateTimeFromString = DateTime.parse('2012-01-31T12');

    final dateyyyyMMddTHH = FhirDate(yyyyMMddTHH);
    final dateyyyyMMddTHHDateTime = FhirDate(yyyyMMddTHHDateTime);
    final dateyyyyMMddTHHDateTimeFromString =
        FhirDate(yyyyMMddTHHDateTimeFromString);
    final dateyyyyMMddTHHFromString = FhirDate.fromString(yyyyMMddTHH);
    final dateyyyyMMddTHHFromDateTime =
        FhirDate.fromDateTime(yyyyMMddTHHDateTime);
    final dateyyyyMMddTHHFromJson = FhirDate.fromJson(yyyyMMddTHH);
    final dateyyyyMMddTHHDateTimeFromJson =
        FhirDate.fromJson(yyyyMMddTHHDateTime);
    final dateyyyyMMddTHHDateTimeFromStringFromJson =
        FhirDate.fromJson(yyyyMMddTHHDateTimeFromString);
    final dateyyyyMMddTHHFromUnits =
        FhirDate.fromUnits(year: 2012, month: 1, day: 31);
    final dateyyyyMMddTHHFromYaml = FhirDate.fromYaml(yyyyMMddTHH);

    group('yyyyMMddTHH - 2012-01-31T12', () {
      test('dateyyyyMMddTHH', () {
        expect(dateyyyyMMddTHH.isValid, isTrue);
        expect(dateyyyyMMddTHH.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHH.valueDateTime, yyyyMMddTHHDateTime);
        expect(dateyyyyMMddTHH.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHH.toJson(), equals(yyyyMMddTHH));
        expect(dateyyyyMMddTHH.toYaml(), equals(yyyyMMddTHH));
      });
      test('dateyyyyMMddTHHDateTime', () {
        expect(dateyyyyMMddTHHDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHDateTime.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHDateTime.valueDateTime, equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHDateTime.toJson(),
            equals(yyyyMMddTHHDateTime.toString()));
        expect(dateyyyyMMddTHHDateTime.toYaml(),
            equals(yyyyMMddTHHDateTime.toString()));
      });
      test('dateyyyyMMddTHHDateTimeFromString', () {
        expect(dateyyyyMMddTHHDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHDateTimeFromString.toJson(),
            equals(yyyyMMddTHHDateTime.toString()));
        expect(dateyyyyMMddTHHDateTimeFromString.toYaml(),
            equals(yyyyMMddTHHDateTime.toString()));
      });
      test('dateyyyyMMddTHHFromString', () {
        expect(dateyyyyMMddTHHFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHFromString.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHFromString.toJson(), equals(yyyyMMddTHH));
        expect(dateyyyyMMddTHHFromString.toYaml(), equals(yyyyMMddTHH));
      });
      test('dateyyyyMMddTHHFromDateTime', () {
        expect(dateyyyyMMddTHHFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHFromDateTime.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHFromDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHFromDateTime.toJson(),
            equals(yyyyMMddTHHDateTime.toString()));
        expect(dateyyyyMMddTHHFromDateTime.toYaml(),
            equals(yyyyMMddTHHDateTime.toString()));
      });
      test('dateyyyyMMddTHHFromJson', () {
        expect(dateyyyyMMddTHHFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHFromJson.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHFromJson.valueDateTime, equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHFromJson.toJson(), equals(yyyyMMddTHH));
        expect(dateyyyyMMddTHHFromJson.toYaml(), equals(yyyyMMddTHH));
      });
      test('dateyyyyMMddTHHDateTimeFromJson', () {
        expect(dateyyyyMMddTHHDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHDateTimeFromJson.toJson(),
            equals(yyyyMMddTHHDateTime.toString()));
        expect(dateyyyyMMddTHHDateTimeFromJson.toYaml(),
            equals(yyyyMMddTHHDateTime.toString()));
      });
      test('dateyyyyMMddTHHDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTHHDateTime.toString()));
        expect(dateyyyyMMddTHHDateTimeFromStringFromJson.toYaml(),
            equals(yyyyMMddTHHDateTime.toString()));
      });
      test('dateyyyyMMddTHHFromUnits', () {
        expect(dateyyyyMMddTHHFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHFromUnits.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHFromUnits.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddTHHFromUnits.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHFromUnits.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHFromUnits.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHFromYaml', () {
        expect(dateyyyyMMddTHHFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHFromYaml.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHFromYaml.valueDateTime, equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHFromYaml.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHFromYaml.toJson(), equals(yyyyMMddTHH));
        expect(dateyyyyMMddTHHFromYaml.toYaml(), equals(yyyyMMddTHH));
      });
    });

    final yyyyMMddTHHZ = '2012-01-31T12Z';
    final yyyyMMddTHHZDateTime = DateTime.utc(2012, 1, 31, 12);
    final yyyyMMddTHHZDateTimeFromString = DateTime.parse('2012-01-31T12Z');

    group('yyyyMMddTHHZ - 2012-01-31TZ', () {
      final dateyyyyMMddTHHZ = FhirDate(yyyyMMddTHHZ);

      test('dateyyyyMMddTHHZ', () {
        expect(dateyyyyMMddTHHZ.isValid, isTrue);
        expect(dateyyyyMMddTHHZ.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZ.valueDateTime, equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZ.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZ.toJson(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZ.toYaml(), equals(yyyyMMddTHHZ));
      });
      final dateyyyyMMddTHHZDateTime = FhirDate(yyyyMMddTHHZDateTime);

      test('dateyyyyMMddTHHZDateTime', () {
        expect(dateyyyyMMddTHHZDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHZDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZDateTime.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZDateTime.toJson(),
            equals(dateyyyyMMddTHHZDateTime.valueDateTime.toString()));
        expect(dateyyyyMMddTHHZDateTime.toYaml(),
            equals(dateyyyyMMddTHHZDateTime.valueDateTime.toString()));
      });
      final dateyyyyMMddTHHZDateTimeFromString =
          FhirDate(yyyyMMddTHHZDateTimeFromString);

      test('dateyyyyMMddTHHZDateTimeFromString', () {
        expect(dateyyyyMMddTHHZDateTimeFromString.isValid, isTrue);
        expect(
            dateyyyyMMddTHHZDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHZDateTimeFromString.toJson(),
            equals(
                dateyyyyMMddTHHZDateTimeFromString.valueDateTime.toString()));
        expect(
            dateyyyyMMddTHHZDateTimeFromString.toYaml(),
            equals(
                dateyyyyMMddTHHZDateTimeFromString.valueDateTime.toString()));
      });
      final dateyyyyMMddTHHZFromString = FhirDate.fromString(yyyyMMddTHHZ);

      test('dateyyyyMMddTHHZFromString', () {
        expect(dateyyyyMMddTHHZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHZFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZFromString.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZFromString.toJson(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromString.toYaml(), equals(yyyyMMddTHHZ));
      });
      final dateyyyyMMddTHHZFromDateTime =
          FhirDate.fromDateTime(yyyyMMddTHHZDateTime);

      test('dateyyyyMMddTHHZFromDateTime', () {
        expect(dateyyyyMMddTHHZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHZFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZFromDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZFromDateTime.toJson(),
            equals(dateyyyyMMddTHHZFromDateTime.valueDateTime.toString()));
        expect(dateyyyyMMddTHHZFromDateTime.toYaml(),
            equals(dateyyyyMMddTHHZFromDateTime.valueDateTime.toString()));
      });
      final dateyyyyMMddTHHZFromJson = FhirDate.fromJson(yyyyMMddTHHZ);

      test('dateyyyyMMddTHHZFromJson', () {
        expect(dateyyyyMMddTHHZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHZFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZFromJson.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZFromJson.toJson(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromJson.toYaml(), equals(yyyyMMddTHHZ));
      });
      final dateyyyyMMddTHHZDateTimeFromJson =
          FhirDate.fromJson(yyyyMMddTHHZDateTime);

      test('dateyyyyMMddTHHZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHZDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHZDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZDateTimeFromJson.toJson(),
            equals(dateyyyyMMddTHHZDateTimeFromJson.valueDateTime.toString()));
        expect(dateyyyyMMddTHHZDateTimeFromJson.toYaml(),
            equals(dateyyyyMMddTHHZDateTimeFromJson.valueDateTime.toString()));
      });
      final dateyyyyMMddTHHZDateTimeFromStringFromJson =
          FhirDate.fromJson(yyyyMMddTHHZDateTimeFromString);

      test('dateyyyyMMddTHHZDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHZDateTimeFromStringFromJson.toJson(),
            equals(dateyyyyMMddTHHZDateTimeFromStringFromJson.valueDateTime
                .toString()));
        expect(
            dateyyyyMMddTHHZDateTimeFromStringFromJson.toYaml(),
            equals(dateyyyyMMddTHHZDateTimeFromStringFromJson.valueDateTime
                .toString()));
      });
      final dateyyyyMMddTHHZFromUnits =
          FhirDate.fromUnits(year: 2012, month: 1, day: 31, isUtc: true);

      test('dateyyyyMMddTHHZFromUnits', () {
        expect(dateyyyyMMddTHHZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHZFromUnits.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZFromUnits.valueDateTime,
            equals(yyyyMMddTZDateTime));
        expect(dateyyyyMMddTHHZFromUnits.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZFromUnits.toJson(), equals(yyyyMMddTZ));
        expect(dateyyyyMMddTHHZFromUnits.toYaml(), equals(yyyyMMddTZ));
      });
      final dateyyyyMMddTHHZFromYaml = FhirDate.fromYaml(yyyyMMddTHHZ);
      test('dateyyyyMMddTHHZFromYaml', () {
        expect(dateyyyyMMddTHHZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHZFromYaml.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZFromYaml.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZFromYaml.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZFromYaml.toJson(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromYaml.toYaml(), equals(yyyyMMddTHHZ));
      });
    });

    final yyyyMMddTHHZZ = '2012-01-31T12$timezoneOffsetString';
    final yyyyMMddTHHZZDateTime = DateTime(2012, 1, 31, 12);
    final yyyyMMddTHHZZDateTimeFromString =
        DateTime.parse('2012-01-31T12$timezoneOffsetString');

    group('yyyyMMddTHHZZ - 2012-01-31T12:30${DateTime.now().timeZoneOffset}',
        () {
      final dateyyyyMMddTHHZZ = FhirDate(yyyyMMddTHHZZ);

      test('dateyyyyMMddTHHZZ', () {
        expect(dateyyyyMMddTHHZZ.isValid, isTrue);
        expect(dateyyyyMMddTHHZZ.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZZ.valueDateTime, equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZ.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZZ.toJson(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZ.toYaml(), equals(yyyyMMddTHHZZ));
      });
      final dateyyyyMMddTHHZZDateTime = FhirDate(yyyyMMddTHHZZDateTime);
      test('dateyyyyMMddTHHZZDateTime', () {
        expect(dateyyyyMMddTHHZZDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHZZDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZZDateTime.valueDateTime?.toUtc(),
            equals(yyyyMMddTHHZZDateTime.toUtc()));
        expect(dateyyyyMMddTHHZZDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZZDateTime.toJson(),
            equals(dateyyyyMMddTHHZZDateTime.valueDateTime.toString()));
        expect(dateyyyyMMddTHHZZDateTime.toYaml(),
            equals(dateyyyyMMddTHHZZDateTime.valueDateTime.toString()));
      });

      final dateyyyyMMddTHHZZDateTimeFromString =
          FhirDate(yyyyMMddTHHZZDateTimeFromString);

      test('dateyyyyMMddTHHZZDateTimeFromString', () {
        expect(dateyyyyMMddTHHZZDateTimeFromString.isValid, isTrue);
        expect(
            dateyyyyMMddTHHZZDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHZZDateTime.toUtc()));
        expect(
            dateyyyyMMddTHHZZDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHZZDateTimeFromString.toJson(),
            equals(
                dateyyyyMMddTHHZZDateTimeFromString.valueDateTime.toString()));
        expect(
            dateyyyyMMddTHHZZDateTimeFromString.toYaml(),
            equals(
                dateyyyyMMddTHHZZDateTimeFromString.valueDateTime.toString()));
      });
      final dateyyyyMMddTHHZZFromString = FhirDate.fromString(yyyyMMddTHHZZ);

      test('dateyyyyMMddTHHZZFromString', () {
        expect(dateyyyyMMddTHHZZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHZZFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZZFromString.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZZFromString.toJson(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromString.toYaml(), equals(yyyyMMddTHHZZ));
      });
      final dateyyyyMMddTHHZZFromDateTime =
          FhirDate.fromDateTime(yyyyMMddTHHZZDateTime);

      test('dateyyyyMMddTHHZZFromDateTime', () {
        expect(dateyyyyMMddTHHZZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHZZFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZFromDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZZFromDateTime.toJson(),
            equals(dateyyyyMMddTHHZZFromDateTime.valueDateTime.toString()));
        expect(dateyyyyMMddTHHZZFromDateTime.toYaml(),
            equals(dateyyyyMMddTHHZZFromDateTime.valueDateTime.toString()));
      });
      final dateyyyyMMddTHHZZFromJson = FhirDate.fromJson(yyyyMMddTHHZZ);

      test('dateyyyyMMddTHHZZFromJson', () {
        expect(dateyyyyMMddTHHZZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHZZFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZZFromJson.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZZFromJson.toJson(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromJson.toYaml(), equals(yyyyMMddTHHZZ));
      });
      final dateyyyyMMddTHHZZDateTimeFromJson =
          FhirDate.fromJson(yyyyMMddTHHZZDateTime);

      test('dateyyyyMMddTHHZZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHZZDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHZZDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZZDateTimeFromJson.toJson(),
            equals(dateyyyyMMddTHHZZDateTimeFromJson.valueDateTime.toString()));
        expect(dateyyyyMMddTHHZZDateTimeFromJson.toYaml(),
            equals(dateyyyyMMddTHHZZDateTimeFromJson.valueDateTime.toString()));
      });
      final dateyyyyMMddTHHZZDateTimeFromStringFromJson =
          FhirDate.fromJson(yyyyMMddTHHZZDateTimeFromString);

      test('dateyyyyMMddTHHZZDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHZZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHZZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHZZDateTime.toUtc()));
        expect(dateyyyyMMddTHHZZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHZZDateTimeFromStringFromJson.toJson(),
            equals(dateyyyyMMddTHHZZDateTimeFromStringFromJson.valueDateTime
                .toString()));
        expect(
            dateyyyyMMddTHHZZDateTimeFromStringFromJson.toYaml(),
            equals(dateyyyyMMddTHHZZDateTimeFromStringFromJson.valueDateTime
                .toString()));
      });
      final dateyyyyMMddTHHZZFromUnits =
          FhirDate.fromUnits(year: 2012, month: 1, day: 31);

      test('dateyyyyMMddTHHZZFromUnits', () {
        expect(dateyyyyMMddTHHZZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHZZFromUnits.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHZZFromUnits.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddTHHZZFromUnits.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZZFromUnits.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZZFromUnits.toYaml(), equals(yyyyMMdd));
      });
      final dateyyyyMMddTHHZZFromYaml = FhirDate.fromYaml(yyyyMMddTHHZZ);
      test('dateyyyyMMddTHHZZFromYaml', () {
        expect(dateyyyyMMddTHHZZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHZZFromYaml.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZZFromYaml.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZFromYaml.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZZFromYaml.toJson(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromYaml.toYaml(), equals(yyyyMMddTHHZZ));
      });
    });

    final yyyyMMddTHHmm = '2012-01-31T12:30';
    final yyyyMMddTHHmmDateTime = DateTime(2012, 1, 31, 12, 30);
    final yyyyMMddTHHmmDateTimeFromString = DateTime.parse('2012-01-31T12:30');

    final dateyyyyMMddTHHmm = FhirDate(yyyyMMddTHHmm);
    final dateyyyyMMddTHHmmDateTime = FhirDate(yyyyMMddTHHmmDateTime);
    final dateyyyyMMddTHHmmDateTimeFromString =
        FhirDate(yyyyMMddTHHmmDateTimeFromString);
    final dateyyyyMMddTHHmmFromString = FhirDate.fromString(yyyyMMddTHHmm);
    final dateyyyyMMddTHHmmFromDateTime =
        FhirDate.fromDateTime(yyyyMMddTHHmmDateTime);
    final dateyyyyMMddTHHmmFromJson = FhirDate.fromJson(yyyyMMddTHHmm);
    final dateyyyyMMddTHHmmDateTimeFromJson =
        FhirDate.fromJson(yyyyMMddTHHmmDateTime);
    final dateyyyyMMddTHHmmDateTimeFromStringFromJson =
        FhirDate.fromJson(yyyyMMddTHHmmDateTimeFromString);
    final dateyyyyMMddTHHmmFromUnits =
        FhirDate.fromUnits(year: 2012, month: 1, day: 31);
    final dateyyyyMMddTHHmmFromYaml = FhirDate.fromYaml(yyyyMMddTHHmm);
    group('yyyyMMddTHHmm - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHmm', () {
        expect(dateyyyyMMddTHHmm.isValid, isTrue);
        expect(dateyyyyMMddTHHmm.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmm.valueDateTime, equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmm.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmm.toJson(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmm.toYaml(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmDateTime', () {
        expect(dateyyyyMMddTHHmmDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmDateTime.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmDateTime.toJson(),
            equals(dateyyyyMMddTHHmmDateTime.valueDateTime.toString()));
        expect(dateyyyyMMddTHHmmDateTime.toYaml(),
            equals(dateyyyyMMddTHHmmDateTime.valueDateTime.toString()));
      });
      test('dateyyyyMMddTHHmmDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmDateTimeFromString.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(
            dateyyyyMMddTHHmmDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmDateTimeFromString.toJson(),
            equals(
                dateyyyyMMddTHHmmDateTimeFromString.valueDateTime.toString()));
        expect(
            dateyyyyMMddTHHmmDateTimeFromString.toYaml(),
            equals(
                dateyyyyMMddTHHmmDateTimeFromString.valueDateTime.toString()));
      });
      test('dateyyyyMMddTHHmmFromString', () {
        expect(dateyyyyMMddTHHmmFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmFromString.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmFromString.toJson(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromString.toYaml(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmFromDateTime', () {
        expect(dateyyyyMMddTHHmmFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmFromDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmFromDateTime.toJson(),
            equals(dateyyyyMMddTHHmmFromDateTime.valueDateTime.toString()));
        expect(dateyyyyMMddTHHmmFromDateTime.toYaml(),
            equals(dateyyyyMMddTHHmmFromDateTime.valueDateTime.toString()));
      });
      test('dateyyyyMMddTHHmmFromJson', () {
        expect(dateyyyyMMddTHHmmFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmFromJson.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmFromJson.toJson(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromJson.toYaml(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmDateTimeFromJson.toJson(),
            equals(dateyyyyMMddTHHmmDateTimeFromJson.valueDateTime.toString()));
        expect(dateyyyyMMddTHHmmDateTimeFromJson.toYaml(),
            equals(dateyyyyMMddTHHmmDateTimeFromJson.valueDateTime.toString()));
      });
      test('dateyyyyMMddTHHmmDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHmmDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmDateTimeFromStringFromJson.toJson(),
            equals(dateyyyyMMddTHHmmDateTimeFromStringFromJson.valueDateTime
                .toString()));
        expect(
            dateyyyyMMddTHHmmDateTimeFromStringFromJson.toYaml(),
            equals(dateyyyyMMddTHHmmDateTimeFromStringFromJson.valueDateTime
                .toString()));
      });
      test('dateyyyyMMddTHHmmFromUnits', () {
        expect(dateyyyyMMddTHHmmFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmFromUnits.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmFromUnits.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddTHHmmFromUnits.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmFromUnits.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmFromUnits.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHmmFromYaml', () {
        expect(dateyyyyMMddTHHmmFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHmmFromYaml.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmFromYaml.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmFromYaml.toJson(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromYaml.toYaml(), equals(yyyyMMddTHHmm));
      });
    });

    final yyyyMMddTHHmmZ = '2012-01-31T12:30Z';
    final yyyyMMddTHHmmZDateTime = DateTime.utc(2012, 1, 31, 12, 30);
    final yyyyMMddTHHmmZDateTimeFromString =
        DateTime.parse('2012-01-31T12:30Z');

    final dateyyyyMMddTHHmmZ = FhirDate(yyyyMMddTHHmmZ);
    final dateyyyyMMddTHHmmZDateTime = FhirDate(yyyyMMddTHHmmZDateTime);
    final dateyyyyMMddTHHmmZDateTimeFromString =
        FhirDate(yyyyMMddTHHmmZDateTimeFromString);
    final dateyyyyMMddTHHmmZFromString = FhirDate.fromString(yyyyMMddTHHmmZ);
    final dateyyyyMMddTHHmmZFromDateTime =
        FhirDate.fromDateTime(yyyyMMddTHHmmZDateTime);
    final dateyyyyMMddTHHmmZFromJson = FhirDate.fromJson(yyyyMMddTHHmmZ);
    final dateyyyyMMddTHHmmZDateTimeFromJson =
        FhirDate.fromJson(yyyyMMddTHHmmZDateTime);
    final dateyyyyMMddTHHmmZDateTimeFromStringFromJson =
        FhirDate.fromJson(yyyyMMddTHHmmZDateTimeFromString);
    final dateyyyyMMddTHHmmZFromUnits =
        FhirDate.fromUnits(year: 2012, month: 1, day: 31, isUtc: true);
    final dateyyyyMMddTHHmmZFromYaml = FhirDate.fromYaml(yyyyMMddTHHmmZ);
    group('yyyyMMddTHHmmZ - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHmmZ', () {
        expect(dateyyyyMMddTHHmmZ.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZ.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmZ.valueDateTime, equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZ.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZ.toJson(), equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZ.toYaml(), equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZDateTime', () {
        expect(dateyyyyMMddTHHmmZDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZDateTime.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZDateTime.toJson(),
            equals(dateyyyyMMddTHHmmZDateTime.valueDateTime.toString()));
        expect(dateyyyyMMddTHHmmZDateTime.toYaml(),
            equals(dateyyyyMMddTHHmmZDateTime.valueDateTime.toString()));
      });
      test('dateyyyyMMddTHHmmZDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmZDateTimeFromString.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmZDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(
            dateyyyyMMddTHHmmZDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmZDateTimeFromString.toJson(),
            equals(
                dateyyyyMMddTHHmmZDateTimeFromString.valueDateTime.toString()));
        expect(
            dateyyyyMMddTHHmmZDateTimeFromString.toYaml(),
            equals(
                dateyyyyMMddTHHmmZDateTimeFromString.valueDateTime.toString()));
      });
      test('dateyyyyMMddTHHmmZFromString', () {
        expect(dateyyyyMMddTHHmmZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZFromString.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZFromString.toJson(), equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromString.toYaml(), equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZFromDateTime', () {
        expect(dateyyyyMMddTHHmmZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZFromDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZFromDateTime.toJson(),
            equals(dateyyyyMMddTHHmmZFromDateTime.valueDateTime.toString()));
        expect(dateyyyyMMddTHHmmZFromDateTime.toYaml(),
            equals(dateyyyyMMddTHHmmZFromDateTime.valueDateTime.toString()));
      });
      test('dateyyyyMMddTHHmmZFromJson', () {
        expect(dateyyyyMMddTHHmmZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZFromJson.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZFromJson.toJson(), equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromJson.toYaml(), equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmZDateTimeFromJson.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmZDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmZDateTimeFromJson.toJson(),
            equals(
                dateyyyyMMddTHHmmZDateTimeFromJson.valueDateTime.toString()));
        expect(
            dateyyyyMMddTHHmmZDateTimeFromJson.toYaml(),
            equals(
                dateyyyyMMddTHHmmZDateTimeFromJson.valueDateTime.toString()));
      });
      test('dateyyyyMMddTHHmmZDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHmmZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmZDateTimeFromStringFromJson.toJson(),
            equals(dateyyyyMMddTHHmmZDateTimeFromStringFromJson.valueDateTime
                .toString()));
        expect(
            dateyyyyMMddTHHmmZDateTimeFromStringFromJson.toYaml(),
            equals(dateyyyyMMddTHHmmZDateTimeFromStringFromJson.valueDateTime
                .toString()));
      });
      test('dateyyyyMMddTHHmmZFromUnits', () {
        expect(dateyyyyMMddTHHmmZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZFromUnits.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZFromUnits.valueDateTime,
            equals(yyyyMMddTZDateTime));
        expect(dateyyyyMMddTHHmmZFromUnits.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZFromUnits.toJson(), equals(yyyyMMddTZ));
        expect(dateyyyyMMddTHHmmZFromUnits.toYaml(), equals(yyyyMMddTZ));
      });
      test('dateyyyyMMddTHHmmZFromYaml', () {
        expect(dateyyyyMMddTHHmmZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZFromYaml.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZFromYaml.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZFromYaml.toJson(), equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromYaml.toYaml(), equals(yyyyMMddTHHmmZ));
      });
    });

    final yyyyMMddTHHmmZZ = '2012-01-31T12:30-05:00';
    final yyyyMMddTHHmmZZDateTime = DateTime(2012, 1, 31, 12, 30).toUtc();
    final yyyyMMddTHHmmZZDateTimeFromString =
        DateTime.parse('2012-01-31T12:30-05:00');

    final dateyyyyMMddTHHmmZZ = FhirDate(yyyyMMddTHHmmZZ);
    final dateyyyyMMddTHHmmZZDateTime = FhirDate(yyyyMMddTHHmmZZDateTime);
    final dateyyyyMMddTHHmmZZDateTimeFromString =
        FhirDate(yyyyMMddTHHmmZZDateTimeFromString);
    final dateyyyyMMddTHHmmZZFromString = FhirDate.fromString(yyyyMMddTHHmmZZ);
    final dateyyyyMMddTHHmmZZFromDateTime =
        FhirDate.fromDateTime(yyyyMMddTHHmmZZDateTime);
    final dateyyyyMMddTHHmmZZFromJson = FhirDate.fromJson(yyyyMMddTHHmmZZ);
    final dateyyyyMMddTHHmmZZDateTimeFromJson =
        FhirDate.fromJson(yyyyMMddTHHmmZZDateTime);
    final dateyyyyMMddTHHmmZZDateTimeFromStringFromJson =
        FhirDate.fromJson(yyyyMMddTHHmmZZDateTimeFromString);
    final dateyyyyMMddTHHmmZZFromUnits =
        FhirDate.fromUnits(year: 2012, month: 1, day: 31);
    final dateyyyyMMddTHHmmZZFromYaml = FhirDate.fromYaml(yyyyMMddTHHmmZZ);

    group('yyyyMMddTHHmmZZ - 2012-01-31T12:30$timezoneOffsetString', () {
      test('dateyyyyMMddTHHmmZZ', () {
        expect(dateyyyyMMddTHHmmZZ.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZZ.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmZZ.valueDateTime, equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZ.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZZ.toJson(), equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZ.toYaml(), equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZDateTime', () {
        expect(dateyyyyMMddTHHmmZZDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZZDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZZDateTime.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZZDateTime.toJson(),
            equals(dateyyyyMMddTHHmmZZDateTime.valueDateTime.toString()));
        expect(dateyyyyMMddTHHmmZZDateTime.toYaml(),
            equals(dateyyyyMMddTHHmmZZDateTime.valueDateTime.toString()));
      });
      test('dateyyyyMMddTHHmmZZDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmZZDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZZDateTimeFromString.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(
            dateyyyyMMddTHHmmZZDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmZZDateTimeFromString.toJson(),
            equals(dateyyyyMMddTHHmmZZDateTimeFromString.valueDateTime
                .toString()));
        expect(
            dateyyyyMMddTHHmmZZDateTimeFromString.toYaml(),
            equals(dateyyyyMMddTHHmmZZDateTimeFromString.valueDateTime
                .toString()));
      });
      test('dateyyyyMMddTHHmmZZFromString', () {
        expect(dateyyyyMMddTHHmmZZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZZFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZZFromString.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZZFromString.toJson(), equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZFromString.toYaml(), equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZFromDateTime', () {
        expect(dateyyyyMMddTHHmmZZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZZFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZFromDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZZFromDateTime.toJson(),
            equals(dateyyyyMMddTHHmmZZFromDateTime.valueDateTime.toString()));
        expect(dateyyyyMMddTHHmmZZFromDateTime.toYaml(),
            equals(dateyyyyMMddTHHmmZZFromDateTime.valueDateTime.toString()));
      });
      test('dateyyyyMMddTHHmmZZFromJson', () {
        expect(dateyyyyMMddTHHmmZZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZZFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZZFromJson.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZZFromJson.toJson(), equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZFromJson.toYaml(), equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmZZDateTimeFromJson.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmZZDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(
            dateyyyyMMddTHHmmZZDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmZZDateTimeFromJson.toJson(),
            equals(
                dateyyyyMMddTHHmmZZDateTimeFromJson.valueDateTime.toString()));
        expect(
            dateyyyyMMddTHHmmZZDateTimeFromJson.toYaml(),
            equals(
                dateyyyyMMddTHHmmZZDateTimeFromJson.valueDateTime.toString()));
      });
      test('dateyyyyMMddTHHmmZZDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHmmZZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmZZDateTimeFromStringFromJson.toJson(),
            equals(dateyyyyMMddTHHmmZZDateTimeFromStringFromJson.valueDateTime
                .toString()));
        expect(
            dateyyyyMMddTHHmmZZDateTimeFromStringFromJson.toYaml(),
            equals(dateyyyyMMddTHHmmZZDateTimeFromStringFromJson.valueDateTime
                .toString()));
      });
      test('dateyyyyMMddTHHmmZZFromUnits', () {
        expect(dateyyyyMMddTHHmmZZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZZFromUnits.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZZFromUnits.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddTHHmmZZFromUnits.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZZFromUnits.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZZFromUnits.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHmmZZFromYaml', () {
        expect(dateyyyyMMddTHHmmZZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZZFromYaml.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZZFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZFromYaml.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZZFromYaml.toJson(), equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZFromYaml.toYaml(), equals(yyyyMMddTHHmmZZ));
      });
    });

    final yyyyMMddTHHmmss = '2012-01-31T12:30:59';
    final yyyyMMddTHHmmssDateTime = DateTime(2012, 1, 31, 12, 30, 59);
    final yyyyMMddTHHmmssDateTimeFromString =
        DateTime.parse('2012-01-31T12:30:59');

    final dateyyyyMMddTHHmmss = FhirDate(yyyyMMddTHHmmss);
    final dateyyyyMMddTHHmmssDateTime = FhirDate(yyyyMMddTHHmmssDateTime);
    final dateyyyyMMddTHHmmssDateTimeFromString =
        FhirDate(yyyyMMddTHHmmssDateTimeFromString);
    final dateyyyyMMddTHHmmssFromString = FhirDate.fromString(yyyyMMddTHHmmss);
    final dateyyyyMMddTHHmmssFromDateTime =
        FhirDate.fromDateTime(yyyyMMddTHHmmssDateTime);
    final dateyyyyMMddTHHmmssFromJson = FhirDate.fromJson(yyyyMMddTHHmmss);
    final dateyyyyMMddTHHmmssDateTimeFromJson =
        FhirDate.fromJson(yyyyMMddTHHmmssDateTime);
    final dateyyyyMMddTHHmmssDateTimeFromStringFromJson =
        FhirDate.fromJson(yyyyMMddTHHmmssDateTimeFromString);
    final dateyyyyMMddTHHmmssFromUnits =
        FhirDate.fromUnits(year: 2012, month: 1, day: 31);
    final dateyyyyMMddTHHmmssFromYaml = FhirDate.fromYaml(yyyyMMddTHHmmss);
    group('yyyyMMddTHHmmss - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHmmss', () {
        expect(dateyyyyMMddTHHmmss.isValid, isTrue);
        expect(dateyyyyMMddTHHmmss.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmss.valueDateTime, equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmss.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmss.toJson(), equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmss.toYaml(), equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssDateTime', () {
        expect(dateyyyyMMddTHHmmssDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssDateTime.toJson(),
            equals(dateyyyyMMddTHHmmssDateTime.valueDateTime.toString()));
        expect(dateyyyyMMddTHHmmssDateTime.toYaml(),
            equals(dateyyyyMMddTHHmmssDateTime.valueDateTime.toString()));
      });
      test('dateyyyyMMddTHHmmssDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmssDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssDateTimeFromString.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(
            dateyyyyMMddTHHmmssDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmssDateTimeFromString.toJson(),
            equals(dateyyyyMMddTHHmmssDateTimeFromString.valueDateTime
                .toString()));
        expect(
            dateyyyyMMddTHHmmssDateTimeFromString.toYaml(),
            equals(dateyyyyMMddTHHmmssDateTimeFromString.valueDateTime
                .toString()));
      });
      test('dateyyyyMMddTHHmmssFromString', () {
        expect(dateyyyyMMddTHHmmssFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssFromString.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssFromString.toJson(), equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssFromString.toYaml(), equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssFromDateTime', () {
        expect(dateyyyyMMddTHHmmssFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssFromDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssFromDateTime.toJson(),
            equals(dateyyyyMMddTHHmmssFromDateTime.valueDateTime.toString()));
        expect(dateyyyyMMddTHHmmssFromDateTime.toYaml(),
            equals(dateyyyyMMddTHHmmssFromDateTime.valueDateTime.toString()));
      });
      test('dateyyyyMMddTHHmmssFromJson', () {
        expect(dateyyyyMMddTHHmmssFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssFromJson.toJson(), equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssFromJson.toYaml(), equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmssDateTimeFromJson.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(
            dateyyyyMMddTHHmmssDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmssDateTimeFromJson.toJson(),
            equals(
                dateyyyyMMddTHHmmssDateTimeFromJson.valueDateTime.toString()));
        expect(
            dateyyyyMMddTHHmmssDateTimeFromJson.toYaml(),
            equals(
                dateyyyyMMddTHHmmssDateTimeFromJson.valueDateTime.toString()));
      });
      test('dateyyyyMMddTHHmmssDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHmmssDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmssDateTimeFromStringFromJson.toJson(),
            equals(dateyyyyMMddTHHmmssDateTimeFromStringFromJson.valueDateTime
                .toString()));
        expect(
            dateyyyyMMddTHHmmssDateTimeFromStringFromJson.toYaml(),
            equals(dateyyyyMMddTHHmmssDateTimeFromStringFromJson.valueDateTime
                .toString()));
      });
      test('dateyyyyMMddTHHmmssFromUnits', () {
        expect(dateyyyyMMddTHHmmssFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssFromUnits.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssFromUnits.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddTHHmmssFromUnits.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssFromUnits.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssFromUnits.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHmmssFromYaml', () {
        expect(dateyyyyMMddTHHmmssFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssFromYaml.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssFromYaml.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssFromYaml.toJson(), equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssFromYaml.toYaml(), equals(yyyyMMddTHHmmss));
      });
    });

    final yyyyMMddTHHmmssZ = '2012-01-31T12:30:59Z';
    final yyyyMMddTHHmmssZDateTime = DateTime.utc(2012, 1, 31, 12, 30, 59);
    final yyyyMMddTHHmmssZDateTimeFromString =
        DateTime.parse('2012-01-31T12:30:59Z');

    final dateyyyyMMddTHHmmssZ = FhirDate(yyyyMMddTHHmmssZ);
    final dateyyyyMMddTHHmmssZDateTime = FhirDate(yyyyMMddTHHmmssZDateTime);
    final dateyyyyMMddTHHmmssZDateTimeFromString =
        FhirDate(yyyyMMddTHHmmssZDateTimeFromString);
    final dateyyyyMMddTHHmmssZFromString =
        FhirDate.fromString(yyyyMMddTHHmmssZ);
    final dateyyyyMMddTHHmmssZFromDateTime =
        FhirDate.fromDateTime(yyyyMMddTHHmmssZDateTime);
    final dateyyyyMMddTHHmmssZFromJson = FhirDate.fromJson(yyyyMMddTHHmmssZ);
    final dateyyyyMMddTHHmmssZDateTimeFromJson =
        FhirDate.fromJson(yyyyMMddTHHmmssZDateTime);
    final dateyyyyMMddTHHmmssZDateTimeFromStringFromJson =
        FhirDate.fromJson(yyyyMMddTHHmmssZDateTimeFromString);
    final dateyyyyMMddTHHmmssZFromUnits =
        FhirDate.fromUnits(year: 2012, month: 1, day: 31);
    final dateyyyyMMddTHHmmssZFromYaml = FhirDate.fromYaml(yyyyMMddTHHmmssZ);
    group('yyyyMMddTHHmmssZ - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHmmssZ', () {
        expect(dateyyyyMMddTHHmmssZ.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZ.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZ.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(dateyyyyMMddTHHmmssZ.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZ.toJson(), equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZ.toYaml(), equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZDateTime', () {
        expect(dateyyyyMMddTHHmmssZDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(dateyyyyMMddTHHmmssZDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZDateTime.toJson(),
            equals(dateyyyyMMddTHHmmssZDateTime.valueDateTime.toString()));
        expect(dateyyyyMMddTHHmmssZDateTime.toYaml(),
            equals(dateyyyyMMddTHHmmssZDateTime.valueDateTime.toString()));
      });
      test('dateyyyyMMddTHHmmssZDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmssZDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZDateTimeFromString.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(dateyyyyMMddTHHmmssZDateTimeFromString.toString(),
            equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmssZDateTimeFromString.toJson(),
            equals(dateyyyyMMddTHHmmssZDateTimeFromString.valueDateTime
                .toString()));
        expect(
            dateyyyyMMddTHHmmssZDateTimeFromString.toYaml(),
            equals(dateyyyyMMddTHHmmssZDateTimeFromString.valueDateTime
                .toString()));
      });
      test('dateyyyyMMddTHHmmssZFromString', () {
        expect(dateyyyyMMddTHHmmssZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(dateyyyyMMddTHHmmssZFromString.toString(), equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmssZFromString.toJson(), equals(yyyyMMddTHHmmssZ));
        expect(
            dateyyyyMMddTHHmmssZFromString.toYaml(), equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZFromDateTime', () {
        expect(dateyyyyMMddTHHmmssZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(dateyyyyMMddTHHmmssZFromDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZFromDateTime.toJson(),
            equals(dateyyyyMMddTHHmmssZFromDateTime.valueDateTime.toString()));
        expect(dateyyyyMMddTHHmmssZFromDateTime.toYaml(),
            equals(dateyyyyMMddTHHmmssZFromDateTime.valueDateTime.toString()));
      });
      test('dateyyyyMMddTHHmmssZFromJson', () {
        expect(dateyyyyMMddTHHmmssZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(dateyyyyMMddTHHmmssZFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZFromJson.toJson(), equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZFromJson.toYaml(), equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmssZDateTimeFromJson.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssZDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(
            dateyyyyMMddTHHmmssZDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmssZDateTimeFromJson.toJson(),
            equals(
                dateyyyyMMddTHHmmssZDateTimeFromJson.valueDateTime.toString()));
        expect(
            dateyyyyMMddTHHmmssZDateTimeFromJson.toYaml(),
            equals(
                dateyyyyMMddTHHmmssZDateTimeFromJson.valueDateTime.toString()));
      });
      test('dateyyyyMMddTHHmmssZDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHmmssZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(dateyyyyMMddTHHmmssZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmssZDateTimeFromStringFromJson.toJson(),
            equals(dateyyyyMMddTHHmmssZDateTimeFromStringFromJson.valueDateTime
                .toString()));
        expect(
            dateyyyyMMddTHHmmssZDateTimeFromStringFromJson.toYaml(),
            equals(dateyyyyMMddTHHmmssZDateTimeFromStringFromJson.valueDateTime
                .toString()));
      });
      test('dateyyyyMMddTHHmmssZFromUnits', () {
        expect(dateyyyyMMddTHHmmssZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZFromUnits.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZFromUnits.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddTHHmmssZFromUnits.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZFromUnits.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZFromUnits.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHmmssZFromYaml', () {
        expect(dateyyyyMMddTHHmmssZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZFromYaml.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(dateyyyyMMddTHHmmssZFromYaml.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZFromYaml.toJson(), equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZFromYaml.toYaml(), equals(yyyyMMddTHHmmssZ));
      });
    });

    final yyyyMMddTHHmmssZZ = '2012-01-31T12:30:59$timezoneOffsetString';
    final yyyyMMddTHHmmssZZDateTime = DateTime(2012, 1, 31, 12, 30, 59);
    final yyyyMMddTHHmmssZZDateTimeFromString =
        DateTime.parse('2012-01-31T12:30:59$timezoneOffsetString');

    final dateyyyyMMddTHHmmssZZ = FhirDate(yyyyMMddTHHmmssZZ);
    final dateyyyyMMddTHHmmssZZDateTime = FhirDate(yyyyMMddTHHmmssZZDateTime);
    final dateyyyyMMddTHHmmssZZDateTimeFromString =
        FhirDate(yyyyMMddTHHmmssZZDateTimeFromString);
    final dateyyyyMMddTHHmmssZZFromString =
        FhirDate.fromString(yyyyMMddTHHmmssZZ);
    final dateyyyyMMddTHHmmssZZFromDateTime =
        FhirDate.fromDateTime(yyyyMMddTHHmmssZZDateTime);
    final dateyyyyMMddTHHmmssZZFromJson = FhirDate.fromJson(yyyyMMddTHHmmssZZ);
    final dateyyyyMMddTHHmmssZZDateTimeFromJson =
        FhirDate.fromJson(yyyyMMddTHHmmssZZDateTime);
    final dateyyyyMMddTHHmmssZZDateTimeFromStringFromJson =
        FhirDate.fromJson(yyyyMMddTHHmmssZZDateTimeFromString);
    final dateyyyyMMddTHHmmssZZFromUnits =
        FhirDate.fromUnits(year: 2012, month: 1, day: 31);
    final dateyyyyMMddTHHmmssZZFromYaml = FhirDate.fromYaml(yyyyMMddTHHmmssZZ);
    group('yyyyMMddTHHmmssZZ - 2012-01-31T12:30:59$timezoneOffsetString', () {
      test('dateyyyyMMddTHHmmssZZ', () {
        expect(dateyyyyMMddTHHmmssZZ.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZ.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZZ.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZ.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZZ.toJson(), equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZ.toYaml(), equals(yyyyMMddTHHmmssZZ));
      });
      test('dateyyyyMMddTHHmmssZZDateTime', () {
        expect(dateyyyyMMddTHHmmssZZDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZZDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZZDateTime.toJson(),
            equals(dateyyyyMMddTHHmmssZZDateTime.valueDateTime.toString()));
        expect(dateyyyyMMddTHHmmssZZDateTime.toYaml(),
            equals(dateyyyyMMddTHHmmssZZDateTime.valueDateTime.toString()));
      });
      test('dateyyyyMMddTHHmmssZZDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmssZZDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZDateTimeFromString.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime.toUtc()));
        expect(dateyyyyMMddTHHmmssZZDateTimeFromString.toString(),
            equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmssZZDateTimeFromString.toJson(),
            equals(dateyyyyMMddTHHmmssZZDateTimeFromString.valueDateTime
                .toString()));
        expect(
            dateyyyyMMddTHHmmssZZDateTimeFromString.toYaml(),
            equals(dateyyyyMMddTHHmmssZZDateTimeFromString.valueDateTime
                .toString()));
      });
      test('dateyyyyMMddTHHmmssZZFromString', () {
        expect(dateyyyyMMddTHHmmssZZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZZFromString.toJson(),
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZFromString.toYaml(),
            equals(yyyyMMddTHHmmssZZ));
      });
      test('dateyyyyMMddTHHmmssZZFromDateTime', () {
        expect(dateyyyyMMddTHHmmssZZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZFromDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZZFromDateTime.toJson(),
            equals(dateyyyyMMddTHHmmssZZFromDateTime.valueDateTime.toString()));
        expect(dateyyyyMMddTHHmmssZZFromDateTime.toYaml(),
            equals(dateyyyyMMddTHHmmssZZFromDateTime.valueDateTime.toString()));
      });
      test('dateyyyyMMddTHHmmssZZFromJson', () {
        expect(dateyyyyMMddTHHmmssZZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZZFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZFromJson.toString(), equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmssZZFromJson.toJson(), equals(yyyyMMddTHHmmssZZ));
        expect(
            dateyyyyMMddTHHmmssZZFromJson.toYaml(), equals(yyyyMMddTHHmmssZZ));
      });
      test('dateyyyyMMddTHHmmssZZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmssZZDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZDateTimeFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(
            dateyyyyMMddTHHmmssZZDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmssZZDateTimeFromJson.toJson(),
            equals(dateyyyyMMddTHHmmssZZDateTimeFromJson.valueDateTime
                .toString()));
        expect(
            dateyyyyMMddTHHmmssZZDateTimeFromJson.toYaml(),
            equals(dateyyyyMMddTHHmmssZZDateTimeFromJson.valueDateTime
                .toString()));
      });
      test('dateyyyyMMddTHHmmssZZDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHmmssZZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime.toUtc()));
        expect(dateyyyyMMddTHHmmssZZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmssZZDateTimeFromStringFromJson.toJson(),
            equals(dateyyyyMMddTHHmmssZZDateTimeFromStringFromJson.valueDateTime
                .toString()));
        expect(
            dateyyyyMMddTHHmmssZZDateTimeFromStringFromJson.toYaml(),
            equals(dateyyyyMMddTHHmmssZZDateTimeFromStringFromJson.valueDateTime
                .toString()));
      });
      test('dateyyyyMMddTHHmmssZZFromUnits', () {
        expect(dateyyyyMMddTHHmmssZZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZFromUnits.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZZFromUnits.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddTHHmmssZZFromUnits.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZZFromUnits.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZZFromUnits.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHmmssZZFromYaml', () {
        expect(dateyyyyMMddTHHmmssZZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZFromYaml.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZZFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZFromYaml.toString(), equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmssZZFromYaml.toJson(), equals(yyyyMMddTHHmmssZZ));
        expect(
            dateyyyyMMddTHHmmssZZFromYaml.toYaml(), equals(yyyyMMddTHHmmssZZ));
      });
    });

    final yyyyMMddTHHmmssSSS = '2012-01-31T12:30:59.001';
    final yyyyMMddTHHmmssSSSDateTime = DateTime(2012, 1, 31, 12, 30, 59, 1);
    final yyyyMMddTHHmmssSSSDateTimeFromString =
        DateTime.parse('2012-01-31T12:30:59.001');

    final dateyyyyMMddTHHmmssSSS = FhirDate(yyyyMMddTHHmmssSSS);
    final dateyyyyMMddTHHmmssSSSDateTime = FhirDate(yyyyMMddTHHmmssSSSDateTime);
    final dateyyyyMMddTHHmmssSSSDateTimeFromString =
        FhirDate(yyyyMMddTHHmmssSSSDateTimeFromString);
    final dateyyyyMMddTHHmmssSSSFromString =
        FhirDate.fromString(yyyyMMddTHHmmssSSS);
    final dateyyyyMMddTHHmmssSSSFromDateTime =
        FhirDate.fromDateTime(yyyyMMddTHHmmssSSSDateTime);
    final dateyyyyMMddTHHmmssSSSFromJson =
        FhirDate.fromJson(yyyyMMddTHHmmssSSS);
    final dateyyyyMMddTHHmmssSSSDateTimeFromJson =
        FhirDate.fromJson(yyyyMMddTHHmmssSSSDateTime);
    final dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson =
        FhirDate.fromJson(yyyyMMddTHHmmssSSSDateTimeFromString);
    final dateyyyyMMddTHHmmssSSSFromUnits =
        FhirDate.fromUnits(year: 2012, month: 1, day: 31);
    final dateyyyyMMddTHHmmssSSSFromYaml =
        FhirDate.fromYaml(yyyyMMddTHHmmssSSS);
    group('yyyyMMddTHHmmssSSS - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHmmssSSS', () {
        expect(dateyyyyMMddTHHmmssSSS.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSS.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSS.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSS.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSS.toJson(), equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSS.toYaml(), equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSDateTime.toJson(),
            equals(dateyyyyMMddTHHmmssSSSDateTime.valueDateTime.toString()));
        expect(dateyyyyMMddTHHmmssSSSDateTime.toYaml(),
            equals(dateyyyyMMddTHHmmssSSSDateTime.valueDateTime.toString()));
      });
      test('dateyyyyMMddTHHmmssSSSDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromString.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromString.toString(),
            equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmssSSSDateTimeFromString.toJson(),
            equals(dateyyyyMMddTHHmmssSSSDateTimeFromString.valueDateTime
                .toString()));
        expect(
            dateyyyyMMddTHHmmssSSSDateTimeFromString.toYaml(),
            equals(dateyyyyMMddTHHmmssSSSDateTimeFromString.valueDateTime
                .toString()));
      });
      test('dateyyyyMMddTHHmmssSSSFromString', () {
        expect(dateyyyyMMddTHHmmssSSSFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSFromString.toJson(),
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromString.toYaml(),
            equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSFromDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSFromDateTime.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssSSSFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSFromDateTime.toString(), equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmssSSSFromDateTime.toJson(),
            equals(
                dateyyyyMMddTHHmmssSSSFromDateTime.valueDateTime.toString()));
        expect(
            dateyyyyMMddTHHmmssSSSFromDateTime.toYaml(),
            equals(
                dateyyyyMMddTHHmmssSSSFromDateTime.valueDateTime.toString()));
      });
      test('dateyyyyMMddTHHmmssSSSFromJson', () {
        expect(dateyyyyMMddTHHmmssSSSFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSFromJson.toJson(),
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromJson.toYaml(),
            equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmssSSSDateTimeFromJson.toJson(),
            equals(dateyyyyMMddTHHmmssSSSDateTimeFromJson.valueDateTime
                .toString()));
        expect(
            dateyyyyMMddTHHmmssSSSDateTimeFromJson.toYaml(),
            equals(dateyyyyMMddTHHmmssSSSDateTimeFromJson.valueDateTime
                .toString()));
      });
      test('dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson', () {
        expect(
            dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson.toJson(),
            equals(dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson
                .valueDateTime
                .toString()));
        expect(
            dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson.toYaml(),
            equals(dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson
                .valueDateTime
                .toString()));
      });
      test('dateyyyyMMddTHHmmssSSSFromUnits', () {
        expect(dateyyyyMMddTHHmmssSSSFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSFromUnits.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSFromUnits.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddTHHmmssSSSFromUnits.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSFromUnits.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSFromUnits.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHmmssSSSFromYaml', () {
        expect(dateyyyyMMddTHHmmssSSSFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSFromYaml.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSFromYaml.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSFromYaml.toJson(),
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromYaml.toYaml(),
            equals(yyyyMMddTHHmmssSSS));
      });
    });

    final yyyyMMddTHHmmssSSSZ = '2012-01-31T12:30:59.010Z';
    final yyyyMMddTHHmmssSSSZDateTime =
        DateTime.utc(2012, 1, 31, 12, 30, 59, 10);
    final yyyyMMddTHHmmssSSSZDateTimeFromString =
        DateTime.parse('2012-01-31T12:30:59.010Z');

    group('yyyyMMddTHHmmssSSSZ - 2012-01-31T12:30:59.010Z', () {
      final dateyyyyMMddTHHmmssSSSZ = FhirDate(yyyyMMddTHHmmssSSSZ);

      test('dateyyyyMMddTHHmmssSSSZ', () {
        expect(dateyyyyMMddTHHmmssSSSZ.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZ.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZ.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime.toUtc()));
        expect(dateyyyyMMddTHHmmssSSSZ.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZ.toJson(), equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZ.toYaml(), equals(yyyyMMddTHHmmssSSSZ));
      });
      final dateyyyyMMddTHHmmssSSSZDateTime =
          FhirDate(yyyyMMddTHHmmssSSSZDateTime);

      test('dateyyyyMMddTHHmmssSSSZDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSZDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZDateTime.toJson(),
            equals(dateyyyyMMddTHHmmssSSSZDateTime.valueDateTime.toString()));
        expect(dateyyyyMMddTHHmmssSSSZDateTime.toYaml(),
            equals(dateyyyyMMddTHHmmssSSSZDateTime.valueDateTime.toString()));
      });
      final dateyyyyMMddTHHmmssSSSZDateTimeFromString =
          FhirDate(yyyyMMddTHHmmssSSSZDateTimeFromString);

      test('dateyyyyMMddTHHmmssSSSZDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromString.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromString.toString(),
            equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmssSSSZDateTimeFromString.toJson(),
            equals(dateyyyyMMddTHHmmssSSSZDateTimeFromString.valueDateTime
                .toString()));
        expect(
            dateyyyyMMddTHHmmssSSSZDateTimeFromString.toYaml(),
            equals(dateyyyyMMddTHHmmssSSSZDateTimeFromString.valueDateTime
                .toString()));
      });
      final dateyyyyMMddTHHmmssSSSZFromString =
          FhirDate.fromString(yyyyMMddTHHmmssSSSZ);

      test('dateyyyyMMddTHHmmssSSSZFromString', () {
        expect(dateyyyyMMddTHHmmssSSSZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZFromString.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromString.toYaml(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
      final dateyyyyMMddTHHmmssSSSZFromDateTime =
          FhirDate.fromDateTime(yyyyMMddTHHmmssSSSZDateTime);
      test('dateyyyyMMddTHHmmssSSSZFromDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSZFromDateTime.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssSSSZFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(
            dateyyyyMMddTHHmmssSSSZFromDateTime.toString(), equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmssSSSZFromDateTime.toJson(),
            equals(
                dateyyyyMMddTHHmmssSSSZFromDateTime.valueDateTime.toString()));
        expect(
            dateyyyyMMddTHHmmssSSSZFromDateTime.toYaml(),
            equals(
                dateyyyyMMddTHHmmssSSSZFromDateTime.valueDateTime.toString()));
      });
      final dateyyyyMMddTHHmmssSSSZFromJson =
          FhirDate.fromJson(yyyyMMddTHHmmssSSSZ);

      test('dateyyyyMMddTHHmmssSSSZFromJson', () {
        expect(dateyyyyMMddTHHmmssSSSZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZFromJson.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromJson.toYaml(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
      final dateyyyyMMddTHHmmssSSSZDateTimeFromJson =
          FhirDate.fromJson(yyyyMMddTHHmmssSSSZDateTime);

      test('dateyyyyMMddTHHmmssSSSZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmssSSSZDateTimeFromJson.toJson(),
            equals(dateyyyyMMddTHHmmssSSSZDateTimeFromJson.valueDateTime
                .toString()));
        expect(
            dateyyyyMMddTHHmmssSSSZDateTimeFromJson.toYaml(),
            equals(dateyyyyMMddTHHmmssSSSZDateTimeFromJson.valueDateTime
                .toString()));
      });
      final dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson =
          FhirDate.fromJson(yyyyMMddTHHmmssSSSZDateTimeFromString);

      test('dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson', () {
        expect(
            dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson.toJson(),
            equals(dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson
                .valueDateTime
                .toString()));
        expect(
            dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson.toYaml(),
            equals(dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson
                .valueDateTime
                .toString()));
      });
      final dateyyyyMMddTHHmmssSSSZFromUnits =
          FhirDate.fromUnits(year: 2012, month: 1, day: 31);
      test('dateyyyyMMddTHHmmssSSSZFromUnits', () {
        expect(dateyyyyMMddTHHmmssSSSZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZFromUnits.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZFromUnits.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddTHHmmssSSSZFromUnits.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZFromUnits.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZFromUnits.toYaml(), equals(yyyyMMdd));
      });
      final dateyyyyMMddTHHmmssSSSZFromYaml =
          FhirDate.fromYaml(yyyyMMddTHHmmssSSSZ);

      test('dateyyyyMMddTHHmmssSSSZFromYaml', () {
        expect(dateyyyyMMddTHHmmssSSSZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZFromYaml.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZFromYaml.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZFromYaml.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromYaml.toYaml(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
    });

    final yyyyMMddTHHmmssSSSZZ = '2012-01-31T12:30:59.100$timezoneOffsetString';
    final yyyyMMddTHHmmssSSSZZDateTime = DateTime(2012, 1, 31, 12, 30, 59, 100);
    final yyyyMMddTHHmmssSSSZZDateTimeFromString =
        DateTime.parse('2012-01-31T12:30:59.100$timezoneOffsetString');

    final dateyyyyMMddTHHmmssSSSZZ = FhirDate(yyyyMMddTHHmmssSSSZZ);
    final dateyyyyMMddTHHmmssSSSZZDateTime =
        FhirDate(yyyyMMddTHHmmssSSSZZDateTime);
    final dateyyyyMMddTHHmmssSSSZZDateTimeFromString =
        FhirDate(yyyyMMddTHHmmssSSSZZDateTimeFromString);
    final dateyyyyMMddTHHmmssSSSZZFromString =
        FhirDate.fromString(yyyyMMddTHHmmssSSSZZ);
    final dateyyyyMMddTHHmmssSSSZZFromDateTime =
        FhirDate.fromDateTime(yyyyMMddTHHmmssSSSZZDateTime);
    final dateyyyyMMddTHHmmssSSSZZFromJson =
        FhirDate.fromJson(yyyyMMddTHHmmssSSSZZ);
    final dateyyyyMMddTHHmmssSSSZZDateTimeFromJson =
        FhirDate.fromJson(yyyyMMddTHHmmssSSSZZDateTime);
    final dateyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson =
        FhirDate.fromJson(yyyyMMddTHHmmssSSSZZDateTimeFromString);
    final dateyyyyMMddTHHmmssSSSZZFromUnits =
        FhirDate.fromUnits(year: 2012, month: 1, day: 31);
    final dateyyyyMMddTHHmmssSSSZZFromYaml =
        FhirDate.fromYaml(yyyyMMddTHHmmssSSSZZ);

    group('yyyyMMddTHHmmssSSSZZ - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHmmssSSSZZ', () {
        expect(dateyyyyMMddTHHmmssSSSZZ.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZ.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZZ.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime.toUtc()));
        expect(dateyyyyMMddTHHmmssSSSZZ.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZZ.toJson(), equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZ.toYaml(), equals(yyyyMMddTHHmmssSSSZZ));
      });
      test('dateyyyyMMddTHHmmssSSSZZDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSZZDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZZDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZZDateTime.toJson(),
            equals(dateyyyyMMddTHHmmssSSSZZDateTime.valueDateTime.toString()));
        expect(dateyyyyMMddTHHmmssSSSZZDateTime.toYaml(),
            equals(dateyyyyMMddTHHmmssSSSZZDateTime.valueDateTime.toString()));
      });
      test('dateyyyyMMddTHHmmssSSSZZDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromString.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime.toUtc()));
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromString.toString(),
            equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmssSSSZZDateTimeFromString.toJson(),
            equals(dateyyyyMMddTHHmmssSSSZZDateTimeFromString.valueDateTime
                .toString()));
        expect(
            dateyyyyMMddTHHmmssSSSZZDateTimeFromString.toYaml(),
            equals(dateyyyyMMddTHHmmssSSSZZDateTimeFromString.valueDateTime
                .toString()));
      });
      test('dateyyyyMMddTHHmmssSSSZZFromString', () {
        expect(dateyyyyMMddTHHmmssSSSZZFromString.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssSSSZZFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime.toUtc()));
        expect(dateyyyyMMddTHHmmssSSSZZFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZZFromString.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromString.toYaml(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
      test('dateyyyyMMddTHHmmssSSSZZFromDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSZZFromDateTime.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssSSSZZFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(
            dateyyyyMMddTHHmmssSSSZZFromDateTime.toString(), equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmssSSSZZFromDateTime.toJson(),
            equals(
                dateyyyyMMddTHHmmssSSSZZFromDateTime.valueDateTime.toString()));
        expect(
            dateyyyyMMddTHHmmssSSSZZFromDateTime.toYaml(),
            equals(
                dateyyyyMMddTHHmmssSSSZZFromDateTime.valueDateTime.toString()));
      });
      test('dateyyyyMMddTHHmmssSSSZZFromJson', () {
        expect(dateyyyyMMddTHHmmssSSSZZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZZFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime.toUtc()));
        expect(dateyyyyMMddTHHmmssSSSZZFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZZFromJson.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromJson.toYaml(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
      test('dateyyyyMMddTHHmmssSSSZZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmssSSSZZDateTimeFromJson.toJson(),
            equals(dateyyyyMMddTHHmmssSSSZZDateTimeFromJson.valueDateTime
                .toString()));
        expect(
            dateyyyyMMddTHHmmssSSSZZDateTimeFromJson.toYaml(),
            equals(dateyyyyMMddTHHmmssSSSZZDateTimeFromJson.valueDateTime
                .toString()));
      });
      test('dateyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson', () {
        expect(
            dateyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime.toUtc()));
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson.toJson(),
            equals(dateyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson
                .valueDateTime
                .toString()));
        expect(
            dateyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson.toYaml(),
            equals(dateyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson
                .valueDateTime
                .toString()));
      });
      test('dateyyyyMMddTHHmmssSSSZZFromUnits', () {
        expect(dateyyyyMMddTHHmmssSSSZZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZFromUnits.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZZFromUnits.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZFromUnits.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZZFromUnits.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZZFromUnits.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHmmssSSSZZFromYaml', () {
        expect(dateyyyyMMddTHHmmssSSSZZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZFromYaml.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZZFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime.toUtc()));
        expect(dateyyyyMMddTHHmmssSSSZZFromYaml.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZZFromYaml.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromYaml.toYaml(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
    });

    final instant = '2012-01-31T12:30:59.111$timezoneOffsetString';
    final instantDateTime = DateTime(2012, 1, 31, 12, 30, 59, 111);
    final instantDateTimeFromString =
        DateTime.parse('2012-01-31T12:30:59.111$timezoneOffsetString');

    final dateInstant = FhirDate(instant);
    final dateInstantDateTime = FhirDate(instantDateTime);
    final dateInstantDateTimeFromString = FhirDate(instantDateTimeFromString);
    final dateInstantFromString = FhirDate.fromString(instant);
    final dateInstantFromDateTime = FhirDate.fromDateTime(instantDateTime);
    final dateInstantFromJson = FhirDate.fromJson(instant);
    final dateInstantDateTimeFromJson = FhirDate.fromJson(instantDateTime);
    final dateInstantDateTimeFromStringFromJson =
        FhirDate.fromJson(instantDateTimeFromString);
    final dateInstantFromUnits = FhirDate.fromUnits(
        year: 2012, month: 1, day: 31, timezoneOffset: timezoneOffsetInt);
    final dateInstantFromYaml = FhirDate.fromYaml(instant);
    group('dateInstant - 2012-01-31T12:30+04:00', () {
      test('dateInstant', () {
        expect(dateInstant.isValid, isTrue);
        expect(dateInstant.valueString, equals(yyyyMMdd));
        expect(dateInstant.valueDateTime, equals(instantDateTime.toUtc()));
        expect(dateInstant.toString(), equals(yyyyMMdd));
        expect(dateInstant.toJson(), equals(instant));
        expect(dateInstant.toYaml(), equals(instant));
      });
      test('dateInstantDateTime', () {
        expect(dateInstantDateTime.isValid, isTrue);
        expect(dateInstantDateTime.valueString, equals(yyyyMMdd));
        expect(dateInstantDateTime.valueDateTime, equals(instantDateTime));
        expect(dateInstantDateTime.toString(), equals(yyyyMMdd));
        expect(dateInstantDateTime.toJson(),
            equals(dateInstantDateTime.valueDateTime.toString()));
        expect(dateInstantDateTime.toYaml(),
            equals(dateInstantDateTime.valueDateTime.toString()));
      });
      test('dateInstantDateTimeFromString', () {
        expect(dateInstantDateTimeFromString.isValid, isTrue);
        expect(dateInstantDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(dateInstantDateTimeFromString.valueDateTime,
            equals(instantDateTime.toUtc()));
        expect(dateInstantDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(dateInstantDateTimeFromString.toJson(),
            equals(dateInstantDateTimeFromString.valueDateTime.toString()));
        expect(dateInstantDateTimeFromString.toYaml(),
            equals(dateInstantDateTimeFromString.valueDateTime.toString()));
      });
      test('dateInstantFromString', () {
        expect(dateInstantFromString.isValid, isTrue);
        expect(dateInstantFromString.valueString, equals(yyyyMMdd));
        expect(dateInstantFromString.valueDateTime,
            equals(instantDateTime.toUtc()));
        expect(dateInstantFromString.toString(), equals(yyyyMMdd));
        expect(dateInstantFromString.toJson(), equals(instant));
        expect(dateInstantFromString.toYaml(), equals(instant));
      });
      test('dateInstantFromDateTime', () {
        expect(dateInstantFromDateTime.isValid, isTrue);
        expect(dateInstantFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateInstantFromDateTime.valueDateTime, equals(instantDateTime));
        expect(dateInstantFromDateTime.toString(), equals(yyyyMMdd));
        expect(dateInstantFromDateTime.toJson(),
            equals(dateInstantFromDateTime.valueDateTime.toString()));
        expect(dateInstantFromDateTime.toYaml(),
            equals(dateInstantFromDateTime.valueDateTime.toString()));
      });
      test('dateInstantFromJson', () {
        expect(dateInstantFromJson.isValid, isTrue);
        expect(dateInstantFromJson.valueString, equals(yyyyMMdd));
        expect(
            dateInstantFromJson.valueDateTime, equals(instantDateTime.toUtc()));
        expect(dateInstantFromJson.toString(), equals(yyyyMMdd));
        expect(dateInstantFromJson.toJson(), equals(instant));
        expect(dateInstantFromJson.toYaml(), equals(instant));
      });
      test('dateInstantDateTimeFromJson', () {
        expect(dateInstantDateTimeFromJson.isValid, isTrue);
        expect(dateInstantDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(
            dateInstantDateTimeFromJson.valueDateTime, equals(instantDateTime));
        expect(dateInstantDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(dateInstantDateTimeFromJson.toJson(),
            equals(dateInstantDateTimeFromJson.valueDateTime.toString()));
        expect(dateInstantDateTimeFromJson.toYaml(),
            equals(dateInstantDateTimeFromJson.valueDateTime.toString()));
      });
      test('dateInstantDateTimeFromStringFromJson', () {
        expect(dateInstantDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateInstantDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateInstantDateTimeFromStringFromJson.valueDateTime,
            equals(instantDateTime.toUtc()));
        expect(
            dateInstantDateTimeFromStringFromJson.toString(), equals(yyyyMMdd));
        expect(
            dateInstantDateTimeFromStringFromJson.toJson(),
            equals(dateInstantDateTimeFromStringFromJson.valueDateTime
                .toString()));
        expect(
            dateInstantDateTimeFromStringFromJson.toYaml(),
            equals(dateInstantDateTimeFromStringFromJson.valueDateTime
                .toString()));
      });
      test('dateInstantFromUnits', () {
        expect(dateInstantFromUnits.isValid, isTrue);
        // expect(dateInstantFromUnits.valueString, equals(yyyyMMdd));
        expect(dateInstantFromUnits.valueDateTime,
            equals(yyyyMMddDateTime.toUtc()));
        expect(dateInstantFromUnits.toString(), equals(yyyyMMdd));
        expect(dateInstantFromUnits.toJson(), equals(yyyyMMdd));
        expect(dateInstantFromUnits.toYaml(), equals(yyyyMMdd));
      });
      test('dateInstantFromYaml', () {
        expect(dateInstantFromYaml.isValid, isTrue);
        expect(dateInstantFromYaml.valueString, equals(yyyyMMdd));
        expect(dateInstantFromYaml.valueDateTime, equals(instantDateTime));
        expect(dateInstantFromYaml.toString(), equals(yyyyMMdd));
        expect(dateInstantFromYaml.toJson(), equals(instant));
        expect(dateInstantFromYaml.toYaml(), equals(instant));
      });
    });

    final dateTime = '2012-01-31T12:30:59.111111$timezoneOffsetString';
    final dateTimeDateTime = DateTime(2012, 1, 31, 12, 30, 59, 111);
    final dateTimeDateTimeFromString =
        DateTime.parse('2012-01-31T12:30:59.111111$timezoneOffsetString');

    group('DateTime - 2012-01-31T12:30+04:00', () {
      final dateDateTime = FhirDate(dateTime);

      test('dateDateTime', () {
        expect(dateDateTime.isValid, isTrue);
        expect(dateDateTime.valueString, equals(yyyyMMdd));
        expect(dateDateTime.valueDateTime, equals(dateTimeDateTime.toUtc()));
        expect(dateDateTime.toString(), equals(yyyyMMdd));
        expect(dateDateTime.toJson(),
            equals(dateDateTime.valueDateTime.toString()));
        expect(dateDateTime.toYaml(),
            equals(dateDateTime.valueDateTime.toString()));
      });
      final dateDateTimeDateTime = FhirDate(dateTimeDateTime);

      test('dateDateTimeDateTime', () {
        expect(dateDateTimeDateTime.isValid, isTrue);
        expect(dateDateTimeDateTime.valueString, equals(yyyyMMdd));
        expect(dateDateTimeDateTime.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeDateTime.toString(), equals(yyyyMMdd));
        expect(dateDateTimeDateTime.toJson(), equals(dateTime));
        expect(dateDateTimeDateTime.toYaml(), equals(dateTime));
      });
      final dateDateTimeDateTimeFromString =
          FhirDate(dateTimeDateTimeFromString);

      test('dateDateTimeDateTimeFromString', () {
        expect(dateDateTimeDateTimeFromString.isValid, isTrue);
        expect(dateDateTimeDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(dateDateTimeDateTimeFromString.valueDateTime,
            equals(dateTimeDateTime));
        expect(dateDateTimeDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(dateDateTimeDateTimeFromString.toJson(),
            equals(dateDateTimeDateTimeFromString.valueDateTime.toString()));
        expect(dateDateTimeDateTimeFromString.toYaml(),
            equals(dateDateTimeDateTimeFromString.valueDateTime.toString()));
      });
      final dateDateTimeFromString = FhirDate.fromString(dateTime);

      test('dateDateTimeFromString', () {
        expect(dateDateTimeFromString.isValid, isTrue);
        expect(dateDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(dateDateTimeFromString.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(dateDateTimeFromString.toJson(), equals(dateTime));
        expect(dateDateTimeFromString.toYaml(), equals(dateTime));
      });
      final dateDateTimeFromDateTime = FhirDate.fromDateTime(dateTimeDateTime);

      test('dateDateTimeFromDateTime', () {
        expect(dateDateTimeFromDateTime.isValid, isTrue);
        expect(dateDateTimeFromDateTime.valueString, equals(yyyyMMdd));
        expect(
            dateDateTimeFromDateTime.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeFromDateTime.toString(), equals(yyyyMMdd));
        expect(dateDateTimeFromDateTime.toJson(),
            equals(dateDateTimeFromDateTime.valueDateTime.toString()));
        expect(dateDateTimeFromDateTime.toYaml(),
            equals(dateDateTimeFromDateTime.valueDateTime.toString()));
      });
      final dateDateTimeFromJson = FhirDate.fromJson(dateTime);

      test('dateDateTimeFromJson', () {
        expect(dateDateTimeFromJson.isValid, isTrue);
        expect(dateDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(dateDateTimeFromJson.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(dateDateTimeFromJson.toJson(),
            equals(dateDateTimeFromJson.valueDateTime.toString()));
        expect(dateDateTimeFromJson.toYaml(), equals(dateTime));
      });
      final dateDateTimeDateTimeFromJson =
          FhirDate.fromJson(dateDateTimeFromJson.valueDateTime.toString());

      test('dateDateTimeDateTimeFromJson', () {
        expect(dateDateTimeDateTimeFromJson.isValid, isTrue);
        expect(dateDateTimeDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(dateDateTimeDateTimeFromJson.valueDateTime,
            equals(dateTimeDateTime));
        expect(dateDateTimeDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(dateDateTimeDateTimeFromJson.toJson(),
            equals(dateDateTimeDateTimeFromJson.valueDateTime.toString()));
        expect(dateDateTimeDateTimeFromJson.toYaml(),
            equals(dateDateTimeDateTimeFromJson.valueDateTime.toString()));
      });
      final dateDateTimeDateTimeFromStringFromJson =
          FhirDate.fromJson(dateTimeDateTimeFromString);

      test('dateDateTimeDateTimeFromStringFromJson', () {
        expect(dateDateTimeDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateDateTimeDateTimeFromStringFromJson.valueString,
            equals(dateTime));
        expect(dateDateTimeDateTimeFromStringFromJson.valueDateTime,
            equals(dateTimeDateTime));
        expect(dateDateTimeDateTimeFromStringFromJson.toString(),
            equals(dateTime));
        expect(
            dateDateTimeDateTimeFromStringFromJson.toJson(), equals(dateTime));
        expect(
            dateDateTimeDateTimeFromStringFromJson.toYaml(), equals(dateTime));
      });
      final dateDateTimeFromUnits =
          FhirDate.fromUnits(year: 2012, month: 1, day: 31);

      test('dateDateTimeFromUnits', () {
        expect(dateDateTimeFromUnits.isValid, isTrue);
        expect(dateDateTimeFromUnits.valueString, equals(yyyyMMdd));
        expect(dateDateTimeFromUnits.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeFromUnits.toString(), equals(yyyyMMdd));
        expect(dateDateTimeFromUnits.toJson(), equals(yyyyMMdd));
        expect(dateDateTimeFromUnits.toYaml(), equals(yyyyMMdd));
      });
      final dateDateTimeFromYaml = FhirDate.fromYaml(dateTime);
      test('dateDateTimeFromYaml', () {
        expect(dateDateTimeFromYaml.isValid, isTrue);
        expect(dateDateTimeFromYaml.valueString, equals(yyyyMMdd));
        expect(dateDateTimeFromYaml.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeFromYaml.toString(), equals(yyyyMMdd));
        expect(dateDateTimeFromYaml.toJson(), equals(dateTime));
        expect(dateDateTimeFromYaml.toYaml(), equals(dateTime));
      });
    });
  });
}

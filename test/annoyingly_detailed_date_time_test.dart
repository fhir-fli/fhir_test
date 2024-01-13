import 'package:fhir/primitive_types/date_time.dart';
import 'package:fhir/primitive_types/date_time_precision.dart';
import 'package:test/test.dart';

void main() {
  final yyyyMMddTZ = '2012-01-31T';
  final yyyyMMddTzzDateTime = DateTime(2012, 1, 31);
  final yyyyMMddTzzDateTimeFromString = DateTime.parse('2012-01-31');
  final yyyyMMddTZZ = '2012-01-31T-04:00';
  final yyyyMMddTZZDateTime = DateTime(2012, 1, 31);
  final yyyyMMddTZZDateTimeFromString = DateTime.parse('2012-01-31');
  final yyyyMMddTHH = '2012-01-31T12';
  final yyyyMMddTHHDateTime = DateTime(2012, 1, 31, 12);
  final yyyyMMddTHHDateTimeFromString = DateTime.parse('2012-01-31T12');
  final yyyyMMddTHHZ = '2012-01-31T12Z';
  final yyyyMMddTHHZDateTime = DateTime(2012, 1, 31, 12);
  final yyyyMMddTHHZDateTimeFromString = DateTime.parse('2012-01-31T12Z');
  final yyyyMMddTHHZZ = '2012-01-31T12-04:00';
  final yyyyMMddTHHZZDateTime = DateTime(2012, 1, 31, 12);
  final yyyyMMddTHHZZDateTimeFromString = DateTime.parse('2012-01-31T12-04:00');
  final yyyyMMddTHHmm = '2012-01-31T12:30';
  final yyyyMMddTHHmmDateTime = DateTime(2012, 1, 31, 12, 30);
  final yyyyMMddTHHmmDateTimeFromString = DateTime.parse('2012-01-31T12:30');
  final yyyyMMddTHHmmZ = '2012-01-31T12:30Z';
  final yyyyMMddTHHmmZDateTime = DateTime(2012, 1, 31, 12, 30);
  final yyyyMMddTHHmmZDateTimeFromString = DateTime.parse('2012-01-31T12:30Z');
  final yyyyMMddTHHmmZZ = '2012-01-31T12:30-04:00';
  final yyyyMMddTHHmmZZDateTime = DateTime(2012, 1, 31, 12, 30);
  final yyyyMMddTHHmmZZDateTimeFromString =
      DateTime.parse('2012-01-31T12:30-04:00');
  final yyyyMMddTHHmmss = '2012-01-31T12:30:59';
  final yyyyMMddTHHmmssDateTime = DateTime(2012, 1, 31, 12, 30, 59);
  final yyyyMMddTHHmmssDateTimeFromString =
      DateTime.parse('2012-01-31T12:30:59');
  final yyyyMMddTHHmmssZ = '2012-01-31T12:30:59Z';
  final yyyyMMddTHHmmssZDateTime = DateTime(2012, 1, 31, 12, 30, 59);
  final yyyyMMddTHHmmssZDateTimeFromString =
      DateTime.parse('2012-01-31T12:30:59Z');
  final yyyyMMddTHHmmssZZ = '2012-01-31T12:30:59-04:00';
  final yyyyMMddTHHmmssZZDateTime = DateTime(2012, 1, 31, 12, 30, 59);
  final yyyyMMddTHHmmssZZDateTimeFromString =
      DateTime.parse('2012-01-31T12:30:59-04:00');
  final yyyyMMddTHHmmssSSS = '2012-01-31T12:30:59.001';
  final yyyyMMddTHHmmssSSSDateTime = DateTime(2012, 1, 31, 12, 30, 59, 1);
  final yyyyMMddTHHmmssSSSDateTimeFromString =
      DateTime.parse('2012-01-31T12:30:59.001');
  final yyyyMMddTHHmmssSSSZ = '2012-01-31T12:30:59.010Z';
  final yyyyMMddTHHmmssSSSZDateTime = DateTime(2012, 1, 31, 12, 30, 59, 10);
  final yyyyMMddTHHmmssSSSZDateTimeFromString =
      DateTime.parse('2012-01-31T12:30:59.010Z');
  final yyyyMMddTHHmmssSSSZZ = '2012-01-31T12:30:59.100-04:00';
  final yyyyMMddTHHmmssSSSZZDateTime = DateTime(2012, 1, 31, 12, 30, 59, 100);
  final yyyyMMddTHHmmssSSSZZDateTimeFromString =
      DateTime.parse('2012-01-31T12:30:59.100-04:00');
  final instant = '2012-01-31T12:30:59.111-04:00';
  final instantDateTime = DateTime(2012, 1, 31, 12, 30, 59, 111);
  final instantDateTimeFromString =
      DateTime.parse('2012-01-31T12:30:59.111-04:00');
  final dateTime = '2012-01-31T12:30:59.11111-04:00';
  final dateTimeDateTime = DateTime(2012, 1, 31, 12, 30, 59, 111);
  final dateTimeDateTimeFromString =
      DateTime.parse('2012-01-31T12:30:59.11111-04:00');

  final dateyyyyMMddTZ = FhirDateTime(yyyyMMddTZ);
  final dateyyyyMMddTzzDateTime = FhirDateTime(yyyyMMddTzzDateTime);
  final dateyyyyMMddTzzDateTimeFromString =
      FhirDateTime(yyyyMMddTzzDateTimeFromString);
  final dateyyyyMMddTZFromString = FhirDateTime.fromString(yyyyMMddTZ);
  final dateyyyyMMddTZFromDateTime =
      FhirDateTime.fromDateTime(yyyyMMddTzzDateTime);
  final dateyyyyMMddTZFromJson = FhirDateTime.fromJson(yyyyMMddTZ);
  final dateyyyyMMddTzzDateTimeFromJson =
      FhirDateTime.fromJson(yyyyMMddTzzDateTime);
  final dateyyyyMMddTzzDateTimeFromStringFromJson =
      FhirDateTime.fromJson(yyyyMMddTzzDateTimeFromString);
  final dateyyyyMMddTZFromUnits =
      FhirDateTime.fromUnits(year: 2012, month: 1, day: 31);
  final dateyyyyMMddTZFromYaml = FhirDateTime.fromYaml(yyyyMMddTZ);
  final dateyyyyMMddTZZ = FhirDateTime(yyyyMMddTZZ);
  final dateyyyyMMddTZZDateTime = FhirDateTime(yyyyMMddTZZDateTime);
  final dateyyyyMMddTZZDateTimeFromString =
      FhirDateTime(yyyyMMddTZZDateTimeFromString);
  final dateyyyyMMddTZZFromString = FhirDateTime.fromString(yyyyMMddTZZ);
  final dateyyyyMMddTZZFromDateTime =
      FhirDateTime.fromDateTime(yyyyMMddTZZDateTime);
  final dateyyyyMMddTZZFromJson = FhirDateTime.fromJson(yyyyMMddTZZ);
  final dateyyyyMMddTZZDateTimeFromJson =
      FhirDateTime.fromJson(yyyyMMddTZZDateTime);
  final dateyyyyMMddTZZDateTimeFromStringFromJson =
      FhirDateTime.fromJson(yyyyMMddTZZDateTimeFromString);
  final dateyyyyMMddTZZFromUnits =
      FhirDateTime.fromUnits(year: 2012, month: 1, day: 31);
  final dateyyyyMMddTZZFromYaml = FhirDateTime.fromYaml(yyyyMMddTZZ);
  final dateyyyyMMddTHH = FhirDateTime(yyyyMMddTHH);
  final dateyyyyMMddTHHDateTime = FhirDateTime(yyyyMMddTHHDateTime);
  final dateyyyyMMddTHHDateTimeFromString =
      FhirDateTime(yyyyMMddTHHDateTimeFromString);
  final dateyyyyMMddTHHFromString = FhirDateTime.fromString(yyyyMMddTHH);
  final dateyyyyMMddTHHFromDateTime =
      FhirDateTime.fromDateTime(yyyyMMddTHHDateTime);
  final dateyyyyMMddTHHFromJson = FhirDateTime.fromJson(yyyyMMddTHH);
  final dateyyyyMMddTHHDateTimeFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHDateTime);
  final dateyyyyMMddTHHDateTimeFromStringFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHDateTimeFromString);
  final dateyyyyMMddTHHFromUnits =
      FhirDateTime.fromUnits(year: 2012, month: 1, day: 31);
  final dateyyyyMMddTHHFromYaml = FhirDateTime.fromYaml(yyyyMMddTHH);
  final dateyyyyMMddTHHZ = FhirDateTime(yyyyMMddTHHZ);
  final dateyyyyMMddTHHZDateTime = FhirDateTime(yyyyMMddTHHZDateTime);
  final dateyyyyMMddTHHZDateTimeFromString =
      FhirDateTime(yyyyMMddTHHZDateTimeFromString);
  final dateyyyyMMddTHHZFromString = FhirDateTime.fromString(yyyyMMddTHHZ);
  final dateyyyyMMddTHHZFromDateTime =
      FhirDateTime.fromDateTime(yyyyMMddTHHZDateTime);
  final dateyyyyMMddTHHZFromJson = FhirDateTime.fromJson(yyyyMMddTHHZ);
  final dateyyyyMMddTHHZDateTimeFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHZDateTime);
  final dateyyyyMMddTHHZDateTimeFromStringFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHZDateTimeFromString);
  final dateyyyyMMddTHHZFromUnits =
      FhirDateTime.fromUnits(year: 2012, month: 1, day: 31);
  final dateyyyyMMddTHHZFromYaml = FhirDateTime.fromYaml(yyyyMMddTHHZ);
  final dateyyyyMMddTHHZZ = FhirDateTime(yyyyMMddTHHZZ);
  final dateyyyyMMddTHHZZDateTime = FhirDateTime(yyyyMMddTHHZZDateTime);
  final dateyyyyMMddTHHZZDateTimeFromString =
      FhirDateTime(yyyyMMddTHHZZDateTimeFromString);
  final dateyyyyMMddTHHZZFromString = FhirDateTime.fromString(yyyyMMddTHHZZ);
  final dateyyyyMMddTHHZZFromDateTime =
      FhirDateTime.fromDateTime(yyyyMMddTHHZZDateTime);
  final dateyyyyMMddTHHZZFromJson = FhirDateTime.fromJson(yyyyMMddTHHZZ);
  final dateyyyyMMddTHHZZDateTimeFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHZZDateTime);
  final dateyyyyMMddTHHZZDateTimeFromStringFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHZZDateTimeFromString);
  final dateyyyyMMddTHHZZFromUnits =
      FhirDateTime.fromUnits(year: 2012, month: 1, day: 31);
  final dateyyyyMMddTHHZZFromYaml = FhirDateTime.fromYaml(yyyyMMddTHHZZ);
  final dateyyyyMMddTHHmm = FhirDateTime(yyyyMMddTHHmm);
  final dateyyyyMMddTHHmmDateTime = FhirDateTime(yyyyMMddTHHmmDateTime);
  final dateyyyyMMddTHHmmDateTimeFromString =
      FhirDateTime(yyyyMMddTHHmmDateTimeFromString);
  final dateyyyyMMddTHHmmFromString = FhirDateTime.fromString(yyyyMMddTHHmm);
  final dateyyyyMMddTHHmmFromDateTime =
      FhirDateTime.fromDateTime(yyyyMMddTHHmmDateTime);
  final dateyyyyMMddTHHmmFromJson = FhirDateTime.fromJson(yyyyMMddTHHmm);
  final dateyyyyMMddTHHmmDateTimeFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHmmDateTime);
  final dateyyyyMMddTHHmmDateTimeFromStringFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHmmDateTimeFromString);
  final dateyyyyMMddTHHmmFromUnits =
      FhirDateTime.fromUnits(year: 2012, month: 1, day: 31);
  final dateyyyyMMddTHHmmFromYaml = FhirDateTime.fromYaml(yyyyMMddTHHmm);
  final dateyyyyMMddTHHmmZ = FhirDateTime(yyyyMMddTHHmmZ);
  final dateyyyyMMddTHHmmZDateTime = FhirDateTime(yyyyMMddTHHmmZDateTime);
  final dateyyyyMMddTHHmmZDateTimeFromString =
      FhirDateTime(yyyyMMddTHHmmZDateTimeFromString);
  final dateyyyyMMddTHHmmZFromString = FhirDateTime.fromString(yyyyMMddTHHmmZ);
  final dateyyyyMMddTHHmmZFromDateTime =
      FhirDateTime.fromDateTime(yyyyMMddTHHmmZDateTime);
  final dateyyyyMMddTHHmmZFromJson = FhirDateTime.fromJson(yyyyMMddTHHmmZ);
  final dateyyyyMMddTHHmmZDateTimeFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHmmZDateTime);
  final dateyyyyMMddTHHmmZDateTimeFromStringFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHmmZDateTimeFromString);
  final dateyyyyMMddTHHmmZFromUnits =
      FhirDateTime.fromUnits(year: 2012, month: 1, day: 31);
  final dateyyyyMMddTHHmmZFromYaml = FhirDateTime.fromYaml(yyyyMMddTHHmmZ);
  final dateyyyyMMddTHHmmZZ = FhirDateTime(yyyyMMddTHHmmZZ);
  final dateyyyyMMddTHHmmZZDateTime = FhirDateTime(yyyyMMddTHHmmZZDateTime);
  final dateyyyyMMddTHHmmZZDateTimeFromString =
      FhirDateTime(yyyyMMddTHHmmZZDateTimeFromString);
  final dateyyyyMMddTHHmmZZFromString =
      FhirDateTime.fromString(yyyyMMddTHHmmZZ);
  final dateyyyyMMddTHHmmZZFromDateTime =
      FhirDateTime.fromDateTime(yyyyMMddTHHmmZZDateTime);
  final dateyyyyMMddTHHmmZZFromJson = FhirDateTime.fromJson(yyyyMMddTHHmmZZ);
  final dateyyyyMMddTHHmmZZDateTimeFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHmmZZDateTime);
  final dateyyyyMMddTHHmmZZDateTimeFromStringFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHmmZZDateTimeFromString);
  final dateyyyyMMddTHHmmZZFromUnits =
      FhirDateTime.fromUnits(year: 2012, month: 1, day: 31);
  final dateyyyyMMddTHHmmZZFromYaml = FhirDateTime.fromYaml(yyyyMMddTHHmmZZ);
  final dateyyyyMMddTHHmmss = FhirDateTime(yyyyMMddTHHmmss);
  final dateyyyyMMddTHHmmssDateTime = FhirDateTime(yyyyMMddTHHmmssDateTime);
  final dateyyyyMMddTHHmmssDateTimeFromString =
      FhirDateTime(yyyyMMddTHHmmssDateTimeFromString);
  final dateyyyyMMddTHHmmssFromString =
      FhirDateTime.fromString(yyyyMMddTHHmmss);
  final dateyyyyMMddTHHmmssFromDateTime =
      FhirDateTime.fromDateTime(yyyyMMddTHHmmssDateTime);
  final dateyyyyMMddTHHmmssFromJson = FhirDateTime.fromJson(yyyyMMddTHHmmss);
  final dateyyyyMMddTHHmmssDateTimeFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHmmssDateTime);
  final dateyyyyMMddTHHmmssDateTimeFromStringFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHmmssDateTimeFromString);
  final dateyyyyMMddTHHmmssFromUnits =
      FhirDateTime.fromUnits(year: 2012, month: 1, day: 31);
  final dateyyyyMMddTHHmmssFromYaml = FhirDateTime.fromYaml(yyyyMMddTHHmmss);
  final dateyyyyMMddTHHmmssZ = FhirDateTime(yyyyMMddTHHmmssZ);
  final dateyyyyMMddTHHmmssZDateTime = FhirDateTime(yyyyMMddTHHmmssZDateTime);
  final dateyyyyMMddTHHmmssZDateTimeFromString =
      FhirDateTime(yyyyMMddTHHmmssZDateTimeFromString);
  final dateyyyyMMddTHHmmssZFromString =
      FhirDateTime.fromString(yyyyMMddTHHmmssZ);
  final dateyyyyMMddTHHmmssZFromDateTime =
      FhirDateTime.fromDateTime(yyyyMMddTHHmmssZDateTime);
  final dateyyyyMMddTHHmmssZFromJson = FhirDateTime.fromJson(yyyyMMddTHHmmssZ);
  final dateyyyyMMddTHHmmssZDateTimeFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHmmssZDateTime);
  final dateyyyyMMddTHHmmssZDateTimeFromStringFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHmmssZDateTimeFromString);
  final dateyyyyMMddTHHmmssZFromUnits =
      FhirDateTime.fromUnits(year: 2012, month: 1, day: 31);
  final dateyyyyMMddTHHmmssZFromYaml = FhirDateTime.fromYaml(yyyyMMddTHHmmssZ);
  final dateyyyyMMddTHHmmssZZ = FhirDateTime(yyyyMMddTHHmmssZZ);
  final dateyyyyMMddTHHmmssZZDateTime = FhirDateTime(yyyyMMddTHHmmssZZDateTime);
  final dateyyyyMMddTHHmmssZZDateTimeFromString =
      FhirDateTime(yyyyMMddTHHmmssZZDateTimeFromString);
  final dateyyyyMMddTHHmmssZZFromString =
      FhirDateTime.fromString(yyyyMMddTHHmmssZZ);
  final dateyyyyMMddTHHmmssZZFromDateTime =
      FhirDateTime.fromDateTime(yyyyMMddTHHmmssZZDateTime);
  final dateyyyyMMddTHHmmssZZFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHmmssZZ);
  final dateyyyyMMddTHHmmssZZDateTimeFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHmmssZZDateTime);
  final dateyyyyMMddTHHmmssZZDateTimeFromStringFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHmmssZZDateTimeFromString);
  final dateyyyyMMddTHHmmssZZFromUnits =
      FhirDateTime.fromUnits(year: 2012, month: 1, day: 31);
  final dateyyyyMMddTHHmmssZZFromYaml =
      FhirDateTime.fromYaml(yyyyMMddTHHmmssZZ);
  final dateyyyyMMddTHHmmssSSS = FhirDateTime(yyyyMMddTHHmmssSSS);
  final dateyyyyMMddTHHmmssSSSDateTime =
      FhirDateTime(yyyyMMddTHHmmssSSSDateTime);
  final dateyyyyMMddTHHmmssSSSDateTimeFromString =
      FhirDateTime(yyyyMMddTHHmmssSSSDateTimeFromString);
  final dateyyyyMMddTHHmmssSSSFromString =
      FhirDateTime.fromString(yyyyMMddTHHmmssSSS);
  final dateyyyyMMddTHHmmssSSSFromDateTime =
      FhirDateTime.fromDateTime(yyyyMMddTHHmmssSSSDateTime);
  final dateyyyyMMddTHHmmssSSSFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHmmssSSS);
  final dateyyyyMMddTHHmmssSSSDateTimeFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHmmssSSSDateTime);
  final dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHmmssSSSDateTimeFromString);
  final dateyyyyMMddTHHmmssSSSFromUnits =
      FhirDateTime.fromUnits(year: 2012, month: 1, day: 31);
  final dateyyyyMMddTHHmmssSSSFromYaml =
      FhirDateTime.fromYaml(yyyyMMddTHHmmssSSS);
  final dateyyyyMMddTHHmmssSSSZ = FhirDateTime(yyyyMMddTHHmmssSSSZ);
  final dateyyyyMMddTHHmmssSSSZDateTime =
      FhirDateTime(yyyyMMddTHHmmssSSSZDateTime);
  final dateyyyyMMddTHHmmssSSSZDateTimeFromString =
      FhirDateTime(yyyyMMddTHHmmssSSSZDateTimeFromString);
  final dateyyyyMMddTHHmmssSSSZFromString =
      FhirDateTime.fromString(yyyyMMddTHHmmssSSSZ);
  final dateyyyyMMddTHHmmssSSSZFromDateTime =
      FhirDateTime.fromDateTime(yyyyMMddTHHmmssSSSZDateTime);
  final dateyyyyMMddTHHmmssSSSZFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHmmssSSSZ);
  final dateyyyyMMddTHHmmssSSSZDateTimeFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHmmssSSSZDateTime);
  final dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHmmssSSSZDateTimeFromString);
  final dateyyyyMMddTHHmmssSSSZFromUnits =
      FhirDateTime.fromUnits(year: 2012, month: 1, day: 31);
  final dateyyyyMMddTHHmmssSSSZFromYaml =
      FhirDateTime.fromYaml(yyyyMMddTHHmmssSSSZ);
  final dateyyyyMMddTHHmmssSSSZZ = FhirDateTime(yyyyMMddTHHmmssSSSZZ);
  final dateyyyyMMddTHHmmssSSSZZDateTime =
      FhirDateTime(yyyyMMddTHHmmssSSSZZDateTime);
  final dateyyyyMMddTHHmmssSSSZZDateTimeFromString =
      FhirDateTime(yyyyMMddTHHmmssSSSZZDateTimeFromString);
  final dateyyyyMMddTHHmmssSSSZZFromString =
      FhirDateTime.fromString(yyyyMMddTHHmmssSSSZZ);
  final dateyyyyMMddTHHmmssSSSZZFromDateTime =
      FhirDateTime.fromDateTime(yyyyMMddTHHmmssSSSZZDateTime);
  final dateyyyyMMddTHHmmssSSSZZFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHmmssSSSZZ);
  final dateyyyyMMddTHHmmssSSSZZDateTimeFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHmmssSSSZZDateTime);
  final dateyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson =
      FhirDateTime.fromJson(yyyyMMddTHHmmssSSSZZDateTimeFromString);
  final dateyyyyMMddTHHmmssSSSZZFromUnits =
      FhirDateTime.fromUnits(year: 2012, month: 1, day: 31);
  final dateyyyyMMddTHHmmssSSSZZFromYaml =
      FhirDateTime.fromYaml(yyyyMMddTHHmmssSSSZZ);
  final dateInstant = FhirDateTime(instant);
  final dateInstantDateTime = FhirDateTime(instantDateTime);
  final dateInstantDateTimeFromString = FhirDateTime(instantDateTimeFromString);
  final dateInstantFromString = FhirDateTime.fromString(instant);
  final dateInstantFromDateTime = FhirDateTime.fromDateTime(instantDateTime);
  final dateInstantFromJson = FhirDateTime.fromJson(instant);
  final dateInstantDateTimeFromJson = FhirDateTime.fromJson(instantDateTime);
  final dateInstantDateTimeFromStringFromJson =
      FhirDateTime.fromJson(instantDateTimeFromString);
  final dateInstantFromUnits =
      FhirDateTime.fromUnits(year: 2012, month: 1, day: 31);
  final dateInstantFromYaml = FhirDateTime.fromYaml(instant);
  final dateDateTime = FhirDateTime(dateTime);
  final dateDateTimeDateTime = FhirDateTime(dateTimeDateTime);
  final dateDateTimeDateTimeFromString =
      FhirDateTime(dateTimeDateTimeFromString);
  final dateDateTimeFromString = FhirDateTime.fromString(dateTime);
  final dateDateTimeFromDateTime = FhirDateTime.fromDateTime(dateTimeDateTime);
  final dateDateTimeFromJson = FhirDateTime.fromJson(dateTime);
  final dateDateTimeDateTimeFromJson = FhirDateTime.fromJson(dateTimeDateTime);
  final dateDateTimeDateTimeFromStringFromJson =
      FhirDateTime.fromJson(dateTimeDateTimeFromString);
  final dateDateTimeFromUnits =
      FhirDateTime.fromUnits(year: 2012, month: 1, day: 31);
  final dateDateTimeFromYaml = FhirDateTime.fromYaml(dateTime);
  group('FhirDateTime Tests', () {
    final yyyy = '2012';
    final yyyyDateTime = DateTime(2012);
    final yyyyDateTimeFromString = DateTime.parse('2012-01-01');
    group('yyyy - 2012', () {
      final dateyyyy = FhirDateTime(yyyy);
      test('dateyyyy', () {
        expect(dateyyyy.isValid, isTrue);
        expect(dateyyyy.valueString, equals(yyyy));
        expect(dateyyyy.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyy.toJson(), equals(yyyy));
      });
      final dateyyyyDateTime = FhirDateTime(yyyyDateTime);
      test('dateyyyyDateTime', () {
        expect(dateyyyyDateTime.isValid, isTrue);
        expect(dateyyyyDateTime.valueString,
            equals(yyyyDateTime.toIso8601String()));
        expect(dateyyyyDateTime.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyDateTime.toJson(), equals(yyyyDateTime.toString()));
      });
      final dateyyyyDateTimeFromString =
          FhirDateTime(yyyyDateTimeFromString, DateTimePrecision.yyyy);
      test('dateyyyyDateTimeFromString', () {
        expect(dateyyyyDateTimeFromString.isValid, isTrue);
        expect(dateyyyyDateTimeFromString.valueString, equals(yyyy));
        expect(dateyyyyDateTimeFromString.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyDateTimeFromString.toJson(), equals(yyyy));
      });
      final dateyyyyFromString = FhirDateTime.fromString(yyyy);
      test('dateyyyyFromString', () {
        expect(dateyyyyFromString.isValid, isTrue);
        expect(dateyyyyFromString.valueString, equals(yyyy));
        expect(dateyyyyFromString.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromString.toJson(), equals(yyyy));
      });
      final dateyyyyFromDateTime =
          FhirDateTime.fromDateTime(yyyyDateTime, DateTimePrecision.yyyy);
      test('dateyyyyFromDateTime', () {
        expect(dateyyyyFromDateTime.isValid, isTrue);
        expect(dateyyyyFromDateTime.valueString, equals(yyyy));
        expect(dateyyyyFromDateTime.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromDateTime.toJson(), equals(yyyy));
      });
      final dateyyyyFromJson = FhirDateTime.fromJson(yyyy);
      test('dateyyyyFromJson', () {
        expect(dateyyyyFromJson.isValid, isTrue);
        expect(dateyyyyFromJson.valueString, equals(yyyy));
        expect(dateyyyyFromJson.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromJson.toJson(), equals(yyyy));
      });
      final dateyyyyDateTimeFromJson =
          FhirDateTime.fromJson(yyyyDateTime, DateTimePrecision.yyyy);
      test('dateyyyyDateTimeFromJson', () {
        expect(dateyyyyDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyDateTimeFromJson.valueString, equals(yyyy));
        expect(dateyyyyDateTimeFromJson.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyDateTimeFromJson.toJson(), equals(yyyy));
      });
      final dateyyyyDateTimeFromStringFromJson =
          FhirDateTime.fromJson(yyyyDateTimeFromString);
      test('dateyyyyDateTimeFromStringFromJson', () {
        expect(dateyyyyDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyDateTimeFromStringFromJson.valueString,
            equals(yyyyDateTime.toIso8601String()));
        expect(dateyyyyDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyDateTime));
        expect(dateyyyyDateTimeFromStringFromJson.toJson(),
            equals(yyyyDateTime.toString()));
      });
      final dateyyyyFromUnits = FhirDateTime.fromUnits(year: 2012);

      test('dateyyyyFromUnits', () {
        expect(dateyyyyFromUnits.isValid, isTrue);
        expect(dateyyyyFromUnits.valueString, equals(yyyy));
        expect(dateyyyyFromUnits.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromUnits.toJson(), equals(yyyy));
      });
      final dateyyyyFromYaml = FhirDateTime.fromYaml(yyyy);
      test('dateyyyyFromYaml', () {
        expect(dateyyyyFromYaml.isValid, isTrue);
        expect(dateyyyyFromYaml.valueString, equals(yyyy));
        expect(dateyyyyFromYaml.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromYaml.toJson(), equals(yyyy));
      });
    });

    final yyyyMM = '2012-01';
    final yyyyMMDateTime = DateTime(2012, 1);
    final yyyyMMDateTimeFromString = DateTime.parse('2012-01-01');
    group('yyyyMM - 2012-01', () {
      final dateyyyyMM = FhirDateTime(yyyyMM);
      test('dateyyyyMM', () {
        expect(dateyyyyMM.isValid, isTrue);
        expect(dateyyyyMM.valueString, equals(yyyyMM));
        expect(dateyyyyMM.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMM.toJson(), equals(yyyyMM));
      });
      // TODO(Dokotela): reasonable that this test fails without specifying precision
      // in the constructor?
      final dateyyyyMMDateTime = FhirDateTime(yyyyMMDateTime);
      test('dateyyyyMMDateTime', () {
        expect(dateyyyyMMDateTime.isValid, isTrue);
        expect(dateyyyyMMDateTime.valueString,
            equals(yyyyMMDateTime.toIso8601String()));
        expect(dateyyyyMMDateTime.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMDateTime.toJson(), equals(yyyyMMDateTime.toString()));
      });
      final dateyyyyMMDateTimeFromString =
          FhirDateTime(yyyyMMDateTimeFromString, DateTimePrecision.yyyy_MM);
      test('dateyyyyMMDateTimeFromString', () {
        expect(dateyyyyMMDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMDateTimeFromString.valueString, equals(yyyyMM));
        expect(
            dateyyyyMMDateTimeFromString.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMDateTimeFromString.toJson(), equals(yyyyMM));
      });
      final dateyyyyMMFromString = FhirDateTime.fromString(yyyyMM);
      test('dateyyyyMMFromString', () {
        expect(dateyyyyMMFromString.isValid, isTrue);
        expect(dateyyyyMMFromString.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromString.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromString.toJson(), equals(yyyyMM));
      });
      final dateyyyyMMFromDateTime =
          FhirDateTime.fromDateTime(yyyyMMDateTime, DateTimePrecision.yyyy_MM);
      test('dateyyyyMMFromDateTime', () {
        expect(dateyyyyMMFromDateTime.isValid, isTrue);
        expect(dateyyyyMMFromDateTime.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromDateTime.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromDateTime.toJson(), equals(yyyyMM));
      });
      final dateyyyyMMFromJson = FhirDateTime.fromJson(yyyyMM);
      test('dateyyyyMMFromJson', () {
        expect(dateyyyyMMFromJson.isValid, isTrue);
        expect(dateyyyyMMFromJson.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromJson.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromJson.toJson(), equals(yyyyMM));
      });
      final dateyyyyMMDateTimeFromJson = FhirDateTime.fromJson(yyyyMMDateTime);
      test('dateyyyyMMDateTimeFromJson', () {
        expect(dateyyyyMMDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMDateTimeFromJson.valueString,
            equals(yyyyMMDateTime.toIso8601String()));
        expect(
            dateyyyyMMDateTimeFromJson.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMDateTimeFromJson.toJson(),
            equals(yyyyMMDateTime.toString()));
      });
      final dateyyyyMMDateTimeFromStringFromJson = FhirDateTime.fromJson(
          yyyyMMDateTimeFromString, DateTimePrecision.yyyy_MM);
      test('dateyyyyMMDateTimeFromStringFromJson', () {
        expect(dateyyyyMMDateTimeFromStringFromJson.isValid, isTrue);
        expect(
            dateyyyyMMDateTimeFromStringFromJson.valueString, equals(yyyyMM));
        expect(dateyyyyMMDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMDateTime));
        expect(dateyyyyMMDateTimeFromStringFromJson.toJson(), equals(yyyyMM));
      });
      final dateyyyyMMFromUnits = FhirDateTime.fromUnits(year: 2012, month: 1);
      test('dateyyyyMMFromUnits', () {
        expect(dateyyyyMMFromUnits.isValid, isTrue);
        expect(dateyyyyMMFromUnits.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromUnits.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromUnits.toJson(), equals(yyyyMM));
      });
      final dateyyyyMMFromYaml = FhirDateTime.fromYaml(yyyyMM);
      test('dateyyyyMMFromYaml', () {
        expect(dateyyyyMMFromYaml.isValid, isTrue);
        expect(dateyyyyMMFromYaml.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromYaml.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromYaml.toJson(), equals(yyyyMM));
      });
    });

    final yyyyMMdd = '2012-01-31';
    final yyyyMMddDateTime = DateTime(2012, 1, 31);
    final yyyyMMddDateTimeFromString = DateTime.parse('2012-01-31');
    group('yyyyMMdd - 2012-01-31', () {
      print('********************************************');
      final dateyyyyMMdd = FhirDateTime(yyyyMMdd);
      test('dateyyyyMMdd', () {
        expect(dateyyyyMMdd.isValid, isTrue);
        expect(dateyyyyMMdd.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMdd.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMdd.toJson(), equals(yyyyMMdd));
      });
      final dateyyyyMMddDateTime = FhirDateTime(yyyyMMddDateTime);
      test('dateyyyyMMddDateTime', () {
        expect(dateyyyyMMddDateTime.isValid, isTrue);
        expect(dateyyyyMMddDateTime.valueString,
            equals(yyyyMMddDateTime.toIso8601String()));
        expect(dateyyyyMMddDateTime.valueDateTime, equals(yyyyMMddDateTime));
        expect(
            dateyyyyMMddDateTime.toJson(), equals(yyyyMMddDateTime.toString()));
      });
      final dateyyyyMMddDateTimeFromString =
          FhirDateTime(yyyyMMddDateTimeFromString);
      test('dateyyyyMMddDateTimeFromString', () {
        expect(dateyyyyMMddDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddDateTimeFromString.valueString,
            equals(yyyyMMddDateTime.toIso8601String()));
        expect(dateyyyyMMddDateTimeFromString.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddDateTimeFromString.toJson(),
            equals(yyyyMMddDateTime.toString()));
      });
      final dateyyyyMMddFromString =
          FhirDateTime.fromString(yyyyMMddDateTime.toString());
      test('dateyyyyMMddFromString', () {
        expect(dateyyyyMMddFromString.isValid, isTrue);
        expect(dateyyyyMMddFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddFromString.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromString.toJson(), equals(yyyyMMdd));
      });
      final dateyyyyMMddFromDateTime =
          FhirDateTime.fromDateTime(yyyyMMddDateTime);
      test('dateyyyyMMddFromDateTime', () {
        expect(dateyyyyMMddFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddFromDateTime.valueString,
            equals(yyyyMMDateTime.toIso8601String()));
        expect(
            dateyyyyMMddFromDateTime.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromDateTime.toJson(), equals(yyyyMMdd));
      });
      final dateyyyyMMddFromJson = FhirDateTime.fromJson(yyyyMMdd);
      test('dateyyyyMMddFromJson', () {
        expect(dateyyyyMMddFromJson.isValid, isTrue);
        expect(dateyyyyMMddFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddFromJson.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromJson.toJson(), equals(yyyyMMdd));
      });
      final dateyyyyMMddDateTimeFromJson =
          FhirDateTime.fromJson(yyyyMMddDateTime);
      test('dateyyyyMMddDateTimeFromJson', () {
        expect(dateyyyyMMddDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddDateTimeFromJson.valueString,
            equals(yyyyMMDateTime.toIso8601String()));
        expect(dateyyyyMMddDateTimeFromJson.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddDateTimeFromJson.toJson(),
            equals(yyyyMMDateTime.toString()));
      });
      final dateyyyyMMddDateTimeFromStringFromJson =
          FhirDateTime.fromJson(yyyyMMddDateTimeFromString);
      test('dateyyyyMMddDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(
            dateyyyyMMddDateTimeFromStringFromJson.toJson(), equals(yyyyMMdd));
      });
      final dateyyyyMMddFromUnits =
          FhirDateTime.fromUnits(year: 2012, month: 1, day: 31);
      test('dateyyyyMMddFromUnits', () {
        expect(dateyyyyMMddFromUnits.isValid, isTrue);
        expect(dateyyyyMMddFromUnits.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddFromUnits.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromUnits.toJson(), equals(yyyyMMdd));
      });
      final dateyyyyMMddFromYaml = FhirDateTime.fromYaml(yyyyMMdd);
      test('dateyyyyMMddFromYaml', () {
        expect(dateyyyyMMddFromYaml.isValid, isTrue);
        expect(dateyyyyMMddFromYaml.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddFromYaml.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromYaml.toJson(), equals(yyyyMMdd));
      });
    });
    group('yyyyMMddTZ - 2012-01-31T', () {
      // TODO(Dokotela): reasonable that this truncates the output?
      test('dateyyyyMMddTZ', () {
        expect(dateyyyyMMddTZ.isValid, isTrue);
        expect(dateyyyyMMddTZ.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZ.valueDateTime, equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTZ.toJson(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTzzDateTime', () {
        expect(dateyyyyMMddTzzDateTime.isValid, isTrue);
        expect(dateyyyyMMddTzzDateTime.valueString,
            equals(yyyyMMDateTime.toIso8601String()));
        expect(
            dateyyyyMMddTzzDateTime.valueDateTime, equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTzzDateTime.toJson(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTzzDateTimeFromString', () {
        expect(dateyyyyMMddTzzDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTzzDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTzzDateTimeFromString.valueDateTime,
            equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTzzDateTimeFromString.toJson(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZFromString', () {
        expect(dateyyyyMMddTZFromString.isValid, isTrue);
        expect(dateyyyyMMddTZFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromString.valueDateTime,
            equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTZFromString.toJson(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZFromDateTime', () {
        expect(dateyyyyMMddTZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTZFromDateTime.valueString,
            equals(yyyyMMDateTime.toIso8601String()));
        expect(dateyyyyMMddTZFromDateTime.valueDateTime,
            equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTZFromDateTime.toJson(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZFromJson', () {
        expect(dateyyyyMMddTZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTZFromJson.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTZFromJson.valueDateTime, equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTZFromJson.toJson(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTzzDateTimeFromJson', () {
        expect(dateyyyyMMddTzzDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTzzDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTzzDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTzzDateTimeFromJson.toJson(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTzzDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTzzDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTzzDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTzzDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTzzDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZFromUnits', () {
        expect(dateyyyyMMddTZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTZFromUnits.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTZFromUnits.valueDateTime, equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTZFromUnits.toJson(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZFromYaml', () {
        expect(dateyyyyMMddTZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTZFromYaml.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTZFromYaml.valueDateTime, equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTZFromYaml.toJson(), equals(yyyyMMdd));
      });
    });
    group('yyyyMMddTZZ - 2012-01-31T-04:00', () {
      // TODO(Dokotela): reasonable to truncate output?
      test('dateyyyyMMddTZZ', () {
        expect(dateyyyyMMddTZZ.isValid, isTrue);
        expect(dateyyyyMMddTZZ.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZZ.valueDateTime, equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZ.toJson(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZZDateTime', () {
        expect(dateyyyyMMddTZZDateTime.isValid, isTrue);
        expect(dateyyyyMMddTZZDateTime.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTZZDateTime.valueDateTime, equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZDateTime.toJson(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZZDateTimeFromString', () {
        expect(dateyyyyMMddTZZDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTZZDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZDateTimeFromString.toJson(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZZFromString', () {
        expect(dateyyyyMMddTZZFromString.isValid, isTrue);
        expect(dateyyyyMMddTZZFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZZFromString.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZFromString.toJson(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZZFromDateTime', () {
        expect(dateyyyyMMddTZZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTZZFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZZFromDateTime.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZFromDateTime.toJson(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZZFromJson', () {
        expect(dateyyyyMMddTZZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTZZFromJson.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTZZFromJson.valueDateTime, equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZFromJson.toJson(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZZDateTimeFromJson', () {
        expect(dateyyyyMMddTZZDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTZZDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZDateTimeFromJson.toJson(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZZDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTZZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTZZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTZZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZZFromUnits', () {
        expect(dateyyyyMMddTZZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTZZFromUnits.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZZFromUnits.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZFromUnits.toJson(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZZFromYaml', () {
        expect(dateyyyyMMddTZZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTZZFromYaml.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTZZFromYaml.valueDateTime, equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZFromYaml.toJson(), equals(yyyyMMdd));
      });
    });
    group('yyyyMMddTHH - 2012-01-31T12', () {
      test('dateyyyyMMddTHH', () {
        expect(dateyyyyMMddTHH.isValid, isTrue);
        expect(dateyyyyMMddTHH.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHH.valueDateTime, equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHH.toJson(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHDateTime', () {
        expect(dateyyyyMMddTHHDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHDateTime.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHDateTime.valueDateTime, equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHDateTime.toJson(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHDateTimeFromString', () {
        expect(dateyyyyMMddTHHDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHDateTimeFromString.toJson(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHFromString', () {
        expect(dateyyyyMMddTHHFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHFromString.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHFromString.toJson(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHFromDateTime', () {
        expect(dateyyyyMMddTHHFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHFromDateTime.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHFromDateTime.toJson(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHFromJson', () {
        expect(dateyyyyMMddTHHFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHFromJson.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHFromJson.valueDateTime, equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHFromJson.toJson(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHDateTimeFromJson', () {
        expect(dateyyyyMMddTHHDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHDateTimeFromJson.toJson(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHFromUnits', () {
        expect(dateyyyyMMddTHHFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHFromUnits.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHFromUnits.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHFromUnits.toJson(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHFromYaml', () {
        expect(dateyyyyMMddTHHFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHFromYaml.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHFromYaml.valueDateTime, equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHFromYaml.toJson(), equals(yyyyMMdd));
      });
    });
    group('yyyyMMddTHHZ - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHZ', () {
        expect(dateyyyyMMddTHHZ.isValid, isTrue);
        expect(dateyyyyMMddTHHZ.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZ.valueDateTime, equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZ.toJson(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZDateTime', () {
        expect(dateyyyyMMddTHHZDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHZDateTime.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZDateTime.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZDateTime.toJson(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZDateTimeFromString', () {
        expect(dateyyyyMMddTHHZDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHZDateTimeFromString.valueString,
            equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(
            dateyyyyMMddTHHZDateTimeFromString.toJson(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZFromString', () {
        expect(dateyyyyMMddTHHZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHZFromString.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromString.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZFromString.toJson(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZFromDateTime', () {
        expect(dateyyyyMMddTHHZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHZFromDateTime.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZFromDateTime.toJson(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZFromJson', () {
        expect(dateyyyyMMddTHHZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHZFromJson.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromJson.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZFromJson.toJson(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHZDateTimeFromJson.isValid, isTrue);
        expect(
            dateyyyyMMddTHHZDateTimeFromJson.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZDateTimeFromJson.toJson(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZFromUnits', () {
        expect(dateyyyyMMddTHHZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHZFromUnits.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromUnits.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZFromUnits.toJson(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZFromYaml', () {
        expect(dateyyyyMMddTHHZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHZFromYaml.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromYaml.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZFromYaml.toJson(), equals(yyyyMMddTHHZ));
      });
    });
    group('yyyyMMddTHHZZ - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHZZ', () {
        expect(dateyyyyMMddTHHZZ.isValid, isTrue);
        expect(dateyyyyMMddTHHZZ.valueString, equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZ.valueDateTime, equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZ.toJson(), equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZDateTime', () {
        expect(dateyyyyMMddTHHZZDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHZZDateTime.valueString, equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZDateTime.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZDateTime.toJson(), equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZDateTimeFromString', () {
        expect(dateyyyyMMddTHHZZDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHZZDateTimeFromString.valueString,
            equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZDateTimeFromString.toJson(),
            equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZFromString', () {
        expect(dateyyyyMMddTHHZZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHZZFromString.valueString, equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromString.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZFromString.toJson(), equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZFromDateTime', () {
        expect(dateyyyyMMddTHHZZFromDateTime.isValid, isTrue);
        expect(
            dateyyyyMMddTHHZZFromDateTime.valueString, equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZFromDateTime.toJson(), equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZFromJson', () {
        expect(dateyyyyMMddTHHZZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHZZFromJson.valueString, equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromJson.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZFromJson.toJson(), equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHZZDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHZZDateTimeFromJson.valueString,
            equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(
            dateyyyyMMddTHHZZDateTimeFromJson.toJson(), equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHZZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHZZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZFromUnits', () {
        expect(dateyyyyMMddTHHZZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHZZFromUnits.valueString, equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromUnits.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZFromUnits.toJson(), equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZFromYaml', () {
        expect(dateyyyyMMddTHHZZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHZZFromYaml.valueString, equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromYaml.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZFromYaml.toJson(), equals(yyyyMMddTHHZZ));
      });
    });
    group('yyyyMMddTHHmm - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHmm', () {
        expect(dateyyyyMMddTHHmm.isValid, isTrue);
        expect(dateyyyyMMddTHHmm.valueString, equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmm.valueDateTime, equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmm.toJson(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmDateTime', () {
        expect(dateyyyyMMddTHHmmDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmDateTime.valueString, equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmDateTime.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmDateTime.toJson(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmDateTimeFromString.valueString,
            equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmDateTimeFromString.toJson(),
            equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmFromString', () {
        expect(dateyyyyMMddTHHmmFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmFromString.valueString, equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromString.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmFromString.toJson(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmFromDateTime', () {
        expect(dateyyyyMMddTHHmmFromDateTime.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmFromDateTime.valueString, equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmFromDateTime.toJson(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmFromJson', () {
        expect(dateyyyyMMddTHHmmFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmFromJson.valueString, equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromJson.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmFromJson.toJson(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmDateTimeFromJson.valueString,
            equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(
            dateyyyyMMddTHHmmDateTimeFromJson.toJson(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHmmDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmDateTimeFromStringFromJson.valueString,
            equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmFromUnits', () {
        expect(dateyyyyMMddTHHmmFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmFromUnits.valueString, equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmFromUnits.toJson(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmFromYaml', () {
        expect(dateyyyyMMddTHHmmFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHmmFromYaml.valueString, equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmFromYaml.toJson(), equals(yyyyMMddTHHmm));
      });
    });
    group('yyyyMMddTHHmmZ - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHmmZ', () {
        expect(dateyyyyMMddTHHmmZ.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZ.valueString, equals(yyyyMMddTHHmmZ));
        expect(
            dateyyyyMMddTHHmmZ.valueDateTime, equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZ.toJson(), equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZDateTime', () {
        expect(dateyyyyMMddTHHmmZDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZDateTime.valueString, equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZDateTime.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZDateTime.toJson(), equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmZDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZDateTimeFromString.valueString,
            equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZDateTimeFromString.toJson(),
            equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZFromString', () {
        expect(dateyyyyMMddTHHmmZFromString.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmZFromString.valueString, equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromString.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZFromString.toJson(), equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZFromDateTime', () {
        expect(dateyyyyMMddTHHmmZFromDateTime.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmZFromDateTime.valueString, equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZFromDateTime.toJson(), equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZFromJson', () {
        expect(dateyyyyMMddTHHmmZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZFromJson.valueString, equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromJson.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZFromJson.toJson(), equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmZDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZDateTimeFromJson.valueString,
            equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZDateTimeFromJson.toJson(),
            equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHmmZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZFromUnits', () {
        expect(dateyyyyMMddTHHmmZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZFromUnits.valueString, equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZFromUnits.toJson(), equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZFromYaml', () {
        expect(dateyyyyMMddTHHmmZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZFromYaml.valueString, equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZFromYaml.toJson(), equals(yyyyMMddTHHmmZ));
      });
    });
    group('yyyyMMddTHHmmZZ - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHmmZZ', () {
        expect(dateyyyyMMddTHHmmZZ.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZZ.valueString, equals(yyyyMMddTHHmmZZ));
        expect(
            dateyyyyMMddTHHmmZZ.valueDateTime, equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZ.toJson(), equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZDateTime', () {
        expect(dateyyyyMMddTHHmmZZDateTime.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmZZDateTime.valueString, equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZDateTime.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZDateTime.toJson(), equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmZZDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZZDateTimeFromString.valueString,
            equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZDateTimeFromString.toJson(),
            equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZFromString', () {
        expect(dateyyyyMMddTHHmmZZFromString.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmZZFromString.valueString, equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZFromString.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZFromString.toJson(), equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZFromDateTime', () {
        expect(dateyyyyMMddTHHmmZZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZZFromDateTime.valueString,
            equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(
            dateyyyyMMddTHHmmZZFromDateTime.toJson(), equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZFromJson', () {
        expect(dateyyyyMMddTHHmmZZFromJson.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmZZFromJson.valueString, equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZFromJson.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZFromJson.toJson(), equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmZZDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZZDateTimeFromJson.valueString,
            equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZDateTimeFromJson.toJson(),
            equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHmmZZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZFromUnits', () {
        expect(dateyyyyMMddTHHmmZZFromUnits.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmZZFromUnits.valueString, equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZFromUnits.toJson(), equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZFromYaml', () {
        expect(dateyyyyMMddTHHmmZZFromYaml.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmZZFromYaml.valueString, equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZFromYaml.toJson(), equals(yyyyMMddTHHmmZZ));
      });
    });
    group('yyyyMMddTHHmmss - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHmmss', () {
        expect(dateyyyyMMddTHHmmss.isValid, isTrue);
        expect(dateyyyyMMddTHHmmss.valueString, equals(yyyyMMddTHHmmss));
        expect(
            dateyyyyMMddTHHmmss.valueDateTime, equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmss.toJson(), equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssDateTime', () {
        expect(dateyyyyMMddTHHmmssDateTime.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssDateTime.valueString, equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssDateTime.toJson(), equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmssDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssDateTimeFromString.valueString,
            equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssDateTimeFromString.toJson(),
            equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssFromString', () {
        expect(dateyyyyMMddTHHmmssFromString.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssFromString.valueString, equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssFromString.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssFromString.toJson(), equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssFromDateTime', () {
        expect(dateyyyyMMddTHHmmssFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssFromDateTime.valueString,
            equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(
            dateyyyyMMddTHHmmssFromDateTime.toJson(), equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssFromJson', () {
        expect(dateyyyyMMddTHHmmssFromJson.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssFromJson.valueString, equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssFromJson.toJson(), equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmssDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssDateTimeFromJson.valueString,
            equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssDateTimeFromJson.toJson(),
            equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHmmssDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssDateTimeFromStringFromJson.valueString,
            equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssFromUnits', () {
        expect(dateyyyyMMddTHHmmssFromUnits.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssFromUnits.valueString, equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssFromUnits.toJson(), equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssFromYaml', () {
        expect(dateyyyyMMddTHHmmssFromYaml.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssFromYaml.valueString, equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssFromYaml.toJson(), equals(yyyyMMddTHHmmss));
      });
    });
    group('yyyyMMddTHHmmssZ - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHmmssZ', () {
        expect(dateyyyyMMddTHHmmssZ.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZ.valueString, equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZ.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(dateyyyyMMddTHHmmssZ.toJson(), equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZDateTime', () {
        expect(dateyyyyMMddTHHmmssZDateTime.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssZDateTime.valueString, equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(dateyyyyMMddTHHmmssZDateTime.toJson(), equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmssZDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZDateTimeFromString.valueString,
            equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(dateyyyyMMddTHHmmssZDateTimeFromString.toJson(),
            equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZFromString', () {
        expect(dateyyyyMMddTHHmmssZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZFromString.valueString,
            equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(
            dateyyyyMMddTHHmmssZFromString.toJson(), equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZFromDateTime', () {
        expect(dateyyyyMMddTHHmmssZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZFromDateTime.valueString,
            equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(dateyyyyMMddTHHmmssZFromDateTime.toJson(),
            equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZFromJson', () {
        expect(dateyyyyMMddTHHmmssZFromJson.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssZFromJson.valueString, equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(dateyyyyMMddTHHmmssZFromJson.toJson(), equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmssZDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZDateTimeFromJson.valueString,
            equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(dateyyyyMMddTHHmmssZDateTimeFromJson.toJson(),
            equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHmmssZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(dateyyyyMMddTHHmmssZDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZFromUnits', () {
        expect(dateyyyyMMddTHHmmssZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZFromUnits.valueString,
            equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(
            dateyyyyMMddTHHmmssZFromUnits.toJson(), equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZFromYaml', () {
        expect(dateyyyyMMddTHHmmssZFromYaml.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssZFromYaml.valueString, equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(dateyyyyMMddTHHmmssZFromYaml.toJson(), equals(yyyyMMddTHHmmssZ));
      });
    });
    group('yyyyMMddTHHmmssZZ - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHmmssZZ', () {
        expect(dateyyyyMMddTHHmmssZZ.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZ.valueString, equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZ.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZ.toJson(), equals(yyyyMMddTHHmmssZZ));
      });
      test('dateyyyyMMddTHHmmssZZDateTime', () {
        expect(dateyyyyMMddTHHmmssZZDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZDateTime.valueString,
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(
            dateyyyyMMddTHHmmssZZDateTime.toJson(), equals(yyyyMMddTHHmmssZZ));
      });
      test('dateyyyyMMddTHHmmssZZDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmssZZDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZDateTimeFromString.valueString,
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZDateTimeFromString.toJson(),
            equals(yyyyMMddTHHmmssZZ));
      });
      test('dateyyyyMMddTHHmmssZZFromString', () {
        expect(dateyyyyMMddTHHmmssZZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZFromString.valueString,
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZFromString.toJson(),
            equals(yyyyMMddTHHmmssZZ));
      });
      test('dateyyyyMMddTHHmmssZZFromDateTime', () {
        expect(dateyyyyMMddTHHmmssZZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZFromDateTime.valueString,
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZFromDateTime.toJson(),
            equals(yyyyMMddTHHmmssZZ));
      });
      test('dateyyyyMMddTHHmmssZZFromJson', () {
        expect(dateyyyyMMddTHHmmssZZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZFromJson.valueString,
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(
            dateyyyyMMddTHHmmssZZFromJson.toJson(), equals(yyyyMMddTHHmmssZZ));
      });
      test('dateyyyyMMddTHHmmssZZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmssZZDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZDateTimeFromJson.valueString,
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZDateTimeFromJson.toJson(),
            equals(yyyyMMddTHHmmssZZ));
      });
      test('dateyyyyMMddTHHmmssZZDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHmmssZZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTHHmmssZZ));
      });
      test('dateyyyyMMddTHHmmssZZFromUnits', () {
        expect(dateyyyyMMddTHHmmssZZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZFromUnits.valueString,
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(
            dateyyyyMMddTHHmmssZZFromUnits.toJson(), equals(yyyyMMddTHHmmssZZ));
      });
      test('dateyyyyMMddTHHmmssZZFromYaml', () {
        expect(dateyyyyMMddTHHmmssZZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZFromYaml.valueString,
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(
            dateyyyyMMddTHHmmssZZFromYaml.toJson(), equals(yyyyMMddTHHmmssZZ));
      });
    });
    group('yyyyMMddTHHmmssSSS - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHmmssSSS', () {
        expect(dateyyyyMMddTHHmmssSSS.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSS.valueString, equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSS.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSS.toJson(), equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSDateTime.valueString,
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSDateTime.toJson(),
            equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromString.valueString,
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromString.toJson(),
            equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSFromString', () {
        expect(dateyyyyMMddTHHmmssSSSFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSFromString.valueString,
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSFromString.toJson(),
            equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSFromDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSFromDateTime.valueString,
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSFromDateTime.toJson(),
            equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSFromJson', () {
        expect(dateyyyyMMddTHHmmssSSSFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSFromJson.valueString,
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSFromJson.toJson(),
            equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromJson.valueString,
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromJson.toJson(),
            equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson', () {
        expect(
            dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson.valueString,
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSFromUnits', () {
        expect(dateyyyyMMddTHHmmssSSSFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSFromUnits.valueString,
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSFromUnits.toJson(),
            equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSFromYaml', () {
        expect(dateyyyyMMddTHHmmssSSSFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSFromYaml.valueString,
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSFromYaml.toJson(),
            equals(yyyyMMddTHHmmssSSS));
      });
    });
    group('yyyyMMddTHHmmssSSSZ - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHmmssSSSZ', () {
        expect(dateyyyyMMddTHHmmssSSSZ.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssSSSZ.valueString, equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZ.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZ.toJson(), equals(yyyyMMddTHHmmssSSSZ));
      });
      test('dateyyyyMMddTHHmmssSSSZDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSZDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZDateTime.valueString,
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZDateTime.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
      test('dateyyyyMMddTHHmmssSSSZDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromString.valueString,
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromString.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
      test('dateyyyyMMddTHHmmssSSSZFromString', () {
        expect(dateyyyyMMddTHHmmssSSSZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZFromString.valueString,
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZFromString.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
      test('dateyyyyMMddTHHmmssSSSZFromDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZFromDateTime.valueString,
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZFromDateTime.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
      test('dateyyyyMMddTHHmmssSSSZFromJson', () {
        expect(dateyyyyMMddTHHmmssSSSZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZFromJson.valueString,
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZFromJson.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
      test('dateyyyyMMddTHHmmssSSSZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromJson.valueString,
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromJson.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
      test('dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson', () {
        expect(
            dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
      test('dateyyyyMMddTHHmmssSSSZFromUnits', () {
        expect(dateyyyyMMddTHHmmssSSSZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZFromUnits.valueString,
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZFromUnits.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
      test('dateyyyyMMddTHHmmssSSSZFromYaml', () {
        expect(dateyyyyMMddTHHmmssSSSZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZFromYaml.valueString,
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZFromYaml.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
    });
    group('yyyyMMddTHHmmssSSSZZ - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHmmssSSSZZ', () {
        expect(dateyyyyMMddTHHmmssSSSZZ.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssSSSZZ.valueString, equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZ.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZ.toJson(), equals(yyyyMMddTHHmmssSSSZZ));
      });
      test('dateyyyyMMddTHHmmssSSSZZDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSZZDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZDateTime.valueString,
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZDateTime.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
      test('dateyyyyMMddTHHmmssSSSZZDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromString.valueString,
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromString.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
      test('dateyyyyMMddTHHmmssSSSZZFromString', () {
        expect(dateyyyyMMddTHHmmssSSSZZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZFromString.valueString,
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZFromString.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
      test('dateyyyyMMddTHHmmssSSSZZFromDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSZZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZFromDateTime.valueString,
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZFromDateTime.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
      test('dateyyyyMMddTHHmmssSSSZZFromJson', () {
        expect(dateyyyyMMddTHHmmssSSSZZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZFromJson.valueString,
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZFromJson.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
      test('dateyyyyMMddTHHmmssSSSZZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromJson.valueString,
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromJson.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
      test('dateyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson', () {
        expect(
            dateyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
      test('dateyyyyMMddTHHmmssSSSZZFromUnits', () {
        expect(dateyyyyMMddTHHmmssSSSZZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZFromUnits.valueString,
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZFromUnits.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
      test('dateyyyyMMddTHHmmssSSSZZFromYaml', () {
        expect(dateyyyyMMddTHHmmssSSSZZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZFromYaml.valueString,
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZFromYaml.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
    });
    group('dateInstant - 2012-01-31T12:30+04:00', () {
      test('dateInstant', () {
        expect(dateInstant.isValid, isTrue);
        expect(dateInstant.valueString, equals(instant));
        expect(dateInstant.valueDateTime, equals(instantDateTime));
        expect(dateInstant.toJson(), equals(instant));
      });
      test('dateInstantDateTime', () {
        expect(dateInstantDateTime.isValid, isTrue);
        expect(dateInstantDateTime.valueString, equals(instant));
        expect(dateInstantDateTime.valueDateTime, equals(instantDateTime));
        expect(dateInstantDateTime.toJson(), equals(instant));
      });
      test('dateInstantDateTimeFromString', () {
        expect(dateInstantDateTimeFromString.isValid, isTrue);
        expect(dateInstantDateTimeFromString.valueString, equals(instant));
        expect(dateInstantDateTimeFromString.valueDateTime,
            equals(instantDateTime));
        expect(dateInstantDateTimeFromString.toJson(), equals(instant));
      });
      test('dateInstantFromString', () {
        expect(dateInstantFromString.isValid, isTrue);
        expect(dateInstantFromString.valueString, equals(instant));
        expect(dateInstantFromString.valueDateTime, equals(instantDateTime));
        expect(dateInstantFromString.toJson(), equals(instant));
      });
      test('dateInstantFromDateTime', () {
        expect(dateInstantFromDateTime.isValid, isTrue);
        expect(dateInstantFromDateTime.valueString, equals(instant));
        expect(dateInstantFromDateTime.valueDateTime, equals(instantDateTime));
        expect(dateInstantFromDateTime.toJson(), equals(instant));
      });
      test('dateInstantFromJson', () {
        expect(dateInstantFromJson.isValid, isTrue);
        expect(dateInstantFromJson.valueString, equals(instant));
        expect(dateInstantFromJson.valueDateTime, equals(instantDateTime));
        expect(dateInstantFromJson.toJson(), equals(instant));
      });
      test('dateInstantDateTimeFromJson', () {
        expect(dateInstantDateTimeFromJson.isValid, isTrue);
        expect(dateInstantDateTimeFromJson.valueString, equals(instant));
        expect(
            dateInstantDateTimeFromJson.valueDateTime, equals(instantDateTime));
        expect(dateInstantDateTimeFromJson.toJson(), equals(instant));
      });
      test('dateInstantDateTimeFromStringFromJson', () {
        expect(dateInstantDateTimeFromStringFromJson.isValid, isTrue);
        expect(
            dateInstantDateTimeFromStringFromJson.valueString, equals(instant));
        expect(dateInstantDateTimeFromStringFromJson.valueDateTime,
            equals(instantDateTime));
        expect(dateInstantDateTimeFromStringFromJson.toJson(), equals(instant));
      });
      test('dateInstantFromUnits', () {
        expect(dateInstantFromUnits.isValid, isTrue);
        expect(dateInstantFromUnits.valueString, equals(instant));
        expect(dateInstantFromUnits.valueDateTime, equals(instantDateTime));
        expect(dateInstantFromUnits.toJson(), equals(instant));
      });
      test('dateInstantFromYaml', () {
        expect(dateInstantFromYaml.isValid, isTrue);
        expect(dateInstantFromYaml.valueString, equals(instant));
        expect(dateInstantFromYaml.valueDateTime, equals(instantDateTime));
        expect(dateInstantFromYaml.toJson(), equals(instant));
      });
    });
    group('DateTime - 2012-01-31T12:30+04:00', () {
      test('dateDateTime', () {
        expect(dateDateTime.isValid, isTrue);
        expect(dateDateTime.valueString, equals(dateTime));
        expect(dateDateTime.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTime.toJson(), equals(dateTime));
      });
      test('dateDateTimeDateTime', () {
        expect(dateDateTimeDateTime.isValid, isTrue);
        expect(dateDateTimeDateTime.valueString, equals(dateTime));
        expect(dateDateTimeDateTime.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeDateTime.toJson(), equals(dateTime));
      });
      test('dateDateTimeDateTimeFromString', () {
        expect(dateDateTimeDateTimeFromString.isValid, isTrue);
        expect(dateDateTimeDateTimeFromString.valueString, equals(dateTime));
        expect(dateDateTimeDateTimeFromString.valueDateTime,
            equals(dateTimeDateTime));
        expect(dateDateTimeDateTimeFromString.toJson(), equals(dateTime));
      });
      test('dateDateTimeFromString', () {
        expect(dateDateTimeFromString.isValid, isTrue);
        expect(dateDateTimeFromString.valueString, equals(dateTime));
        expect(dateDateTimeFromString.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeFromString.toJson(), equals(dateTime));
      });
      test('dateDateTimeFromDateTime', () {
        expect(dateDateTimeFromDateTime.isValid, isTrue);
        expect(dateDateTimeFromDateTime.valueString, equals(dateTime));
        expect(
            dateDateTimeFromDateTime.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeFromDateTime.toJson(), equals(dateTime));
      });
      test('dateDateTimeFromJson', () {
        expect(dateDateTimeFromJson.isValid, isTrue);
        expect(dateDateTimeFromJson.valueString, equals(dateTime));
        expect(dateDateTimeFromJson.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeFromJson.toJson(), equals(dateTime));
      });
      test('dateDateTimeDateTimeFromJson', () {
        expect(dateDateTimeDateTimeFromJson.isValid, isTrue);
        expect(dateDateTimeDateTimeFromJson.valueString, equals(dateTime));
        expect(dateDateTimeDateTimeFromJson.valueDateTime,
            equals(dateTimeDateTime));
        expect(dateDateTimeDateTimeFromJson.toJson(), equals(dateTime));
      });
      test('dateDateTimeDateTimeFromStringFromJson', () {
        expect(dateDateTimeDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateDateTimeDateTimeFromStringFromJson.valueString,
            equals(dateTime));
        expect(dateDateTimeDateTimeFromStringFromJson.valueDateTime,
            equals(dateTimeDateTime));
        expect(
            dateDateTimeDateTimeFromStringFromJson.toJson(), equals(dateTime));
      });
      test('dateDateTimeFromUnits', () {
        expect(dateDateTimeFromUnits.isValid, isTrue);
        expect(dateDateTimeFromUnits.valueString, equals(dateTime));
        expect(dateDateTimeFromUnits.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeFromUnits.toJson(), equals(dateTime));
      });
      test('dateDateTimeFromYaml', () {
        expect(dateDateTimeFromYaml.isValid, isTrue);
        expect(dateDateTimeFromYaml.valueString, equals(dateTime));
        expect(dateDateTimeFromYaml.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeFromYaml.toJson(), equals(dateTime));
      });
    });
  });
}

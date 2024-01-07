import 'package:fhir/primitive_types/date.dart';
import 'package:fhir/primitive_types/date_time_precision.dart';
import 'package:test/test.dart';

void main() {
  final yyyy = '2012';
  final yyyyDateTime = DateTime(2012);
  final yyyyDateTimeFromString = DateTime.parse('2012-01-01');
  final yyyyMM = '2012-01';
  final yyyyMMDateTime = DateTime(2012, 1);
  final yyyyMMDateTimeFromString = DateTime.parse('2012-01-01');
  final yyyyMMdd = '2012-01-31';
  final yyyyMMddDateTime = DateTime(2012, 1, 31);
  final yyyyMMddDateTimeFromString = DateTime.parse('2012-01-31');
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

  final dateyyyy = FhirDate(yyyy);
  final dateyyyyDateTime = FhirDate(yyyyDateTime);
  final dateyyyyDateTimeFromString =
      FhirDate(yyyyDateTimeFromString, DateTimePrecision.yyyy);
  final dateyyyyFromString = FhirDate.fromString(yyyy);
  final dateyyyyFromDateTime =
      FhirDate.fromDateTime(yyyyDateTime, DateTimePrecision.yyyy);
  final dateyyyyFromJson = FhirDate.fromJson(yyyy);
  final dateyyyyDateTimeFromJson =
      FhirDate.fromJson(yyyyDateTime, DateTimePrecision.yyyy);
  final dateyyyyDateTimeFromStringFromJson =
      FhirDate.fromJson(yyyyDateTimeFromString);
  final dateyyyyFromUnits = FhirDate.fromUnits(year: 2012);
  final dateyyyyFromYaml = FhirDate.fromYaml(yyyy);

  final dateyyyyMM = FhirDate(yyyyMM);
  final dateyyyyMMDateTime = FhirDate(yyyyMMDateTime);
  final dateyyyyMMDateTimeFromString =
      FhirDate(yyyyMMDateTimeFromString, DateTimePrecision.yyyy_MM);
  final dateyyyyMMFromString = FhirDate.fromString(yyyyMM);
  final dateyyyyMMFromDateTime =
      FhirDate.fromDateTime(yyyyMMDateTime, DateTimePrecision.yyyy_MM);
  final dateyyyyMMFromJson = FhirDate.fromJson(yyyyMM);
  final dateyyyyMMDateTimeFromJson = FhirDate.fromJson(yyyyMMDateTime);
  final dateyyyyMMDateTimeFromStringFromJson =
      FhirDate.fromJson(yyyyMMDateTimeFromString, DateTimePrecision.yyyy_MM);
  final dateyyyyMMFromUnits = FhirDate.fromUnits(year: 2012, month: 1);
  final dateyyyyMMFromYaml = FhirDate.fromYaml(yyyyMM);

  final dateyyyyMMdd = FhirDate(yyyyMMdd);
  final dateyyyyMMddDateTime = FhirDate(yyyyMMddDateTime);
  final dateyyyyMMddDateTimeFromString = FhirDate(yyyyMMddDateTimeFromString);
  final dateyyyyMMddFromString = FhirDate.fromString(yyyyMMdd);
  final dateyyyyMMddFromDateTime = FhirDate.fromDateTime(yyyyMMddDateTime);
  final dateyyyyMMddFromJson = FhirDate.fromJson(yyyyMMdd);
  final dateyyyyMMddDateTimeFromJson = FhirDate.fromJson(yyyyMMddDateTime);
  final dateyyyyMMddDateTimeFromStringFromJson =
      FhirDate.fromJson(yyyyMMddDateTimeFromString);
  final dateyyyyMMddFromUnits =
      FhirDate.fromUnits(year: 2012, month: 1, day: 31);
  final dateyyyyMMddFromYaml = FhirDate.fromYaml(yyyyMMdd);

  final dateyyyyMMddTZ = FhirDate(yyyyMMddTZ);
  final dateyyyyMMddTzzDateTime = FhirDate(yyyyMMddTzzDateTime);
  final dateyyyyMMddTzzDateTimeFromString =
      FhirDate(yyyyMMddTzzDateTimeFromString);
  final dateyyyyMMddTZFromString = FhirDate.fromString(yyyyMMddTZ);
  final dateyyyyMMddTZFromDateTime = FhirDate.fromDateTime(yyyyMMddTzzDateTime);
  final dateyyyyMMddTZFromJson = FhirDate.fromJson(yyyyMMddTZ);
  final dateyyyyMMddTzzDateTimeFromJson =
      FhirDate.fromJson(yyyyMMddTzzDateTime);
  final dateyyyyMMddTzzDateTimeFromStringFromJson =
      FhirDate.fromJson(yyyyMMddTzzDateTimeFromString);
  final dateyyyyMMddTZFromUnits =
      FhirDate.fromUnits(year: 2012, month: 1, day: 31, isUtc: true);
  final dateyyyyMMddTZFromYaml = FhirDate.fromYaml(yyyyMMddTZ);

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

  print('********************************************************************');
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

  final dateyyyyMMddTHHZ = FhirDate(yyyyMMddTHHZ);
  final dateyyyyMMddTHHZDateTime = FhirDate(yyyyMMddTHHZDateTime);
  final dateyyyyMMddTHHZDateTimeFromString =
      FhirDate(yyyyMMddTHHZDateTimeFromString);
  final dateyyyyMMddTHHZFromString = FhirDate.fromString(yyyyMMddTHHZ);
  final dateyyyyMMddTHHZFromDateTime =
      FhirDate.fromDateTime(yyyyMMddTHHZDateTime);
  final dateyyyyMMddTHHZFromJson = FhirDate.fromJson(yyyyMMddTHHZ);
  final dateyyyyMMddTHHZDateTimeFromJson =
      FhirDate.fromJson(yyyyMMddTHHZDateTime);
  final dateyyyyMMddTHHZDateTimeFromStringFromJson =
      FhirDate.fromJson(yyyyMMddTHHZDateTimeFromString);
  final dateyyyyMMddTHHZFromUnits =
      FhirDate.fromUnits(year: 2012, month: 1, day: 31);
  final dateyyyyMMddTHHZFromYaml = FhirDate.fromYaml(yyyyMMddTHHZ);

  final dateyyyyMMddTHHZZ = FhirDate(yyyyMMddTHHZZ);
  final dateyyyyMMddTHHZZDateTime = FhirDate(yyyyMMddTHHZZDateTime);
  final dateyyyyMMddTHHZZDateTimeFromString =
      FhirDate(yyyyMMddTHHZZDateTimeFromString);
  final dateyyyyMMddTHHZZFromString = FhirDate.fromString(yyyyMMddTHHZZ);
  final dateyyyyMMddTHHZZFromDateTime =
      FhirDate.fromDateTime(yyyyMMddTHHZZDateTime);
  final dateyyyyMMddTHHZZFromJson = FhirDate.fromJson(yyyyMMddTHHZZ);
  final dateyyyyMMddTHHZZDateTimeFromJson =
      FhirDate.fromJson(yyyyMMddTHHZZDateTime);
  final dateyyyyMMddTHHZZDateTimeFromStringFromJson =
      FhirDate.fromJson(yyyyMMddTHHZZDateTimeFromString);
  final dateyyyyMMddTHHZZFromUnits =
      FhirDate.fromUnits(year: 2012, month: 1, day: 31);
  final dateyyyyMMddTHHZZFromYaml = FhirDate.fromYaml(yyyyMMddTHHZZ);

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
      FhirDate.fromUnits(year: 2012, month: 1, day: 31);
  final dateyyyyMMddTHHmmZFromYaml = FhirDate.fromYaml(yyyyMMddTHHmmZ);

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

  final dateyyyyMMddTHHmmssZ = FhirDate(yyyyMMddTHHmmssZ);
  final dateyyyyMMddTHHmmssZDateTime = FhirDate(yyyyMMddTHHmmssZDateTime);
  final dateyyyyMMddTHHmmssZDateTimeFromString =
      FhirDate(yyyyMMddTHHmmssZDateTimeFromString);
  final dateyyyyMMddTHHmmssZFromString = FhirDate.fromString(yyyyMMddTHHmmssZ);
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

  final dateyyyyMMddTHHmmssSSS = FhirDate(yyyyMMddTHHmmssSSS);
  final dateyyyyMMddTHHmmssSSSDateTime = FhirDate(yyyyMMddTHHmmssSSSDateTime);
  final dateyyyyMMddTHHmmssSSSDateTimeFromString =
      FhirDate(yyyyMMddTHHmmssSSSDateTimeFromString);
  final dateyyyyMMddTHHmmssSSSFromString =
      FhirDate.fromString(yyyyMMddTHHmmssSSS);
  final dateyyyyMMddTHHmmssSSSFromDateTime =
      FhirDate.fromDateTime(yyyyMMddTHHmmssSSSDateTime);
  final dateyyyyMMddTHHmmssSSSFromJson = FhirDate.fromJson(yyyyMMddTHHmmssSSS);
  final dateyyyyMMddTHHmmssSSSDateTimeFromJson =
      FhirDate.fromJson(yyyyMMddTHHmmssSSSDateTime);
  final dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson =
      FhirDate.fromJson(yyyyMMddTHHmmssSSSDateTimeFromString);
  final dateyyyyMMddTHHmmssSSSFromUnits =
      FhirDate.fromUnits(year: 2012, month: 1, day: 31);
  final dateyyyyMMddTHHmmssSSSFromYaml = FhirDate.fromYaml(yyyyMMddTHHmmssSSS);

  final dateyyyyMMddTHHmmssSSSZ = FhirDate(yyyyMMddTHHmmssSSSZ);
  final dateyyyyMMddTHHmmssSSSZDateTime = FhirDate(yyyyMMddTHHmmssSSSZDateTime);
  final dateyyyyMMddTHHmmssSSSZDateTimeFromString =
      FhirDate(yyyyMMddTHHmmssSSSZDateTimeFromString);
  final dateyyyyMMddTHHmmssSSSZFromString =
      FhirDate.fromString(yyyyMMddTHHmmssSSSZ);
  final dateyyyyMMddTHHmmssSSSZFromDateTime =
      FhirDate.fromDateTime(yyyyMMddTHHmmssSSSZDateTime);
  final dateyyyyMMddTHHmmssSSSZFromJson =
      FhirDate.fromJson(yyyyMMddTHHmmssSSSZ);
  final dateyyyyMMddTHHmmssSSSZDateTimeFromJson =
      FhirDate.fromJson(yyyyMMddTHHmmssSSSZDateTime);
  final dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson =
      FhirDate.fromJson(yyyyMMddTHHmmssSSSZDateTimeFromString);
  final dateyyyyMMddTHHmmssSSSZFromUnits =
      FhirDate.fromUnits(year: 2012, month: 1, day: 31);
  final dateyyyyMMddTHHmmssSSSZFromYaml =
      FhirDate.fromYaml(yyyyMMddTHHmmssSSSZ);

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

  final dateInstant = FhirDate(instant);
  final dateInstantDateTime = FhirDate(instantDateTime);
  final dateInstantDateTimeFromString = FhirDate(instantDateTimeFromString);
  final dateInstantFromString = FhirDate.fromString(instant);
  final dateInstantFromDateTime = FhirDate.fromDateTime(instantDateTime);
  final dateInstantFromJson = FhirDate.fromJson(instant);
  final dateInstantDateTimeFromJson = FhirDate.fromJson(instantDateTime);
  final dateInstantDateTimeFromStringFromJson =
      FhirDate.fromJson(instantDateTimeFromString);
  final dateInstantFromUnits =
      FhirDate.fromUnits(year: 2012, month: 1, day: 31);
  final dateInstantFromYaml = FhirDate.fromYaml(instant);

  final dateDateTime = FhirDate(dateTime);
  final dateDateTimeDateTime = FhirDate(dateTimeDateTime);
  final dateDateTimeDateTimeFromString = FhirDate(dateTimeDateTimeFromString);
  final dateDateTimeFromString = FhirDate.fromString(dateTime);
  final dateDateTimeFromDateTime = FhirDate.fromDateTime(dateTimeDateTime);
  final dateDateTimeFromJson = FhirDate.fromJson(dateTime);
  final dateDateTimeDateTimeFromJson = FhirDate.fromJson(dateTimeDateTime);
  final dateDateTimeDateTimeFromStringFromJson =
      FhirDate.fromJson(dateTimeDateTimeFromString);
  final dateDateTimeFromUnits =
      FhirDate.fromUnits(year: 2012, month: 1, day: 31);
  final dateDateTimeFromYaml = FhirDate.fromYaml(dateTime);

  group('FhirDate Tests', () {
    group('yyyy - 2012', () {
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
      test('dateyyyyDateTime', () {
        expect(dateyyyyDateTime.isValid, isTrue);
        expect(dateyyyyDateTime.valueString, equals('$yyyy-01-01'));
        expect(dateyyyyDateTime.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyDateTime.toString(), equals('$yyyy-01-01'));
        expect(dateyyyyDateTime.toJson(), equals('$yyyyMM-01 00:00:00.000'));
        expect(dateyyyyDateTime.toYaml(), equals('$yyyyMM-01 00:00:00.000'));
      });
      test('dateyyyyDateTimeFromString', () {
        expect(dateyyyyDateTimeFromString.isValid, isTrue);
        expect(dateyyyyDateTimeFromString.valueString, equals(yyyy));
        expect(dateyyyyDateTimeFromString.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyDateTimeFromString.toString(), equals(yyyy));
        expect(dateyyyyDateTimeFromString.toJson(), equals(yyyy));
        expect(dateyyyyDateTimeFromString.toYaml(), equals(yyyy));
      });
      test('dateyyyyFromString', () {
        expect(dateyyyyFromString.isValid, isTrue);
        expect(dateyyyyFromString.valueString, equals(yyyy));
        expect(dateyyyyFromString.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromString.toString(), equals(yyyy));
        expect(dateyyyyFromString.toJson(), equals(yyyy));
        expect(dateyyyyFromString.toYaml(), equals(yyyy));
      });
      test('dateyyyyFromDateTime', () {
        expect(dateyyyyFromDateTime.isValid, isTrue);
        expect(dateyyyyFromDateTime.valueString, equals(yyyy));
        expect(dateyyyyFromDateTime.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromDateTime.toString(), equals(yyyy));
        expect(dateyyyyFromDateTime.toJson(), equals(yyyy));
        expect(dateyyyyFromDateTime.toYaml(), equals(yyyy));
      });
      test('dateyyyyFromJson', () {
        expect(dateyyyyFromJson.isValid, isTrue);
        expect(dateyyyyFromJson.valueString, equals(yyyy));
        expect(dateyyyyFromJson.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromJson.toString(), equals(yyyy));
        expect(dateyyyyFromJson.toJson(), equals(yyyy));
        expect(dateyyyyFromJson.toYaml(), equals(yyyy));
      });
      test('dateyyyyDateTimeFromJson', () {
        expect(dateyyyyDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyDateTimeFromJson.valueString, equals(yyyy));
        expect(dateyyyyDateTimeFromJson.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyDateTimeFromJson.toString(), equals(yyyy));
        expect(dateyyyyDateTimeFromJson.toJson(), equals(yyyy));
        expect(dateyyyyDateTimeFromJson.toYaml(), equals(yyyy));
      });
      test('dateyyyyDateTimeFromStringFromJson', () {
        expect(dateyyyyDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyDateTimeFromStringFromJson.valueString,
            equals('$yyyy-01-01'));
        expect(dateyyyyDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyDateTime));
        expect(dateyyyyDateTimeFromStringFromJson.toString(),
            equals('$yyyy-01-01'));
        expect(dateyyyyDateTimeFromStringFromJson.toJson(),
            equals('$yyyyMM-01 00:00:00.000'));
        expect(dateyyyyDateTimeFromStringFromJson.toYaml(),
            equals('$yyyyMM-01 00:00:00.000'));
      });
      test('dateyyyyFromUnits', () {
        expect(dateyyyyFromUnits.isValid, isTrue);
        expect(dateyyyyFromUnits.valueString, equals(yyyy));
        expect(dateyyyyFromUnits.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromUnits.toString(), equals(yyyy));
        expect(dateyyyyFromUnits.toJson(), equals(yyyy));
        expect(dateyyyyFromUnits.toYaml(), equals(yyyy));
      });
      test('dateyyyyFromYaml', () {
        expect(dateyyyyFromYaml.isValid, isTrue);
        expect(dateyyyyFromYaml.valueString, equals(yyyy));
        expect(dateyyyyFromYaml.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromYaml.toString(), equals(yyyy));
        expect(dateyyyyFromYaml.toJson(), equals(yyyy));
        expect(dateyyyyFromYaml.toYaml(), equals(yyyy));
      });
    });
    group('yyyyMM - 2012-01', () {
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
      test('dateyyyyMMDateTimeFromString', () {
        expect(dateyyyyMMDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMDateTimeFromString.valueString, equals(yyyyMM));
        expect(
            dateyyyyMMDateTimeFromString.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMDateTimeFromString.toString(), equals(yyyyMM));
        expect(dateyyyyMMDateTimeFromString.toJson(), equals(yyyyMM));
        expect(dateyyyyMMDateTimeFromString.toYaml(), equals(yyyyMM));
      });
      test('dateyyyyMMFromString', () {
        expect(dateyyyyMMFromString.isValid, isTrue);
        expect(dateyyyyMMFromString.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromString.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromString.toString(), equals(yyyyMM));
        expect(dateyyyyMMFromString.toJson(), equals(yyyyMM));
        expect(dateyyyyMMFromString.toYaml(), equals(yyyyMM));
      });
      test('dateyyyyMMFromDateTime', () {
        expect(dateyyyyMMFromDateTime.isValid, isTrue);
        expect(dateyyyyMMFromDateTime.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromDateTime.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromDateTime.toString(), equals(yyyyMM));
        expect(dateyyyyMMFromDateTime.toJson(), equals(yyyyMM));
        expect(dateyyyyMMFromDateTime.toYaml(), equals(yyyyMM));
      });
      test('dateyyyyMMFromJson', () {
        expect(dateyyyyMMFromJson.isValid, isTrue);
        expect(dateyyyyMMFromJson.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromJson.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromJson.toString(), equals(yyyyMM));
        expect(dateyyyyMMFromJson.toJson(), equals(yyyyMM));
        expect(dateyyyyMMFromJson.toYaml(), equals(yyyyMM));
      });
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
      test('dateyyyyMMFromUnits', () {
        expect(dateyyyyMMFromUnits.isValid, isTrue);
        expect(dateyyyyMMFromUnits.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromUnits.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromUnits.toString(), equals(yyyyMM));
        expect(dateyyyyMMFromUnits.toJson(), equals(yyyyMM));
        expect(dateyyyyMMFromUnits.toYaml(), equals(yyyyMM));
      });
      test('dateyyyyMMFromYaml', () {
        expect(dateyyyyMMFromYaml.isValid, isTrue);
        expect(dateyyyyMMFromYaml.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromYaml.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromYaml.toString(), equals(yyyyMM));
        expect(dateyyyyMMFromYaml.toJson(), equals(yyyyMM));
        expect(dateyyyyMMFromYaml.toYaml(), equals(yyyyMM));
      });
    });
    group('yyyyMMdd - 2012-01-31', () {
      test('dateyyyyMMdd', () {
        expect(dateyyyyMMdd.isValid, isTrue);
        expect(dateyyyyMMdd.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMdd.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMdd.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMdd.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMdd.toYaml(), equals(yyyyMMdd));
      });
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
      test('dateyyyyMMddFromString', () {
        expect(dateyyyyMMddFromString.isValid, isTrue);
        expect(dateyyyyMMddFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddFromString.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromString.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromString.toYaml(), equals(yyyyMMdd));
      });
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
      test('dateyyyyMMddFromJson', () {
        expect(dateyyyyMMddFromJson.isValid, isTrue);
        expect(dateyyyyMMddFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddFromJson.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromJson.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromJson.toYaml(), equals(yyyyMMdd));
      });
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
      test('dateyyyyMMddFromUnits', () {
        expect(dateyyyyMMddFromUnits.isValid, isTrue);
        expect(dateyyyyMMddFromUnits.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddFromUnits.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromUnits.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromUnits.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromUnits.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddFromYaml', () {
        expect(dateyyyyMMddFromYaml.isValid, isTrue);
        expect(dateyyyyMMddFromYaml.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddFromYaml.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromYaml.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromYaml.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromYaml.toYaml(), equals(yyyyMMdd));
      });
    });
    group('yyyyMMddTZ - 2012-01-31T', () {
      // TODO(Dokotela): reasonable that this truncates the output?
      test('dateyyyyMMddTZ', () {
        expect(dateyyyyMMddTZ.isValid, isTrue);
        expect(dateyyyyMMddTZ.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZ.valueDateTime, equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTZ.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZ.toJson(), equals(yyyyMMddTZ));
        expect(dateyyyyMMddTZ.toYaml(), equals(yyyyMMddTZ));
      });
      test(
          'dateyyyyMMddTzzDateTime - no precision given, so must assume full DateTime input',
          () {
        expect(dateyyyyMMddTzzDateTime.isValid, isTrue);
        expect(dateyyyyMMddTzzDateTime.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTzzDateTime.valueDateTime, equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTzzDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTzzDateTime.toJson(),
            equals('${yyyyMMdd} 00:00:00.000'));
        expect(dateyyyyMMddTzzDateTime.toYaml(),
            equals('${yyyyMMdd} 00:00:00.000'));
      });
      test('dateyyyyMMddTzzDateTimeFromString', () {
        expect(dateyyyyMMddTzzDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTzzDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTzzDateTimeFromString.valueDateTime,
            equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTzzDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTzzDateTimeFromString.toJson(),
            equals('${yyyyMMdd} 00:00:00.000'));
        expect(dateyyyyMMddTzzDateTimeFromString.toYaml(),
            equals('${yyyyMMdd} 00:00:00.000'));
      });
      test('dateyyyyMMddTZFromString', () {
        expect(dateyyyyMMddTZFromString.isValid, isTrue);
        expect(dateyyyyMMddTZFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromString.valueDateTime,
            equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTZFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromString.toJson(), equals(yyyyMMddTZ));
        expect(dateyyyyMMddTZFromString.toYaml(), equals(yyyyMMddTZ));
      });
      test('dateyyyyMMddTZFromDateTime', () {
        expect(dateyyyyMMddTZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTZFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromDateTime.valueDateTime,
            equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTZFromDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromDateTime.toJson(),
            equals('${yyyyMMdd} 00:00:00.000'));
        expect(dateyyyyMMddTZFromDateTime.toYaml(),
            equals('${yyyyMMdd} 00:00:00.000'));
      });
      test('dateyyyyMMddTZFromJson', () {
        expect(dateyyyyMMddTZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTZFromJson.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTZFromJson.valueDateTime, equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTZFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromJson.toJson(), equals(yyyyMMddTZ));
        expect(dateyyyyMMddTZFromJson.toYaml(), equals(yyyyMMddTZ));
      });
      test('dateyyyyMMddTzzDateTimeFromJson', () {
        expect(dateyyyyMMddTzzDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTzzDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTzzDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTzzDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTzzDateTimeFromJson.toJson(),
            equals('${yyyyMMdd} 00:00:00.000'));
        expect(dateyyyyMMddTzzDateTimeFromJson.toYaml(),
            equals('${yyyyMMdd} 00:00:00.000'));
      });
      test('dateyyyyMMddTzzDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTzzDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTzzDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTzzDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTzzDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(dateyyyyMMddTzzDateTimeFromStringFromJson.toJson(),
            equals('${yyyyMMdd} 00:00:00.000'));
        expect(dateyyyyMMddTzzDateTimeFromStringFromJson.toYaml(),
            equals('${yyyyMMdd} 00:00:00.000'));
      });
      test('dateyyyyMMddTZFromUnits', () {
        expect(dateyyyyMMddTZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTZFromUnits.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTZFromUnits.valueDateTime, equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTZFromUnits.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromUnits.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromUnits.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZFromYaml', () {
        expect(dateyyyyMMddTZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTZFromYaml.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTZFromYaml.valueDateTime, equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTZFromYaml.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromYaml.toJson(), equals(yyyyMMddTZ));
        expect(dateyyyyMMddTZFromYaml.toYaml(), equals(yyyyMMddTZ));
      });
    });
    group('yyyyMMddTZZ - 2012-01-31T-04:00', () {
      // TODO(Dokotela): reasonable to truncate output?
      test('dateyyyyMMddTZZ', () {
        expect(dateyyyyMMddTZZ.isValid, isTrue);
        expect(dateyyyyMMddTZZ.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZZ.valueDateTime, equals(yyyyMMddTZZDateTime));
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
        expect(dateyyyyMMddTZZFromString.toJson(), equals('2012-01-31T-04:00'));
        expect(dateyyyyMMddTZZFromString.toYaml(), equals('2012-01-31T-04:00'));
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
        expect(dateyyyyMMddTZZFromYaml.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZFromYaml.toYaml(), equals(yyyyMMdd));
      });
    });
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
    group('yyyyMMddTHHZ - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHZ', () {
        expect(dateyyyyMMddTHHZ.isValid, isTrue);
        expect(dateyyyyMMddTHHZ.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZ.valueDateTime, equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZ.toString(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZ.toJson(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZ.toYaml(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZDateTime', () {
        expect(dateyyyyMMddTHHZDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHZDateTime.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZDateTime.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZDateTime.toString(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZDateTime.toJson(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZDateTime.toYaml(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZDateTimeFromString', () {
        expect(dateyyyyMMddTHHZDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHZDateTimeFromString.valueString,
            equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZDateTimeFromString.toString(),
            equals(yyyyMMddTHHZ));
        expect(
            dateyyyyMMddTHHZDateTimeFromString.toJson(), equals(yyyyMMddTHHZ));
        expect(
            dateyyyyMMddTHHZDateTimeFromString.toYaml(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZFromString', () {
        expect(dateyyyyMMddTHHZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHZFromString.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromString.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZFromString.toString(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromString.toJson(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromString.toYaml(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZFromDateTime', () {
        expect(dateyyyyMMddTHHZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHZFromDateTime.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZFromDateTime.toString(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromDateTime.toJson(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromDateTime.toYaml(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZFromJson', () {
        expect(dateyyyyMMddTHHZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHZFromJson.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromJson.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZFromJson.toString(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromJson.toJson(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromJson.toYaml(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHZDateTimeFromJson.isValid, isTrue);
        expect(
            dateyyyyMMddTHHZDateTimeFromJson.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(
            dateyyyyMMddTHHZDateTimeFromJson.toString(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZDateTimeFromJson.toJson(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZDateTimeFromJson.toYaml(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZDateTimeFromStringFromJson.toYaml(),
            equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZFromUnits', () {
        expect(dateyyyyMMddTHHZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHZFromUnits.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromUnits.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZFromUnits.toString(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromUnits.toJson(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromUnits.toYaml(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZFromYaml', () {
        expect(dateyyyyMMddTHHZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHZFromYaml.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromYaml.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZFromYaml.toString(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromYaml.toJson(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromYaml.toYaml(), equals(yyyyMMddTHHZ));
      });
    });
    group('yyyyMMddTHHZZ - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHZZ', () {
        expect(dateyyyyMMddTHHZZ.isValid, isTrue);
        expect(dateyyyyMMddTHHZZ.valueString, equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZ.valueDateTime, equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZ.toString(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZ.toJson(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZ.toYaml(), equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZDateTime', () {
        expect(dateyyyyMMddTHHZZDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHZZDateTime.valueString, equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZDateTime.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZDateTime.toString(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZDateTime.toJson(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZDateTime.toYaml(), equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZDateTimeFromString', () {
        expect(dateyyyyMMddTHHZZDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHZZDateTimeFromString.valueString,
            equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZDateTimeFromString.toString(),
            equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZDateTimeFromString.toJson(),
            equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZDateTimeFromString.toYaml(),
            equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZFromString', () {
        expect(dateyyyyMMddTHHZZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHZZFromString.valueString, equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromString.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZFromString.toString(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromString.toJson(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromString.toYaml(), equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZFromDateTime', () {
        expect(dateyyyyMMddTHHZZFromDateTime.isValid, isTrue);
        expect(
            dateyyyyMMddTHHZZFromDateTime.valueString, equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZFromDateTime.toString(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromDateTime.toJson(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromDateTime.toYaml(), equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZFromJson', () {
        expect(dateyyyyMMddTHHZZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHZZFromJson.valueString, equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromJson.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZFromJson.toString(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromJson.toJson(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromJson.toYaml(), equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHZZDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHZZDateTimeFromJson.valueString,
            equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZDateTimeFromJson.toString(),
            equals(yyyyMMddTHHZZ));
        expect(
            dateyyyyMMddTHHZZDateTimeFromJson.toJson(), equals(yyyyMMddTHHZZ));
        expect(
            dateyyyyMMddTHHZZDateTimeFromJson.toYaml(), equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHZZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHZZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZDateTimeFromStringFromJson.toYaml(),
            equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZFromUnits', () {
        expect(dateyyyyMMddTHHZZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHZZFromUnits.valueString, equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromUnits.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZFromUnits.toString(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromUnits.toJson(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromUnits.toYaml(), equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZFromYaml', () {
        expect(dateyyyyMMddTHHZZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHZZFromYaml.valueString, equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromYaml.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZFromYaml.toString(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromYaml.toJson(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromYaml.toYaml(), equals(yyyyMMddTHHZZ));
      });
    });
    group('yyyyMMddTHHmm - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHmm', () {
        expect(dateyyyyMMddTHHmm.isValid, isTrue);
        expect(dateyyyyMMddTHHmm.valueString, equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmm.valueDateTime, equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmm.toString(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmm.toJson(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmm.toYaml(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmDateTime', () {
        expect(dateyyyyMMddTHHmmDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmDateTime.valueString, equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmDateTime.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmDateTime.toString(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmDateTime.toJson(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmDateTime.toYaml(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmDateTimeFromString.valueString,
            equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmDateTimeFromString.toString(),
            equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmDateTimeFromString.toJson(),
            equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmDateTimeFromString.toYaml(),
            equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmFromString', () {
        expect(dateyyyyMMddTHHmmFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmFromString.valueString, equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromString.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmFromString.toString(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromString.toJson(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromString.toYaml(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmFromDateTime', () {
        expect(dateyyyyMMddTHHmmFromDateTime.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmFromDateTime.valueString, equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmFromDateTime.toString(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromDateTime.toJson(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromDateTime.toYaml(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmFromJson', () {
        expect(dateyyyyMMddTHHmmFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmFromJson.valueString, equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromJson.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmFromJson.toString(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromJson.toJson(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromJson.toYaml(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmDateTimeFromJson.valueString,
            equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmDateTimeFromJson.toString(),
            equals(yyyyMMddTHHmm));
        expect(
            dateyyyyMMddTHHmmDateTimeFromJson.toJson(), equals(yyyyMMddTHHmm));
        expect(
            dateyyyyMMddTHHmmDateTimeFromJson.toYaml(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHmmDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmDateTimeFromStringFromJson.valueString,
            equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmDateTimeFromStringFromJson.toString(),
            equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmDateTimeFromStringFromJson.toYaml(),
            equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmFromUnits', () {
        expect(dateyyyyMMddTHHmmFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmFromUnits.valueString, equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmFromUnits.toString(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromUnits.toJson(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromUnits.toYaml(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmFromYaml', () {
        expect(dateyyyyMMddTHHmmFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHmmFromYaml.valueString, equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmFromYaml.toString(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromYaml.toJson(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromYaml.toYaml(), equals(yyyyMMddTHHmm));
      });
    });
    group('yyyyMMddTHHmmZ - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHmmZ', () {
        expect(dateyyyyMMddTHHmmZ.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZ.valueString, equals(yyyyMMddTHHmmZ));
        expect(
            dateyyyyMMddTHHmmZ.valueDateTime, equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZ.toString(), equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZ.toJson(), equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZ.toYaml(), equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZDateTime', () {
        expect(dateyyyyMMddTHHmmZDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZDateTime.valueString, equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZDateTime.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZDateTime.toString(), equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZDateTime.toJson(), equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZDateTime.toYaml(), equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmZDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZDateTimeFromString.valueString,
            equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZDateTimeFromString.toString(),
            equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZDateTimeFromString.toJson(),
            equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZDateTimeFromString.toYaml(),
            equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZFromString', () {
        expect(dateyyyyMMddTHHmmZFromString.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmZFromString.valueString, equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromString.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZFromString.toString(), equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromString.toJson(), equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromString.toYaml(), equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZFromDateTime', () {
        expect(dateyyyyMMddTHHmmZFromDateTime.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmZFromDateTime.valueString, equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(
            dateyyyyMMddTHHmmZFromDateTime.toString(), equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromDateTime.toJson(), equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromDateTime.toYaml(), equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZFromJson', () {
        expect(dateyyyyMMddTHHmmZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZFromJson.valueString, equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromJson.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZFromJson.toString(), equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromJson.toJson(), equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromJson.toYaml(), equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmZDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZDateTimeFromJson.valueString,
            equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZDateTimeFromJson.toString(),
            equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZDateTimeFromJson.toJson(),
            equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZDateTimeFromJson.toYaml(),
            equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHmmZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZDateTimeFromStringFromJson.toYaml(),
            equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZFromUnits', () {
        expect(dateyyyyMMddTHHmmZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZFromUnits.valueString, equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZFromUnits.toString(), equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromUnits.toJson(), equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromUnits.toYaml(), equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZFromYaml', () {
        expect(dateyyyyMMddTHHmmZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZFromYaml.valueString, equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZFromYaml.toString(), equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromYaml.toJson(), equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromYaml.toYaml(), equals(yyyyMMddTHHmmZ));
      });
    });
    group('yyyyMMddTHHmmZZ - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHmmZZ', () {
        expect(dateyyyyMMddTHHmmZZ.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZZ.valueString, equals(yyyyMMddTHHmmZZ));
        expect(
            dateyyyyMMddTHHmmZZ.valueDateTime, equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZ.toString(), equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZ.toJson(), equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZ.toYaml(), equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZDateTime', () {
        expect(dateyyyyMMddTHHmmZZDateTime.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmZZDateTime.valueString, equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZDateTime.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZDateTime.toString(), equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZDateTime.toJson(), equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZDateTime.toYaml(), equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmZZDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZZDateTimeFromString.valueString,
            equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZDateTimeFromString.toString(),
            equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZDateTimeFromString.toJson(),
            equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZDateTimeFromString.toYaml(),
            equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZFromString', () {
        expect(dateyyyyMMddTHHmmZZFromString.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmZZFromString.valueString, equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZFromString.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(
            dateyyyyMMddTHHmmZZFromString.toString(), equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZFromString.toJson(), equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZFromString.toYaml(), equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZFromDateTime', () {
        expect(dateyyyyMMddTHHmmZZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZZFromDateTime.valueString,
            equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZFromDateTime.toString(),
            equals(yyyyMMddTHHmmZZ));
        expect(
            dateyyyyMMddTHHmmZZFromDateTime.toJson(), equals(yyyyMMddTHHmmZZ));
        expect(
            dateyyyyMMddTHHmmZZFromDateTime.toYaml(), equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZFromJson', () {
        expect(dateyyyyMMddTHHmmZZFromJson.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmZZFromJson.valueString, equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZFromJson.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZFromJson.toString(), equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZFromJson.toJson(), equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZFromJson.toYaml(), equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmZZDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZZDateTimeFromJson.valueString,
            equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZDateTimeFromJson.toString(),
            equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZDateTimeFromJson.toJson(),
            equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZDateTimeFromJson.toYaml(),
            equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHmmZZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZDateTimeFromStringFromJson.toYaml(),
            equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZFromUnits', () {
        expect(dateyyyyMMddTHHmmZZFromUnits.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmZZFromUnits.valueString, equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(
            dateyyyyMMddTHHmmZZFromUnits.toString(), equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZFromUnits.toJson(), equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZFromUnits.toYaml(), equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZFromYaml', () {
        expect(dateyyyyMMddTHHmmZZFromYaml.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmZZFromYaml.valueString, equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZFromYaml.toString(), equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZFromYaml.toJson(), equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZFromYaml.toYaml(), equals(yyyyMMddTHHmmZZ));
      });
    });
    group('yyyyMMddTHHmmss - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHmmss', () {
        expect(dateyyyyMMddTHHmmss.isValid, isTrue);
        expect(dateyyyyMMddTHHmmss.valueString, equals(yyyyMMddTHHmmss));
        expect(
            dateyyyyMMddTHHmmss.valueDateTime, equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmss.toString(), equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmss.toJson(), equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmss.toYaml(), equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssDateTime', () {
        expect(dateyyyyMMddTHHmmssDateTime.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssDateTime.valueString, equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssDateTime.toString(), equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssDateTime.toJson(), equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssDateTime.toYaml(), equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmssDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssDateTimeFromString.valueString,
            equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssDateTimeFromString.toString(),
            equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssDateTimeFromString.toJson(),
            equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssDateTimeFromString.toYaml(),
            equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssFromString', () {
        expect(dateyyyyMMddTHHmmssFromString.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssFromString.valueString, equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssFromString.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(
            dateyyyyMMddTHHmmssFromString.toString(), equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssFromString.toJson(), equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssFromString.toYaml(), equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssFromDateTime', () {
        expect(dateyyyyMMddTHHmmssFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssFromDateTime.valueString,
            equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssFromDateTime.toString(),
            equals(yyyyMMddTHHmmss));
        expect(
            dateyyyyMMddTHHmmssFromDateTime.toJson(), equals(yyyyMMddTHHmmss));
        expect(
            dateyyyyMMddTHHmmssFromDateTime.toYaml(), equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssFromJson', () {
        expect(dateyyyyMMddTHHmmssFromJson.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssFromJson.valueString, equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssFromJson.toString(), equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssFromJson.toJson(), equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssFromJson.toYaml(), equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmssDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssDateTimeFromJson.valueString,
            equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssDateTimeFromJson.toString(),
            equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssDateTimeFromJson.toJson(),
            equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssDateTimeFromJson.toYaml(),
            equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHmmssDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssDateTimeFromStringFromJson.valueString,
            equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssDateTimeFromStringFromJson.toString(),
            equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssDateTimeFromStringFromJson.toYaml(),
            equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssFromUnits', () {
        expect(dateyyyyMMddTHHmmssFromUnits.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssFromUnits.valueString, equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(
            dateyyyyMMddTHHmmssFromUnits.toString(), equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssFromUnits.toJson(), equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssFromUnits.toYaml(), equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssFromYaml', () {
        expect(dateyyyyMMddTHHmmssFromYaml.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssFromYaml.valueString, equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssFromYaml.toString(), equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssFromYaml.toJson(), equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssFromYaml.toYaml(), equals(yyyyMMddTHHmmss));
      });
    });
    group('yyyyMMddTHHmmssZ - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHmmssZ', () {
        expect(dateyyyyMMddTHHmmssZ.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZ.valueString, equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZ.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(dateyyyyMMddTHHmmssZ.toString(), equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZ.toJson(), equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZ.toYaml(), equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZDateTime', () {
        expect(dateyyyyMMddTHHmmssZDateTime.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssZDateTime.valueString, equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(
            dateyyyyMMddTHHmmssZDateTime.toString(), equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZDateTime.toJson(), equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZDateTime.toYaml(), equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmssZDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZDateTimeFromString.valueString,
            equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(dateyyyyMMddTHHmmssZDateTimeFromString.toString(),
            equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZDateTimeFromString.toJson(),
            equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZDateTimeFromString.toYaml(),
            equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZFromString', () {
        expect(dateyyyyMMddTHHmmssZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZFromString.valueString,
            equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(dateyyyyMMddTHHmmssZFromString.toString(),
            equals(yyyyMMddTHHmmssZ));
        expect(
            dateyyyyMMddTHHmmssZFromString.toJson(), equals(yyyyMMddTHHmmssZ));
        expect(
            dateyyyyMMddTHHmmssZFromString.toYaml(), equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZFromDateTime', () {
        expect(dateyyyyMMddTHHmmssZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZFromDateTime.valueString,
            equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(dateyyyyMMddTHHmmssZFromDateTime.toString(),
            equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZFromDateTime.toJson(),
            equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZFromDateTime.toYaml(),
            equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZFromJson', () {
        expect(dateyyyyMMddTHHmmssZFromJson.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssZFromJson.valueString, equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(
            dateyyyyMMddTHHmmssZFromJson.toString(), equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZFromJson.toJson(), equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZFromJson.toYaml(), equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmssZDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZDateTimeFromJson.valueString,
            equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(dateyyyyMMddTHHmmssZDateTimeFromJson.toString(),
            equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZDateTimeFromJson.toJson(),
            equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZDateTimeFromJson.toYaml(),
            equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHmmssZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(dateyyyyMMddTHHmmssZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZDateTimeFromStringFromJson.toYaml(),
            equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZFromUnits', () {
        expect(dateyyyyMMddTHHmmssZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZFromUnits.valueString,
            equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(
            dateyyyyMMddTHHmmssZFromUnits.toString(), equals(yyyyMMddTHHmmssZ));
        expect(
            dateyyyyMMddTHHmmssZFromUnits.toJson(), equals(yyyyMMddTHHmmssZ));
        expect(
            dateyyyyMMddTHHmmssZFromUnits.toYaml(), equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZFromYaml', () {
        expect(dateyyyyMMddTHHmmssZFromYaml.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssZFromYaml.valueString, equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(
            dateyyyyMMddTHHmmssZFromYaml.toString(), equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZFromYaml.toJson(), equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZFromYaml.toYaml(), equals(yyyyMMddTHHmmssZ));
      });
    });
    group('yyyyMMddTHHmmssZZ - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHmmssZZ', () {
        expect(dateyyyyMMddTHHmmssZZ.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZ.valueString, equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZ.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZ.toString(), equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZ.toJson(), equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZ.toYaml(), equals(yyyyMMddTHHmmssZZ));
      });
      test('dateyyyyMMddTHHmmssZZDateTime', () {
        expect(dateyyyyMMddTHHmmssZZDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZDateTime.valueString,
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZDateTime.toString(),
            equals(yyyyMMddTHHmmssZZ));
        expect(
            dateyyyyMMddTHHmmssZZDateTime.toJson(), equals(yyyyMMddTHHmmssZZ));
        expect(
            dateyyyyMMddTHHmmssZZDateTime.toYaml(), equals(yyyyMMddTHHmmssZZ));
      });
      test('dateyyyyMMddTHHmmssZZDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmssZZDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZDateTimeFromString.valueString,
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZDateTimeFromString.toString(),
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZDateTimeFromString.toJson(),
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZDateTimeFromString.toYaml(),
            equals(yyyyMMddTHHmmssZZ));
      });
      test('dateyyyyMMddTHHmmssZZFromString', () {
        expect(dateyyyyMMddTHHmmssZZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZFromString.valueString,
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZFromString.toString(),
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZFromString.toJson(),
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZFromString.toYaml(),
            equals(yyyyMMddTHHmmssZZ));
      });
      test('dateyyyyMMddTHHmmssZZFromDateTime', () {
        expect(dateyyyyMMddTHHmmssZZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZFromDateTime.valueString,
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZFromDateTime.toString(),
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZFromDateTime.toJson(),
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZFromDateTime.toYaml(),
            equals(yyyyMMddTHHmmssZZ));
      });
      test('dateyyyyMMddTHHmmssZZFromJson', () {
        expect(dateyyyyMMddTHHmmssZZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZFromJson.valueString,
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZFromJson.toString(),
            equals(yyyyMMddTHHmmssZZ));
        expect(
            dateyyyyMMddTHHmmssZZFromJson.toJson(), equals(yyyyMMddTHHmmssZZ));
        expect(
            dateyyyyMMddTHHmmssZZFromJson.toYaml(), equals(yyyyMMddTHHmmssZZ));
      });
      test('dateyyyyMMddTHHmmssZZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmssZZDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZDateTimeFromJson.valueString,
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZDateTimeFromJson.toString(),
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZDateTimeFromJson.toJson(),
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZDateTimeFromJson.toYaml(),
            equals(yyyyMMddTHHmmssZZ));
      });
      test('dateyyyyMMddTHHmmssZZDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHmmssZZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZDateTimeFromStringFromJson.toYaml(),
            equals(yyyyMMddTHHmmssZZ));
      });
      test('dateyyyyMMddTHHmmssZZFromUnits', () {
        expect(dateyyyyMMddTHHmmssZZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZFromUnits.valueString,
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZFromUnits.toString(),
            equals(yyyyMMddTHHmmssZZ));
        expect(
            dateyyyyMMddTHHmmssZZFromUnits.toJson(), equals(yyyyMMddTHHmmssZZ));
        expect(
            dateyyyyMMddTHHmmssZZFromUnits.toYaml(), equals(yyyyMMddTHHmmssZZ));
      });
      test('dateyyyyMMddTHHmmssZZFromYaml', () {
        expect(dateyyyyMMddTHHmmssZZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZFromYaml.valueString,
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZFromYaml.toString(),
            equals(yyyyMMddTHHmmssZZ));
        expect(
            dateyyyyMMddTHHmmssZZFromYaml.toJson(), equals(yyyyMMddTHHmmssZZ));
        expect(
            dateyyyyMMddTHHmmssZZFromYaml.toYaml(), equals(yyyyMMddTHHmmssZZ));
      });
    });
    group('yyyyMMddTHHmmssSSS - 2012-01-31T12:30+04:00', () {
      test('dateyyyyMMddTHHmmssSSS', () {
        expect(dateyyyyMMddTHHmmssSSS.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSS.valueString, equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSS.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSS.toString(), equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSS.toJson(), equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSS.toYaml(), equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSDateTime.valueString,
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSDateTime.toString(),
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSDateTime.toJson(),
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSDateTime.toYaml(),
            equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromString.valueString,
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromString.toString(),
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromString.toJson(),
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromString.toYaml(),
            equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSFromString', () {
        expect(dateyyyyMMddTHHmmssSSSFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSFromString.valueString,
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSFromString.toString(),
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromString.toJson(),
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromString.toYaml(),
            equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSFromDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSFromDateTime.valueString,
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSFromDateTime.toString(),
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromDateTime.toJson(),
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromDateTime.toYaml(),
            equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSFromJson', () {
        expect(dateyyyyMMddTHHmmssSSSFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSFromJson.valueString,
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSFromJson.toString(),
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromJson.toJson(),
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromJson.toYaml(),
            equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromJson.valueString,
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromJson.toString(),
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromJson.toJson(),
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromJson.toYaml(),
            equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson', () {
        expect(
            dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson.valueString,
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson.toString(),
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson.toYaml(),
            equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSFromUnits', () {
        expect(dateyyyyMMddTHHmmssSSSFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSFromUnits.valueString,
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSFromUnits.toString(),
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromUnits.toJson(),
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromUnits.toYaml(),
            equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSFromYaml', () {
        expect(dateyyyyMMddTHHmmssSSSFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSFromYaml.valueString,
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSFromYaml.toString(),
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromYaml.toJson(),
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromYaml.toYaml(),
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
        expect(dateyyyyMMddTHHmmssSSSZ.toString(), equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZ.toJson(), equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZ.toYaml(), equals(yyyyMMddTHHmmssSSSZ));
      });
      test('dateyyyyMMddTHHmmssSSSZDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSZDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZDateTime.valueString,
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZDateTime.toString(),
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZDateTime.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZDateTime.toYaml(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
      test('dateyyyyMMddTHHmmssSSSZDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromString.valueString,
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromString.toString(),
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromString.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromString.toYaml(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
      test('dateyyyyMMddTHHmmssSSSZFromString', () {
        expect(dateyyyyMMddTHHmmssSSSZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZFromString.valueString,
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZFromString.toString(),
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromString.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromString.toYaml(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
      test('dateyyyyMMddTHHmmssSSSZFromDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZFromDateTime.valueString,
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZFromDateTime.toString(),
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromDateTime.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromDateTime.toYaml(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
      test('dateyyyyMMddTHHmmssSSSZFromJson', () {
        expect(dateyyyyMMddTHHmmssSSSZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZFromJson.valueString,
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZFromJson.toString(),
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromJson.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromJson.toYaml(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
      test('dateyyyyMMddTHHmmssSSSZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromJson.valueString,
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromJson.toString(),
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromJson.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromJson.toYaml(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
      test('dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson', () {
        expect(
            dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson.toYaml(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
      test('dateyyyyMMddTHHmmssSSSZFromUnits', () {
        expect(dateyyyyMMddTHHmmssSSSZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZFromUnits.valueString,
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZFromUnits.toString(),
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromUnits.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromUnits.toYaml(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
      test('dateyyyyMMddTHHmmssSSSZFromYaml', () {
        expect(dateyyyyMMddTHHmmssSSSZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZFromYaml.valueString,
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZFromYaml.toString(),
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromYaml.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromYaml.toYaml(),
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
        expect(
            dateyyyyMMddTHHmmssSSSZZ.toString(), equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZ.toJson(), equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZ.toYaml(), equals(yyyyMMddTHHmmssSSSZZ));
      });
      test('dateyyyyMMddTHHmmssSSSZZDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSZZDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZDateTime.valueString,
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZDateTime.toString(),
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZDateTime.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZDateTime.toYaml(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
      test('dateyyyyMMddTHHmmssSSSZZDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromString.valueString,
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromString.toString(),
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromString.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromString.toYaml(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
      test('dateyyyyMMddTHHmmssSSSZZFromString', () {
        expect(dateyyyyMMddTHHmmssSSSZZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZFromString.valueString,
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZFromString.toString(),
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromString.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromString.toYaml(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
      test('dateyyyyMMddTHHmmssSSSZZFromDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSZZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZFromDateTime.valueString,
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZFromDateTime.toString(),
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromDateTime.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromDateTime.toYaml(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
      test('dateyyyyMMddTHHmmssSSSZZFromJson', () {
        expect(dateyyyyMMddTHHmmssSSSZZFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZFromJson.valueString,
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZFromJson.toString(),
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromJson.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromJson.toYaml(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
      test('dateyyyyMMddTHHmmssSSSZZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromJson.valueString,
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromJson.toString(),
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromJson.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromJson.toYaml(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
      test('dateyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson', () {
        expect(
            dateyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson.toYaml(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
      test('dateyyyyMMddTHHmmssSSSZZFromUnits', () {
        expect(dateyyyyMMddTHHmmssSSSZZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZFromUnits.valueString,
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZFromUnits.toString(),
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromUnits.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromUnits.toYaml(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
      test('dateyyyyMMddTHHmmssSSSZZFromYaml', () {
        expect(dateyyyyMMddTHHmmssSSSZZFromYaml.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZFromYaml.valueString,
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZFromYaml.toString(),
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromYaml.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromYaml.toYaml(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
    });
    group('dateInstant - 2012-01-31T12:30+04:00', () {
      test('dateInstant', () {
        expect(dateInstant.isValid, isTrue);
        expect(dateInstant.valueString, equals(instant));
        expect(dateInstant.valueDateTime, equals(instantDateTime));
        expect(dateInstant.toString(), equals(instant));
        expect(dateInstant.toJson(), equals(instant));
        expect(dateInstant.toYaml(), equals(instant));
      });
      test('dateInstantDateTime', () {
        expect(dateInstantDateTime.isValid, isTrue);
        expect(dateInstantDateTime.valueString, equals(instant));
        expect(dateInstantDateTime.valueDateTime, equals(instantDateTime));
        expect(dateInstantDateTime.toString(), equals(instant));
        expect(dateInstantDateTime.toJson(), equals(instant));
        expect(dateInstantDateTime.toYaml(), equals(instant));
      });
      test('dateInstantDateTimeFromString', () {
        expect(dateInstantDateTimeFromString.isValid, isTrue);
        expect(dateInstantDateTimeFromString.valueString, equals(instant));
        expect(dateInstantDateTimeFromString.valueDateTime,
            equals(instantDateTime));
        expect(dateInstantDateTimeFromString.toString(), equals(instant));
        expect(dateInstantDateTimeFromString.toJson(), equals(instant));
        expect(dateInstantDateTimeFromString.toYaml(), equals(instant));
      });
      test('dateInstantFromString', () {
        expect(dateInstantFromString.isValid, isTrue);
        expect(dateInstantFromString.valueString, equals(instant));
        expect(dateInstantFromString.valueDateTime, equals(instantDateTime));
        expect(dateInstantFromString.toString(), equals(instant));
        expect(dateInstantFromString.toJson(), equals(instant));
        expect(dateInstantFromString.toYaml(), equals(instant));
      });
      test('dateInstantFromDateTime', () {
        expect(dateInstantFromDateTime.isValid, isTrue);
        expect(dateInstantFromDateTime.valueString, equals(instant));
        expect(dateInstantFromDateTime.valueDateTime, equals(instantDateTime));
        expect(dateInstantFromDateTime.toString(), equals(instant));
        expect(dateInstantFromDateTime.toJson(), equals(instant));
        expect(dateInstantFromDateTime.toYaml(), equals(instant));
      });
      test('dateInstantFromJson', () {
        expect(dateInstantFromJson.isValid, isTrue);
        expect(dateInstantFromJson.valueString, equals(instant));
        expect(dateInstantFromJson.valueDateTime, equals(instantDateTime));
        expect(dateInstantFromJson.toString(), equals(instant));
        expect(dateInstantFromJson.toJson(), equals(instant));
        expect(dateInstantFromJson.toYaml(), equals(instant));
      });
      test('dateInstantDateTimeFromJson', () {
        expect(dateInstantDateTimeFromJson.isValid, isTrue);
        expect(dateInstantDateTimeFromJson.valueString, equals(instant));
        expect(
            dateInstantDateTimeFromJson.valueDateTime, equals(instantDateTime));
        expect(dateInstantDateTimeFromJson.toString(), equals(instant));
        expect(dateInstantDateTimeFromJson.toJson(), equals(instant));
        expect(dateInstantDateTimeFromJson.toYaml(), equals(instant));
      });
      test('dateInstantDateTimeFromStringFromJson', () {
        expect(dateInstantDateTimeFromStringFromJson.isValid, isTrue);
        expect(
            dateInstantDateTimeFromStringFromJson.valueString, equals(instant));
        expect(dateInstantDateTimeFromStringFromJson.valueDateTime,
            equals(instantDateTime));
        expect(
            dateInstantDateTimeFromStringFromJson.toString(), equals(instant));
        expect(dateInstantDateTimeFromStringFromJson.toJson(), equals(instant));
        expect(dateInstantDateTimeFromStringFromJson.toYaml(), equals(instant));
      });
      test('dateInstantFromUnits', () {
        expect(dateInstantFromUnits.isValid, isTrue);
        expect(dateInstantFromUnits.valueString, equals(instant));
        expect(dateInstantFromUnits.valueDateTime, equals(instantDateTime));
        expect(dateInstantFromUnits.toString(), equals(instant));
        expect(dateInstantFromUnits.toJson(), equals(instant));
        expect(dateInstantFromUnits.toYaml(), equals(instant));
      });
      test('dateInstantFromYaml', () {
        expect(dateInstantFromYaml.isValid, isTrue);
        expect(dateInstantFromYaml.valueString, equals(instant));
        expect(dateInstantFromYaml.valueDateTime, equals(instantDateTime));
        expect(dateInstantFromYaml.toString(), equals(instant));
        expect(dateInstantFromYaml.toJson(), equals(instant));
        expect(dateInstantFromYaml.toYaml(), equals(instant));
      });
    });
    group('DateTime - 2012-01-31T12:30+04:00', () {
      test('dateDateTime', () {
        expect(dateDateTime.isValid, isTrue);
        expect(dateDateTime.valueString, equals(dateTime));
        expect(dateDateTime.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTime.toString(), equals(dateTime));
        expect(dateDateTime.toJson(), equals(dateTime));
        expect(dateDateTime.toYaml(), equals(dateTime));
      });
      test('dateDateTimeDateTime', () {
        expect(dateDateTimeDateTime.isValid, isTrue);
        expect(dateDateTimeDateTime.valueString, equals(dateTime));
        expect(dateDateTimeDateTime.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeDateTime.toString(), equals(dateTime));
        expect(dateDateTimeDateTime.toJson(), equals(dateTime));
        expect(dateDateTimeDateTime.toYaml(), equals(dateTime));
      });
      test('dateDateTimeDateTimeFromString', () {
        expect(dateDateTimeDateTimeFromString.isValid, isTrue);
        expect(dateDateTimeDateTimeFromString.valueString, equals(dateTime));
        expect(dateDateTimeDateTimeFromString.valueDateTime,
            equals(dateTimeDateTime));
        expect(dateDateTimeDateTimeFromString.toString(), equals(dateTime));
        expect(dateDateTimeDateTimeFromString.toJson(), equals(dateTime));
        expect(dateDateTimeDateTimeFromString.toYaml(), equals(dateTime));
      });
      test('dateDateTimeFromString', () {
        expect(dateDateTimeFromString.isValid, isTrue);
        expect(dateDateTimeFromString.valueString, equals(dateTime));
        expect(dateDateTimeFromString.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeFromString.toString(), equals(dateTime));
        expect(dateDateTimeFromString.toJson(), equals(dateTime));
        expect(dateDateTimeFromString.toYaml(), equals(dateTime));
      });
      test('dateDateTimeFromDateTime', () {
        expect(dateDateTimeFromDateTime.isValid, isTrue);
        expect(dateDateTimeFromDateTime.valueString, equals(dateTime));
        expect(
            dateDateTimeFromDateTime.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeFromDateTime.toString(), equals(dateTime));
        expect(dateDateTimeFromDateTime.toJson(), equals(dateTime));
        expect(dateDateTimeFromDateTime.toYaml(), equals(dateTime));
      });
      test('dateDateTimeFromJson', () {
        expect(dateDateTimeFromJson.isValid, isTrue);
        expect(dateDateTimeFromJson.valueString, equals(dateTime));
        expect(dateDateTimeFromJson.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeFromJson.toString(), equals(dateTime));
        expect(dateDateTimeFromJson.toJson(), equals(dateTime));
        expect(dateDateTimeFromJson.toYaml(), equals(dateTime));
      });
      test('dateDateTimeDateTimeFromJson', () {
        expect(dateDateTimeDateTimeFromJson.isValid, isTrue);
        expect(dateDateTimeDateTimeFromJson.valueString, equals(dateTime));
        expect(dateDateTimeDateTimeFromJson.valueDateTime,
            equals(dateTimeDateTime));
        expect(dateDateTimeDateTimeFromJson.toString(), equals(dateTime));
        expect(dateDateTimeDateTimeFromJson.toJson(), equals(dateTime));
        expect(dateDateTimeDateTimeFromJson.toYaml(), equals(dateTime));
      });
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
      test('dateDateTimeFromUnits', () {
        expect(dateDateTimeFromUnits.isValid, isTrue);
        expect(dateDateTimeFromUnits.valueString, equals(dateTime));
        expect(dateDateTimeFromUnits.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeFromUnits.toString(), equals(dateTime));
        expect(dateDateTimeFromUnits.toJson(), equals(dateTime));
        expect(dateDateTimeFromUnits.toYaml(), equals(dateTime));
      });
      test('dateDateTimeFromYaml', () {
        expect(dateDateTimeFromYaml.isValid, isTrue);
        expect(dateDateTimeFromYaml.valueString, equals(dateTime));
        expect(dateDateTimeFromYaml.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeFromYaml.toString(), equals(dateTime));
        expect(dateDateTimeFromYaml.toJson(), equals(dateTime));
        expect(dateDateTimeFromYaml.toYaml(), equals(dateTime));
      });
    });
  });
}

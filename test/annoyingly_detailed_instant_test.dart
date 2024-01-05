import 'package:fhir/primitive_types/date_time_precision.dart';
import 'package:fhir/primitive_types/instant.dart';
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

  final dateyyyy = FhirInstant(yyyy);
  final dateyyyyDateTime = FhirInstant(yyyyDateTime);
  final dateyyyyDateTimeFromString =
      FhirInstant(yyyyDateTimeFromString, DateTimePrecision.yyyy);
  final dateyyyyFromString = FhirInstant.fromString(yyyy);
  final dateyyyyFromDateTime =
      FhirInstant.fromDateTime(yyyyDateTime, DateTimePrecision.yyyy);
  final dateyyyyFromJson = FhirInstant.fromJson(yyyy);
  final dateyyyyDateTimeFromJson =
      FhirInstant.fromJson(yyyyDateTime, DateTimePrecision.yyyy);
  final dateyyyyDateTimeFromStringFromJson =
      FhirInstant.fromJson(yyyyDateTimeFromString);
  final dateyyyyFromYaml = FhirInstant.fromYaml(yyyy);

  final dateyyyyMM = FhirInstant(yyyyMM);
  final dateyyyyMMDateTime = FhirInstant(yyyyMMDateTime);
  final dateyyyyMMDateTimeFromString =
      FhirInstant(yyyyMMDateTimeFromString, DateTimePrecision.yyyy_MM);
  final dateyyyyMMFromString = FhirInstant.fromString(yyyyMM);
  final dateyyyyMMFromDateTime =
      FhirInstant.fromDateTime(yyyyMMDateTime, DateTimePrecision.yyyy_MM);
  final dateyyyyMMFromJson = FhirInstant.fromJson(yyyyMM);
  final dateyyyyMMDateTimeFromJson = FhirInstant.fromJson(yyyyMMDateTime);
  final dateyyyyMMDateTimeFromStringFromJson =
      FhirInstant.fromJson(yyyyMMDateTimeFromString, DateTimePrecision.yyyy_MM);
  final dateyyyyMMFromYaml = FhirInstant.fromYaml(yyyyMM);

  final dateyyyyMMdd = FhirInstant(yyyyMMdd);
  final dateyyyyMMddDateTime = FhirInstant(yyyyMMddDateTime);
  final dateyyyyMMddDateTimeFromString =
      FhirInstant(yyyyMMddDateTimeFromString);
  final dateyyyyMMddFromString = FhirInstant.fromString(yyyyMMdd);
  final dateyyyyMMddFromDateTime = FhirInstant.fromDateTime(yyyyMMddDateTime);
  final dateyyyyMMddFromJson = FhirInstant.fromJson(yyyyMMdd);
  final dateyyyyMMddDateTimeFromJson = FhirInstant.fromJson(yyyyMMddDateTime);
  final dateyyyyMMddDateTimeFromStringFromJson =
      FhirInstant.fromJson(yyyyMMddDateTimeFromString);
  final dateyyyyMMddFromYaml = FhirInstant.fromYaml(yyyyMMdd);

  final dateyyyyMMddTZ = FhirInstant(yyyyMMddTZ);
  final dateyyyyMMddTzzDateTime = FhirInstant(yyyyMMddTzzDateTime);
  final dateyyyyMMddTzzDateTimeFromString =
      FhirInstant(yyyyMMddTzzDateTimeFromString);
  final dateyyyyMMddTZFromString = FhirInstant.fromString(yyyyMMddTZ);
  final dateyyyyMMddTZFromDateTime =
      FhirInstant.fromDateTime(yyyyMMddTzzDateTime);
  final dateyyyyMMddTZFromJson = FhirInstant.fromJson(yyyyMMddTZ);
  final dateyyyyMMddTzzDateTimeFromJson =
      FhirInstant.fromJson(yyyyMMddTzzDateTime);
  final dateyyyyMMddTzzDateTimeFromStringFromJson =
      FhirInstant.fromJson(yyyyMMddTzzDateTimeFromString);
  final dateyyyyMMddTZFromYaml = FhirInstant.fromYaml(yyyyMMddTZ);

  final dateyyyyMMddTZZ = FhirInstant(yyyyMMddTZZ);
  final dateyyyyMMddTZZDateTime = FhirInstant(yyyyMMddTZZDateTime);
  final dateyyyyMMddTZZDateTimeFromString =
      FhirInstant(yyyyMMddTZZDateTimeFromString);
  final dateyyyyMMddTZZFromString = FhirInstant.fromString(yyyyMMddTZZ);
  final dateyyyyMMddTZZFromDateTime =
      FhirInstant.fromDateTime(yyyyMMddTZZDateTime);
  final dateyyyyMMddTZZFromJson = FhirInstant.fromJson(yyyyMMddTZZ);
  final dateyyyyMMddTZZDateTimeFromJson =
      FhirInstant.fromJson(yyyyMMddTZZDateTime);
  final dateyyyyMMddTZZDateTimeFromStringFromJson =
      FhirInstant.fromJson(yyyyMMddTZZDateTimeFromString);
  final dateyyyyMMddTZZFromYaml = FhirInstant.fromYaml(yyyyMMddTZZ);

  final dateyyyyMMddTHH = FhirInstant(yyyyMMddTHH);
  final dateyyyyMMddTHHDateTime = FhirInstant(yyyyMMddTHHDateTime);
  final dateyyyyMMddTHHDateTimeFromString =
      FhirInstant(yyyyMMddTHHDateTimeFromString);
  final dateyyyyMMddTHHFromString = FhirInstant.fromString(yyyyMMddTHH);
  final dateyyyyMMddTHHFromDateTime =
      FhirInstant.fromDateTime(yyyyMMddTHHDateTime);
  final dateyyyyMMddTHHFromJson = FhirInstant.fromJson(yyyyMMddTHH);
  final dateyyyyMMddTHHDateTimeFromJson =
      FhirInstant.fromJson(yyyyMMddTHHDateTime);
  final dateyyyyMMddTHHDateTimeFromStringFromJson =
      FhirInstant.fromJson(yyyyMMddTHHDateTimeFromString);
  final dateyyyyMMddTHHFromYaml = FhirInstant.fromYaml(yyyyMMddTHH);

  final dateyyyyMMddTHHZ = FhirInstant(yyyyMMddTHHZ);
  final dateyyyyMMddTHHZDateTime = FhirInstant(yyyyMMddTHHZDateTime);
  final dateyyyyMMddTHHZDateTimeFromString =
      FhirInstant(yyyyMMddTHHZDateTimeFromString);
  final dateyyyyMMddTHHZFromString = FhirInstant.fromString(yyyyMMddTHHZ);
  final dateyyyyMMddTHHZFromDateTime =
      FhirInstant.fromDateTime(yyyyMMddTHHZDateTime);
  final dateyyyyMMddTHHZFromJson = FhirInstant.fromJson(yyyyMMddTHHZ);
  final dateyyyyMMddTHHZDateTimeFromJson =
      FhirInstant.fromJson(yyyyMMddTHHZDateTime);
  final dateyyyyMMddTHHZDateTimeFromStringFromJson =
      FhirInstant.fromJson(yyyyMMddTHHZDateTimeFromString);
  final dateyyyyMMddTHHZFromYaml = FhirInstant.fromYaml(yyyyMMddTHHZ);

  final dateyyyyMMddTHHZZ = FhirInstant(yyyyMMddTHHZZ);
  final dateyyyyMMddTHHZZDateTime = FhirInstant(yyyyMMddTHHZZDateTime);
  final dateyyyyMMddTHHZZDateTimeFromString =
      FhirInstant(yyyyMMddTHHZZDateTimeFromString);
  final dateyyyyMMddTHHZZFromString = FhirInstant.fromString(yyyyMMddTHHZZ);
  final dateyyyyMMddTHHZZFromDateTime =
      FhirInstant.fromDateTime(yyyyMMddTHHZZDateTime);
  final dateyyyyMMddTHHZZFromJson = FhirInstant.fromJson(yyyyMMddTHHZZ);
  final dateyyyyMMddTHHZZDateTimeFromJson =
      FhirInstant.fromJson(yyyyMMddTHHZZDateTime);
  final dateyyyyMMddTHHZZDateTimeFromStringFromJson =
      FhirInstant.fromJson(yyyyMMddTHHZZDateTimeFromString);
  final dateyyyyMMddTHHZZFromYaml = FhirInstant.fromYaml(yyyyMMddTHHZZ);

  final dateyyyyMMddTHHmm = FhirInstant(yyyyMMddTHHmm);
  final dateyyyyMMddTHHmmDateTime = FhirInstant(yyyyMMddTHHmmDateTime);
  final dateyyyyMMddTHHmmDateTimeFromString =
      FhirInstant(yyyyMMddTHHmmDateTimeFromString);
  final dateyyyyMMddTHHmmFromString = FhirInstant.fromString(yyyyMMddTHHmm);
  final dateyyyyMMddTHHmmFromDateTime =
      FhirInstant.fromDateTime(yyyyMMddTHHmmDateTime);
  final dateyyyyMMddTHHmmFromJson = FhirInstant.fromJson(yyyyMMddTHHmm);
  final dateyyyyMMddTHHmmDateTimeFromJson =
      FhirInstant.fromJson(yyyyMMddTHHmmDateTime);
  final dateyyyyMMddTHHmmDateTimeFromStringFromJson =
      FhirInstant.fromJson(yyyyMMddTHHmmDateTimeFromString);
  final dateyyyyMMddTHHmmFromYaml = FhirInstant.fromYaml(yyyyMMddTHHmm);

  final dateyyyyMMddTHHmmZ = FhirInstant(yyyyMMddTHHmmZ);
  final dateyyyyMMddTHHmmZDateTime = FhirInstant(yyyyMMddTHHmmZDateTime);
  final dateyyyyMMddTHHmmZDateTimeFromString =
      FhirInstant(yyyyMMddTHHmmZDateTimeFromString);
  final dateyyyyMMddTHHmmZFromString = FhirInstant.fromString(yyyyMMddTHHmmZ);
  final dateyyyyMMddTHHmmZFromDateTime =
      FhirInstant.fromDateTime(yyyyMMddTHHmmZDateTime);
  final dateyyyyMMddTHHmmZFromJson = FhirInstant.fromJson(yyyyMMddTHHmmZ);
  final dateyyyyMMddTHHmmZDateTimeFromJson =
      FhirInstant.fromJson(yyyyMMddTHHmmZDateTime);
  final dateyyyyMMddTHHmmZDateTimeFromStringFromJson =
      FhirInstant.fromJson(yyyyMMddTHHmmZDateTimeFromString);
  final dateyyyyMMddTHHmmZFromYaml = FhirInstant.fromYaml(yyyyMMddTHHmmZ);

  final dateyyyyMMddTHHmmZZ = FhirInstant(yyyyMMddTHHmmZZ);
  final dateyyyyMMddTHHmmZZDateTime = FhirInstant(yyyyMMddTHHmmZZDateTime);
  final dateyyyyMMddTHHmmZZDateTimeFromString =
      FhirInstant(yyyyMMddTHHmmZZDateTimeFromString);
  final dateyyyyMMddTHHmmZZFromString = FhirInstant.fromString(yyyyMMddTHHmmZZ);
  final dateyyyyMMddTHHmmZZFromDateTime =
      FhirInstant.fromDateTime(yyyyMMddTHHmmZZDateTime);
  final dateyyyyMMddTHHmmZZFromJson = FhirInstant.fromJson(yyyyMMddTHHmmZZ);
  final dateyyyyMMddTHHmmZZDateTimeFromJson =
      FhirInstant.fromJson(yyyyMMddTHHmmZZDateTime);
  final dateyyyyMMddTHHmmZZDateTimeFromStringFromJson =
      FhirInstant.fromJson(yyyyMMddTHHmmZZDateTimeFromString);
  final dateyyyyMMddTHHmmZZFromYaml = FhirInstant.fromYaml(yyyyMMddTHHmmZZ);

  final dateyyyyMMddTHHmmss = FhirInstant(yyyyMMddTHHmmss);
  final dateyyyyMMddTHHmmssDateTime = FhirInstant(yyyyMMddTHHmmssDateTime);
  final dateyyyyMMddTHHmmssDateTimeFromString =
      FhirInstant(yyyyMMddTHHmmssDateTimeFromString);
  final dateyyyyMMddTHHmmssFromString = FhirInstant.fromString(yyyyMMddTHHmmss);
  final dateyyyyMMddTHHmmssFromDateTime =
      FhirInstant.fromDateTime(yyyyMMddTHHmmssDateTime);
  final dateyyyyMMddTHHmmssFromJson = FhirInstant.fromJson(yyyyMMddTHHmmss);
  final dateyyyyMMddTHHmmssDateTimeFromJson =
      FhirInstant.fromJson(yyyyMMddTHHmmssDateTime);
  final dateyyyyMMddTHHmmssDateTimeFromStringFromJson =
      FhirInstant.fromJson(yyyyMMddTHHmmssDateTimeFromString);
  final dateyyyyMMddTHHmmssFromUnits = FhirInstant.fromUnits(
      year: 2012,
      month: 1,
      day: 31,
      hour: 12,
      minute: 30,
      second: 59,
      timezoneOffset: DateTime.timestamp().timeZoneOffset.inHours);
  final dateyyyyMMddTHHmmssFromYaml = FhirInstant.fromYaml(yyyyMMddTHHmmss);

  final dateyyyyMMddTHHmmssZ = FhirInstant(yyyyMMddTHHmmssZ);
  final dateyyyyMMddTHHmmssZDateTime = FhirInstant(yyyyMMddTHHmmssZDateTime);
  final dateyyyyMMddTHHmmssZDateTimeFromString =
      FhirInstant(yyyyMMddTHHmmssZDateTimeFromString);
  final dateyyyyMMddTHHmmssZFromString =
      FhirInstant.fromString(yyyyMMddTHHmmssZ);
  final dateyyyyMMddTHHmmssZFromDateTime =
      FhirInstant.fromDateTime(yyyyMMddTHHmmssZDateTime);
  final dateyyyyMMddTHHmmssZFromJson = FhirInstant.fromJson(yyyyMMddTHHmmssZ);
  final dateyyyyMMddTHHmmssZDateTimeFromJson =
      FhirInstant.fromJson(yyyyMMddTHHmmssZDateTime);
  final dateyyyyMMddTHHmmssZDateTimeFromStringFromJson =
      FhirInstant.fromJson(yyyyMMddTHHmmssZDateTimeFromString);
  final dateyyyyMMddTHHmmssZFromUnits = FhirInstant.fromUnits(
      year: 2012,
      month: 1,
      day: 31,
      hour: 12,
      minute: 30,
      second: 59,
      timezoneOffset: 0,
      isUTC: true);
  final dateyyyyMMddTHHmmssZFromYaml = FhirInstant.fromYaml(yyyyMMddTHHmmssZ);

  final dateyyyyMMddTHHmmssZZ = FhirInstant(yyyyMMddTHHmmssZZ);
  final dateyyyyMMddTHHmmssZZDateTime = FhirInstant(yyyyMMddTHHmmssZZDateTime);
  final dateyyyyMMddTHHmmssZZDateTimeFromString =
      FhirInstant(yyyyMMddTHHmmssZZDateTimeFromString);
  final dateyyyyMMddTHHmmssZZFromString =
      FhirInstant.fromString(yyyyMMddTHHmmssZZ);
  final dateyyyyMMddTHHmmssZZFromDateTime =
      FhirInstant.fromDateTime(yyyyMMddTHHmmssZZDateTime);
  final dateyyyyMMddTHHmmssZZFromJson = FhirInstant.fromJson(yyyyMMddTHHmmssZZ);
  final dateyyyyMMddTHHmmssZZDateTimeFromJson =
      FhirInstant.fromJson(yyyyMMddTHHmmssZZDateTime);
  final dateyyyyMMddTHHmmssZZDateTimeFromStringFromJson =
      FhirInstant.fromJson(yyyyMMddTHHmmssZZDateTimeFromString);
  final dateyyyyMMddTHHmmssZZFromUnits = FhirInstant.fromUnits(
      year: 2012,
      month: 1,
      day: 31,
      hour: 12,
      minute: 30,
      second: 59,
      timezoneOffset: -4);
  final dateyyyyMMddTHHmmssZZFromYaml = FhirInstant.fromYaml(yyyyMMddTHHmmssZZ);

  final dateyyyyMMddTHHmmssSSS = FhirInstant(yyyyMMddTHHmmssSSS);
  final dateyyyyMMddTHHmmssSSSDateTime =
      FhirInstant(yyyyMMddTHHmmssSSSDateTime);
  final dateyyyyMMddTHHmmssSSSDateTimeFromString =
      FhirInstant(yyyyMMddTHHmmssSSSDateTimeFromString);
  final dateyyyyMMddTHHmmssSSSFromString =
      FhirInstant.fromString(yyyyMMddTHHmmssSSS);
  final dateyyyyMMddTHHmmssSSSFromDateTime =
      FhirInstant.fromDateTime(yyyyMMddTHHmmssSSSDateTime);
  final dateyyyyMMddTHHmmssSSSFromJson =
      FhirInstant.fromJson(yyyyMMddTHHmmssSSS);
  final dateyyyyMMddTHHmmssSSSDateTimeFromJson =
      FhirInstant.fromJson(yyyyMMddTHHmmssSSSDateTime);
  final dateyyyyMMddTHHmmssSSSDateTimeFromStringFromJson =
      FhirInstant.fromJson(yyyyMMddTHHmmssSSSDateTimeFromString);
  final dateyyyyMMddTHHmmssSSSFromUnits = FhirInstant.fromUnits(
      year: 2012,
      month: 1,
      day: 31,
      hour: 12,
      minute: 30,
      second: 59,
      millisecond: 111,
      timezoneOffset: DateTime.now().timeZoneOffset.inHours);
  final dateyyyyMMddTHHmmssSSSFromYaml =
      FhirInstant.fromYaml(yyyyMMddTHHmmssSSS);

  final dateyyyyMMddTHHmmssSSSZ = FhirInstant(yyyyMMddTHHmmssSSSZ);
  final dateyyyyMMddTHHmmssSSSZDateTime =
      FhirInstant(yyyyMMddTHHmmssSSSZDateTime);
  final dateyyyyMMddTHHmmssSSSZDateTimeFromString =
      FhirInstant(yyyyMMddTHHmmssSSSZDateTimeFromString);
  final dateyyyyMMddTHHmmssSSSZFromString =
      FhirInstant.fromString(yyyyMMddTHHmmssSSSZ);
  final dateyyyyMMddTHHmmssSSSZFromDateTime =
      FhirInstant.fromDateTime(yyyyMMddTHHmmssSSSZDateTime);
  final dateyyyyMMddTHHmmssSSSZFromJson =
      FhirInstant.fromJson(yyyyMMddTHHmmssSSSZ);
  final dateyyyyMMddTHHmmssSSSZDateTimeFromJson =
      FhirInstant.fromJson(yyyyMMddTHHmmssSSSZDateTime);
  final dateyyyyMMddTHHmmssSSSZDateTimeFromStringFromJson =
      FhirInstant.fromJson(yyyyMMddTHHmmssSSSZDateTimeFromString);
  final dateyyyyMMddTHHmmssSSSZFromUnits = FhirInstant.fromUnits(
      year: 2012,
      month: 1,
      day: 31,
      hour: 12,
      minute: 30,
      second: 59,
      millisecond: 111,
      timezoneOffset: 0,
      isUTC: true);
  final dateyyyyMMddTHHmmssSSSZFromYaml =
      FhirInstant.fromYaml(yyyyMMddTHHmmssSSSZ);

  final dateyyyyMMddTHHmmssSSSZZ = FhirInstant(yyyyMMddTHHmmssSSSZZ);
  final dateyyyyMMddTHHmmssSSSZZDateTime =
      FhirInstant(yyyyMMddTHHmmssSSSZZDateTime);
  final dateyyyyMMddTHHmmssSSSZZDateTimeFromString =
      FhirInstant(yyyyMMddTHHmmssSSSZZDateTimeFromString);
  final dateyyyyMMddTHHmmssSSSZZFromString =
      FhirInstant.fromString(yyyyMMddTHHmmssSSSZZ);
  final dateyyyyMMddTHHmmssSSSZZFromDateTime =
      FhirInstant.fromDateTime(yyyyMMddTHHmmssSSSZZDateTime);
  final dateyyyyMMddTHHmmssSSSZZFromJson =
      FhirInstant.fromJson(yyyyMMddTHHmmssSSSZZ);
  final dateyyyyMMddTHHmmssSSSZZDateTimeFromJson =
      FhirInstant.fromJson(yyyyMMddTHHmmssSSSZZDateTime);
  final dateyyyyMMddTHHmmssSSSZZDateTimeFromStringFromJson =
      FhirInstant.fromJson(yyyyMMddTHHmmssSSSZZDateTimeFromString);
  final dateyyyyMMddTHHmmssSSSZZFromUnits = FhirInstant.fromUnits(
      year: 2012,
      month: 1,
      day: 31,
      hour: 12,
      minute: 30,
      second: 59,
      millisecond: 111,
      timezoneOffset: -4,
      isUTC: false);
  final dateyyyyMMddTHHmmssSSSZZFromYaml =
      FhirInstant.fromYaml(yyyyMMddTHHmmssSSSZZ);

  final dateInstant = FhirInstant(instant);
  final dateInstantDateTime = FhirInstant(instantDateTime);
  final dateInstantDateTimeFromString = FhirInstant(instantDateTimeFromString);
  final dateInstantFromString = FhirInstant.fromString(instant);
  final dateInstantFromDateTime = FhirInstant.fromDateTime(instantDateTime);
  final dateInstantFromJson = FhirInstant.fromJson(instant);
  final dateInstantDateTimeFromJson = FhirInstant.fromJson(instantDateTime);
  final dateInstantDateTimeFromStringFromJson =
      FhirInstant.fromJson(instantDateTimeFromString);
  final dateInstantFromUnits = FhirInstant.fromUnits(
      year: 2012,
      month: 1,
      day: 31,
      hour: 12,
      minute: 30,
      second: 59,
      millisecond: 111,
      timezoneOffset: 0,
      isUTC: true);
  final dateInstantFromYaml = FhirInstant.fromYaml(instant);

  final dateDateTime = FhirInstant(dateTime);
  final dateDateTimeDateTime = FhirInstant(dateTimeDateTime);
  final dateDateTimeDateTimeFromString =
      FhirInstant(dateTimeDateTimeFromString);
  final dateDateTimeFromString = FhirInstant.fromString(dateTime);
  final dateDateTimeFromDateTime = FhirInstant.fromDateTime(dateTimeDateTime);
  final dateDateTimeFromJson = FhirInstant.fromJson(dateTime);
  final dateDateTimeDateTimeFromJson = FhirInstant.fromJson(dateTimeDateTime);
  final dateDateTimeDateTimeFromStringFromJson =
      FhirInstant.fromJson(dateTimeDateTimeFromString);
  final dateDateTimeFromUnits = FhirInstant.fromUnits(
      year: 2012,
      month: 1,
      day: 31,
      hour: 12,
      minute: 30,
      second: 59,
      millisecond: 111,
      microsecond: 11,
      timezoneOffset: 0,
      isUTC: true);
  final dateDateTimeFromYaml = FhirInstant.fromYaml(dateTime);

  group('FhirInstant Tests', () {
    group('yyyy - 2012', () {
      test('dateyyyy', () {
        expect(dateyyyy.isValid, isFalse);
        expect(dateyyyy.valueString, equals(yyyy));
        expect(dateyyyy.valueDateTime, isNull);
        expect(dateyyyy.toString(), equals(yyyy));
        expect(dateyyyy.toJson(), equals(yyyy));
        expect(dateyyyy.toYaml(), equals(yyyy));
      });

      test('dateyyyyDateTime', () {
        expect(dateyyyyDateTime.isValid, isFalse);
        expect(dateyyyyDateTime.valueString, equals('$yyyy-01-01'));
        expect(dateyyyyDateTime.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyDateTime.toString(), equals('$yyyy-01-01'));
        expect(dateyyyyDateTime.toJson(), equals('$yyyy-01-01'));
        expect(dateyyyyDateTime.toYaml(), equals('$yyyy-01-01'));
      });
      test('dateyyyyDateTimeFromString', () {
        expect(dateyyyyDateTimeFromString.isValid, isFalse);
        expect(dateyyyyDateTimeFromString.valueString, equals(yyyy));
        expect(dateyyyyDateTimeFromString.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyDateTimeFromString.toString(), equals(yyyy));
        expect(dateyyyyDateTimeFromString.toJson(), equals(yyyy));
        expect(dateyyyyDateTimeFromString.toYaml(), equals(yyyy));
      });
      test('dateyyyyFromString', () {
        expect(dateyyyyFromString.isValid, isFalse);
        expect(dateyyyyFromString.valueString, equals(yyyy));
        expect(dateyyyyFromString.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromString.toString(), equals(yyyy));
        expect(dateyyyyFromString.toJson(), equals(yyyy));
        expect(dateyyyyFromString.toYaml(), equals(yyyy));
      });
      test('dateyyyyFromDateTime', () {
        expect(dateyyyyFromDateTime.isValid, isFalse);
        expect(dateyyyyFromDateTime.valueString, equals(yyyy));
        expect(dateyyyyFromDateTime.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromDateTime.toString(), equals(yyyy));
        expect(dateyyyyFromDateTime.toJson(), equals(yyyy));
        expect(dateyyyyFromDateTime.toYaml(), equals(yyyy));
      });
      test('dateyyyyFromJson', () {
        expect(dateyyyyFromJson.isValid, isFalse);
        expect(dateyyyyFromJson.valueString, equals(yyyy));
        expect(dateyyyyFromJson.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromJson.toString(), equals(yyyy));
        expect(dateyyyyFromJson.toJson(), equals(yyyy));
        expect(dateyyyyFromJson.toYaml(), equals(yyyy));
      });
      test('dateyyyyDateTimeFromJson', () {
        expect(dateyyyyDateTimeFromJson.isValid, isFalse);
        expect(dateyyyyDateTimeFromJson.valueString, equals(yyyy));
        expect(dateyyyyDateTimeFromJson.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyDateTimeFromJson.toString(), equals(yyyy));
        expect(dateyyyyDateTimeFromJson.toJson(), equals(yyyy));
        expect(dateyyyyDateTimeFromJson.toYaml(), equals(yyyy));
      });
      test('dateyyyyDateTimeFromStringFromJson', () {
        expect(dateyyyyDateTimeFromStringFromJson.isValid, isFalse);
        expect(dateyyyyDateTimeFromStringFromJson.valueString,
            equals('$yyyy-01-01'));
        expect(dateyyyyDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyDateTime));
        expect(dateyyyyDateTimeFromStringFromJson.toString(),
            equals('$yyyy-01-01'));
        expect(
            dateyyyyDateTimeFromStringFromJson.toJson(), equals('$yyyy-01-01'));
        expect(
            dateyyyyDateTimeFromStringFromJson.toYaml(), equals('$yyyy-01-01'));
      });
      test('dateyyyyFromYaml', () {
        expect(dateyyyyFromYaml.isValid, isFalse);
        expect(dateyyyyFromYaml.valueString, equals(yyyy));
        expect(dateyyyyFromYaml.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromYaml.toString(), equals(yyyy));
        expect(dateyyyyFromYaml.toJson(), equals(yyyy));
        expect(dateyyyyFromYaml.toYaml(), equals(yyyy));
      });
    });
    group('yyyyMM - 2012-01', () {
      test('dateyyyyMM', () {
        expect(dateyyyyMM.isValid, isFalse);
        expect(dateyyyyMM.valueString, equals(yyyyMM));
        expect(dateyyyyMM.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMM.toString(), equals(yyyyMM));
        expect(dateyyyyMM.toJson(), equals(yyyyMM));
        expect(dateyyyyMM.toYaml(), equals(yyyyMM));
      });

      test('dateyyyyMMDateTime', () {
        expect(dateyyyyMMDateTime.isValid, isFalse);
        expect(dateyyyyMMDateTime.valueString, equals('$yyyyMM-01'));
        expect(dateyyyyMMDateTime.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMDateTime.toString(), equals('$yyyyMM-01'));
        expect(dateyyyyMMDateTime.toJson(), equals('$yyyyMM-01'));
        expect(dateyyyyMMDateTime.toYaml(), equals('$yyyyMM-01'));
      });
      test('dateyyyyMMDateTimeFromString', () {
        expect(dateyyyyMMDateTimeFromString.isValid, isFalse);
        expect(dateyyyyMMDateTimeFromString.valueString, equals(yyyyMM));
        expect(
            dateyyyyMMDateTimeFromString.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMDateTimeFromString.toString(), equals(yyyyMM));
        expect(dateyyyyMMDateTimeFromString.toJson(), equals(yyyyMM));
        expect(dateyyyyMMDateTimeFromString.toYaml(), equals(yyyyMM));
      });
      test('dateyyyyMMFromString', () {
        expect(dateyyyyMMFromString.isValid, isFalse);
        expect(dateyyyyMMFromString.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromString.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromString.toString(), equals(yyyyMM));
        expect(dateyyyyMMFromString.toJson(), equals(yyyyMM));
        expect(dateyyyyMMFromString.toYaml(), equals(yyyyMM));
      });
      test('dateyyyyMMFromDateTime', () {
        expect(dateyyyyMMFromDateTime.isValid, isFalse);
        expect(dateyyyyMMFromDateTime.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromDateTime.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromDateTime.toString(), equals(yyyyMM));
        expect(dateyyyyMMFromDateTime.toJson(), equals(yyyyMM));
        expect(dateyyyyMMFromDateTime.toYaml(), equals(yyyyMM));
      });
      test('dateyyyyMMFromJson', () {
        expect(dateyyyyMMFromJson.isValid, isFalse);
        expect(dateyyyyMMFromJson.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromJson.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromJson.toString(), equals(yyyyMM));
        expect(dateyyyyMMFromJson.toJson(), equals(yyyyMM));
        expect(dateyyyyMMFromJson.toYaml(), equals(yyyyMM));
      });
      test('dateyyyyMMDateTimeFromJson', () {
        expect(dateyyyyMMDateTimeFromJson.isValid, isFalse);
        expect(dateyyyyMMDateTimeFromJson.valueString, equals('$yyyyMM-01'));
        expect(
            dateyyyyMMDateTimeFromJson.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMDateTimeFromJson.toString(), equals('$yyyyMM-01'));
        expect(dateyyyyMMDateTimeFromJson.toJson(), equals('$yyyyMM-01'));
        expect(dateyyyyMMDateTimeFromJson.toYaml(), equals('$yyyyMM-01'));
      });
      test('dateyyyyMMDateTimeFromStringFromJson', () {
        expect(dateyyyyMMDateTimeFromStringFromJson.isValid, isFalse);
        expect(
            dateyyyyMMDateTimeFromStringFromJson.valueString, equals(yyyyMM));
        expect(dateyyyyMMDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMDateTime));
        expect(dateyyyyMMDateTimeFromStringFromJson.toString(), equals(yyyyMM));
        expect(dateyyyyMMDateTimeFromStringFromJson.toJson(), equals(yyyyMM));
        expect(dateyyyyMMDateTimeFromStringFromJson.toYaml(), equals(yyyyMM));
      });
      test('dateyyyyMMFromYaml', () {
        expect(dateyyyyMMFromYaml.isValid, isFalse);
        expect(dateyyyyMMFromYaml.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromYaml.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromYaml.toString(), equals(yyyyMM));
        expect(dateyyyyMMFromYaml.toJson(), equals(yyyyMM));
        expect(dateyyyyMMFromYaml.toYaml(), equals(yyyyMM));
      });
    });
    group('yyyyMMdd - 2012-01-31', () {
      test('dateyyyyMMdd', () {
        expect(dateyyyyMMdd.isValid, isFalse);
        expect(dateyyyyMMdd.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMdd.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMdd.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMdd.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMdd.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddDateTime', () {
        expect(dateyyyyMMddDateTime.isValid, isFalse);
        expect(dateyyyyMMddDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddDateTime.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddDateTime.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddDateTime.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddDateTimeFromString', () {
        expect(dateyyyyMMddDateTimeFromString.isValid, isFalse);
        expect(dateyyyyMMddDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddDateTimeFromString.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddDateTimeFromString.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddDateTimeFromString.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddFromString', () {
        expect(dateyyyyMMddFromString.isValid, isFalse);
        expect(dateyyyyMMddFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddFromString.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromString.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromString.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddFromDateTime', () {
        expect(dateyyyyMMddFromDateTime.isValid, isFalse);
        expect(dateyyyyMMddFromDateTime.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddFromDateTime.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromDateTime.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromDateTime.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddFromJson', () {
        expect(dateyyyyMMddFromJson.isValid, isFalse);
        expect(dateyyyyMMddFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddFromJson.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromJson.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromJson.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddDateTimeFromJson', () {
        expect(dateyyyyMMddDateTimeFromJson.isValid, isFalse);
        expect(dateyyyyMMddDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddDateTimeFromJson.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddDateTimeFromJson.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddDateTimeFromJson.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddDateTimeFromStringFromJson.isValid, isFalse);
        expect(dateyyyyMMddDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(
            dateyyyyMMddDateTimeFromStringFromJson.toJson(), equals(yyyyMMdd));
        expect(
            dateyyyyMMddDateTimeFromStringFromJson.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddFromYaml', () {
        expect(dateyyyyMMddFromYaml.isValid, isFalse);
        expect(dateyyyyMMddFromYaml.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddFromYaml.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromYaml.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromYaml.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddFromYaml.toYaml(), equals(yyyyMMdd));
      });
    });
    group('yyyyMMddTZ - 2012-01-31TZ', () {
      test('dateyyyyMMddTZ', () {
        expect(dateyyyyMMddTZ.isValid, isFalse);
        expect(dateyyyyMMddTZ.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZ.valueDateTime, equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTZ.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZ.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZ.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTzzDateTime', () {
        expect(dateyyyyMMddTzzDateTime.isValid, isFalse);
        expect(dateyyyyMMddTzzDateTime.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTzzDateTime.valueDateTime, equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTzzDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTzzDateTime.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTzzDateTime.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTzzDateTimeFromString', () {
        expect(dateyyyyMMddTzzDateTimeFromString.isValid, isFalse);
        expect(dateyyyyMMddTzzDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTzzDateTimeFromString.valueDateTime,
            equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTzzDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTzzDateTimeFromString.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTzzDateTimeFromString.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZFromString', () {
        expect(dateyyyyMMddTZFromString.isValid, isFalse);
        expect(dateyyyyMMddTZFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromString.valueDateTime,
            equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTZFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromString.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromString.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZFromDateTime', () {
        expect(dateyyyyMMddTZFromDateTime.isValid, isFalse);
        expect(dateyyyyMMddTZFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromDateTime.valueDateTime,
            equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTZFromDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromDateTime.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromDateTime.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZFromJson', () {
        expect(dateyyyyMMddTZFromJson.isValid, isFalse);
        expect(dateyyyyMMddTZFromJson.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTZFromJson.valueDateTime, equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTZFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromJson.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromJson.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTzzDateTimeFromJson', () {
        expect(dateyyyyMMddTzzDateTimeFromJson.isValid, isFalse);
        expect(dateyyyyMMddTzzDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTzzDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTzzDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTzzDateTimeFromJson.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTzzDateTimeFromJson.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTzzDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTzzDateTimeFromStringFromJson.isValid, isFalse);
        expect(dateyyyyMMddTzzDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTzzDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTzzDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(dateyyyyMMddTzzDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMdd));
        expect(dateyyyyMMddTzzDateTimeFromStringFromJson.toYaml(),
            equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZFromYaml', () {
        expect(dateyyyyMMddTZFromYaml.isValid, isFalse);
        expect(dateyyyyMMddTZFromYaml.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTZFromYaml.valueDateTime, equals(yyyyMMddTzzDateTime));
        expect(dateyyyyMMddTZFromYaml.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromYaml.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZFromYaml.toYaml(), equals(yyyyMMdd));
      });
    });
    group('yyyyMMddTZZ - 2012-01-31T-04:00', () {
      test('dateyyyyMMddTZZ', () {
        expect(dateyyyyMMddTZZ.isValid, isFalse);
        expect(dateyyyyMMddTZZ.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZZ.valueDateTime, equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZ.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZ.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZ.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZZDateTime', () {
        expect(dateyyyyMMddTZZDateTime.isValid, isFalse);
        expect(dateyyyyMMddTZZDateTime.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTZZDateTime.valueDateTime, equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZDateTime.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZDateTime.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZZDateTimeFromString', () {
        expect(dateyyyyMMddTZZDateTimeFromString.isValid, isFalse);
        expect(dateyyyyMMddTZZDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZZDateTimeFromString.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZDateTimeFromString.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZDateTimeFromString.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZZFromString', () {
        expect(dateyyyyMMddTZZFromString.isValid, isFalse);
        expect(dateyyyyMMddTZZFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZZFromString.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZFromString.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZFromString.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZZFromDateTime', () {
        expect(dateyyyyMMddTZZFromDateTime.isValid, isFalse);
        expect(dateyyyyMMddTZZFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZZFromDateTime.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZFromDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZFromDateTime.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZFromDateTime.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZZFromJson', () {
        expect(dateyyyyMMddTZZFromJson.isValid, isFalse);
        expect(dateyyyyMMddTZZFromJson.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTZZFromJson.valueDateTime, equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZFromJson.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZFromJson.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZZDateTimeFromJson', () {
        expect(dateyyyyMMddTZZDateTimeFromJson.isValid, isFalse);
        expect(dateyyyyMMddTZZDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZZDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZDateTimeFromJson.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTZZDateTimeFromJson.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZZDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTZZDateTimeFromStringFromJson.isValid, isFalse);
        expect(dateyyyyMMddTZZDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTZZDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(dateyyyyMMddTZZDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMdd));
        expect(dateyyyyMMddTZZDateTimeFromStringFromJson.toYaml(),
            equals(yyyyMMdd));
      });
      test('dateyyyyMMddTZZFromYaml', () {
        expect(dateyyyyMMddTZZFromYaml.isValid, isFalse);
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
        expect(dateyyyyMMddTHH.isValid, isFalse);
        expect(dateyyyyMMddTHH.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHH.valueDateTime, equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHH.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHH.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHH.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHDateTime', () {
        expect(dateyyyyMMddTHHDateTime.isValid, isFalse);
        expect(dateyyyyMMddTHHDateTime.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHDateTime.valueDateTime, equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHDateTime.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHDateTime.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHDateTimeFromString', () {
        expect(dateyyyyMMddTHHDateTimeFromString.isValid, isFalse);
        expect(dateyyyyMMddTHHDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHDateTimeFromString.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHDateTimeFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHDateTimeFromString.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHDateTimeFromString.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHFromString', () {
        expect(dateyyyyMMddTHHFromString.isValid, isFalse);
        expect(dateyyyyMMddTHHFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHFromString.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHFromString.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHFromString.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHFromString.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHFromDateTime', () {
        expect(dateyyyyMMddTHHFromDateTime.isValid, isFalse);
        expect(dateyyyyMMddTHHFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHFromDateTime.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHFromDateTime.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHFromDateTime.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHFromDateTime.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHFromJson', () {
        expect(dateyyyyMMddTHHFromJson.isValid, isFalse);
        expect(dateyyyyMMddTHHFromJson.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHFromJson.valueDateTime, equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHFromJson.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHFromJson.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHDateTimeFromJson', () {
        expect(dateyyyyMMddTHHDateTimeFromJson.isValid, isFalse);
        expect(dateyyyyMMddTHHDateTimeFromJson.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHDateTimeFromJson.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHDateTimeFromJson.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHDateTimeFromJson.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHDateTimeFromJson.toYaml(), equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHDateTimeFromStringFromJson', () {
        expect(dateyyyyMMddTHHDateTimeFromStringFromJson.isValid, isFalse);
        expect(dateyyyyMMddTHHDateTimeFromStringFromJson.valueString,
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHDateTimeFromStringFromJson.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHDateTimeFromStringFromJson.toString(),
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHDateTimeFromStringFromJson.toJson(),
            equals(yyyyMMdd));
        expect(dateyyyyMMddTHHDateTimeFromStringFromJson.toYaml(),
            equals(yyyyMMdd));
      });
      test('dateyyyyMMddTHHFromYaml', () {
        expect(dateyyyyMMddTHHFromYaml.isValid, isFalse);
        expect(dateyyyyMMddTHHFromYaml.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTHHFromYaml.valueDateTime, equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHFromYaml.toString(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHFromYaml.toJson(), equals(yyyyMMdd));
        expect(dateyyyyMMddTHHFromYaml.toYaml(), equals(yyyyMMdd));
      });
    });
    group('yyyyMMddTHHZ - 2012-01-31T12Z', () {
      test('dateyyyyMMddTHHZ', () {
        expect(dateyyyyMMddTHHZ.isValid, isFalse);
        expect(dateyyyyMMddTHHZ.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZ.valueDateTime, equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZ.toString(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZ.toJson(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZ.toYaml(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZDateTime', () {
        expect(dateyyyyMMddTHHZDateTime.isValid, isFalse);
        expect(dateyyyyMMddTHHZDateTime.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZDateTime.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZDateTime.toString(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZDateTime.toJson(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZDateTime.toYaml(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZDateTimeFromString', () {
        expect(dateyyyyMMddTHHZDateTimeFromString.isValid, isFalse);
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
        expect(dateyyyyMMddTHHZFromString.isValid, isFalse);
        expect(dateyyyyMMddTHHZFromString.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromString.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZFromString.toString(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromString.toJson(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromString.toYaml(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZFromDateTime', () {
        expect(dateyyyyMMddTHHZFromDateTime.isValid, isFalse);
        expect(dateyyyyMMddTHHZFromDateTime.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZFromDateTime.toString(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromDateTime.toJson(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromDateTime.toYaml(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZFromJson', () {
        expect(dateyyyyMMddTHHZFromJson.isValid, isFalse);
        expect(dateyyyyMMddTHHZFromJson.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromJson.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZFromJson.toString(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromJson.toJson(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromJson.toYaml(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHZDateTimeFromJson.isValid, isFalse);
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
        expect(dateyyyyMMddTHHZDateTimeFromStringFromJson.isValid, isFalse);
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
      test('dateyyyyMMddTHHZFromYaml', () {
        expect(dateyyyyMMddTHHZFromYaml.isValid, isFalse);
        expect(dateyyyyMMddTHHZFromYaml.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromYaml.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZFromYaml.toString(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromYaml.toJson(), equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromYaml.toYaml(), equals(yyyyMMddTHHZ));
      });
    });
    group('yyyyMMddTHHZZ - 2012-01-31T12+04:00', () {
      test('dateyyyyMMddTHHZZ', () {
        expect(dateyyyyMMddTHHZZ.isValid, isFalse);
        expect(dateyyyyMMddTHHZZ.valueString, equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZ.valueDateTime, equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZ.toString(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZ.toJson(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZ.toYaml(), equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZDateTime', () {
        expect(dateyyyyMMddTHHZZDateTime.isValid, isFalse);
        expect(dateyyyyMMddTHHZZDateTime.valueString, equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZDateTime.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZDateTime.toString(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZDateTime.toJson(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZDateTime.toYaml(), equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZDateTimeFromString', () {
        expect(dateyyyyMMddTHHZZDateTimeFromString.isValid, isFalse);
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
        expect(dateyyyyMMddTHHZZFromString.isValid, isFalse);
        expect(dateyyyyMMddTHHZZFromString.valueString, equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromString.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZFromString.toString(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromString.toJson(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromString.toYaml(), equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZFromDateTime', () {
        expect(dateyyyyMMddTHHZZFromDateTime.isValid, isFalse);
        expect(
            dateyyyyMMddTHHZZFromDateTime.valueString, equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZFromDateTime.toString(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromDateTime.toJson(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromDateTime.toYaml(), equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZFromJson', () {
        expect(dateyyyyMMddTHHZZFromJson.isValid, isFalse);
        expect(dateyyyyMMddTHHZZFromJson.valueString, equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromJson.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZFromJson.toString(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromJson.toJson(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromJson.toYaml(), equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZDateTimeFromJson', () {
        expect(dateyyyyMMddTHHZZDateTimeFromJson.isValid, isFalse);
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
        expect(dateyyyyMMddTHHZZDateTimeFromStringFromJson.isValid, isFalse);
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
      test('dateyyyyMMddTHHZZFromYaml', () {
        expect(dateyyyyMMddTHHZZFromYaml.isValid, isFalse);
        expect(dateyyyyMMddTHHZZFromYaml.valueString, equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromYaml.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZFromYaml.toString(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromYaml.toJson(), equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromYaml.toYaml(), equals(yyyyMMddTHHZZ));
      });
    });
    group('yyyyMMddTHHmm - 2012-01-31T12:30', () {
      test('dateyyyyMMddTHHmm', () {
        expect(dateyyyyMMddTHHmm.isValid, isFalse);
        expect(dateyyyyMMddTHHmm.valueString, equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmm.valueDateTime, equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmm.toString(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmm.toJson(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmm.toYaml(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmDateTime', () {
        expect(dateyyyyMMddTHHmmDateTime.isValid, isFalse);
        expect(dateyyyyMMddTHHmmDateTime.valueString, equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmDateTime.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmDateTime.toString(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmDateTime.toJson(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmDateTime.toYaml(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmDateTimeFromString', () {
        expect(dateyyyyMMddTHHmmDateTimeFromString.isValid, isFalse);
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
        expect(dateyyyyMMddTHHmmFromString.isValid, isFalse);
        expect(dateyyyyMMddTHHmmFromString.valueString, equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromString.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmFromString.toString(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromString.toJson(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromString.toYaml(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmFromDateTime', () {
        expect(dateyyyyMMddTHHmmFromDateTime.isValid, isFalse);
        expect(
            dateyyyyMMddTHHmmFromDateTime.valueString, equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmFromDateTime.toString(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromDateTime.toJson(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromDateTime.toYaml(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmFromJson', () {
        expect(dateyyyyMMddTHHmmFromJson.isValid, isFalse);
        expect(dateyyyyMMddTHHmmFromJson.valueString, equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromJson.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmFromJson.toString(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromJson.toJson(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromJson.toYaml(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmDateTimeFromJson', () {
        expect(dateyyyyMMddTHHmmDateTimeFromJson.isValid, isFalse);
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
        expect(dateyyyyMMddTHHmmDateTimeFromStringFromJson.isValid, isFalse);
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
      test('dateyyyyMMddTHHmmFromYaml', () {
        expect(dateyyyyMMddTHHmmFromYaml.isValid, isFalse);
        expect(dateyyyyMMddTHHmmFromYaml.valueString, equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromYaml.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmFromYaml.toString(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromYaml.toJson(), equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromYaml.toYaml(), equals(yyyyMMddTHHmm));
      });
    });
    group('yyyyMMddTHHmmZ - 2012-01-31T12:30Z', () {
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
    group('yyyyMMddTHHmmss - 2012-01-31T12:30:59', () {
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
    group('yyyyMMddTHHmmssZ - 2012-01-31T12:30:59Z', () {
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
    group('yyyyMMddTHHmmssZZ - 2012-01-31T12:30:59+04:00', () {
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
    group('yyyyMMddTHHmmssSSS - 2012-01-31T12:30:59.111', () {
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
    group('yyyyMMddTHHmmssSSSZ - 2012-01-31T12:30:59.111Z', () {
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
    group('yyyyMMddTHHmmssSSSZZ - 2012-01-31T12:30:59.111+04:00', () {
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
    group('dateInstant - 2012-01-31T12:30:59.111+04:00', () {
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
    group('DateTime - 2012-01-31T12:30:30.59.11111+04:00', () {
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

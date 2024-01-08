import 'package:fhir/r5.dart';

void main() {
  final input = '2020-12-13';
  final fhirDateTime = FhirDateTime(input);
  final fhirInstant = FhirInstant(input);
  final fhirDate = FhirDate(input);
  print('*********************FhirDateTime*********************');
  print('valueString: ${fhirDateTime.valueString}');
  print('value: ${fhirDateTime.value}');
  print('valueDateTime: ${fhirDateTime.valueDateTime}');
  print('iso8601: ${fhirDateTime.iso8601String}');
  print('toString(): ${fhirDateTime.toString()}');
  // print('toStringWithTimeZone(): ${fhirDateTime.toStringWithTimezone()}');
  print('toJson(): ${fhirDateTime.toJson()}');
  print('toYaml(): ${fhirDateTime.toYaml()}');
  print('\n\n*********************FhirInstant*********************');
  print('valueString: ${fhirInstant.valueString}');
  print('value: ${fhirInstant.value}');
  print('valueDateTime: ${fhirInstant.valueDateTime}');
  print('iso8601: ${fhirInstant.iso8601String}');
  print('toString(): ${fhirInstant.toString()}');
  // print('toStringWithTimeZone(): ${fhirInstant.toStringWithTimezone()}');
  print('toJson(): ${fhirInstant.toJson()}');
  print('toYaml(): ${fhirInstant.toYaml()}');
  print('\n\n*********************FhirDate*********************');
  print('valueString: ${fhirDate.valueString}');
  print('value: ${fhirDate.value}');
  print('valueDateTime: ${fhirDate.valueDateTime}');
  print('iso8601: ${fhirDate.iso8601String}');
  print('toString(): ${fhirDate.toString()}');
  // print('toStringWithTimeZone(): ${fhirDate.toStringWithTimezone()}');
  print('toJson(): ${fhirDate.toJson()}');
  print('toYaml(): ${fhirDate.toYaml()}');

  final input2 = '2020-12-13T11:20:00.721470+10:00';
  final fhirDateTime2 = FhirDateTime(input2);
  final fhirInstant2 = FhirInstant(input2);
  final fhirDate2 = FhirDate(input2);
  print('*********************FhirDateTime*********************');
  print('valueString: ${fhirDateTime2.valueString}');
  print('value: ${fhirDateTime2.value}');
  print('valueDateTime: ${fhirDateTime2.valueDateTime}');
  print('iso8601: ${fhirDateTime2.iso8601String}');
  print('toString(): ${fhirDateTime2.toString()}');
  // print('toStringWithTimeZone(): ${fhirDateTime2.toStringWithTimezone()}');
  print('toJson(): ${fhirDateTime2.toJson()}');
  print('toYaml(): ${fhirDateTime2.toYaml()}');
  print('\n\n*********************FhirInstant*********************');
  print('valueString: ${fhirInstant2.valueString}');
  print('value: ${fhirInstant2.value}');
  print('valueDateTime: ${fhirInstant2.valueDateTime}');
  print('iso8601: ${fhirInstant2.iso8601String}');
  print('toString(): ${fhirInstant2.toString()}');
  // print('toStringWithTimeZone(): ${fhirInstant2.toStringWithTimezone()}');
  print('toJson(): ${fhirInstant2.toJson()}');
  print('toYaml(): ${fhirInstant2.toYaml()}');
  print('\n\n*********************FhirDate*********************');
  print('valueString: ${fhirDate2.valueString}');
  print('value: ${fhirDate2.value}');
  print('valueDateTime: ${fhirDate2.valueDateTime}');
  print('iso8601: ${fhirDate2.iso8601String}');
  print('toString(): ${fhirDate2.toString()}');
  // print('toStringWithTimeZone(): ${fhirDate2.toStringWithTimezone()}');
  print('toJson(): ${fhirDate2.toJson()}');
  print('toYaml(): ${fhirDate2.toYaml()}');
}

final resource = Resource.fromJson({
  "resourceType": "SearchParameter",
  "id": "MedicationKnowledge-monitoring-program-name",
  "extension": [
    {
      "url":
          "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode": "trial-use"
    }
  ],
  "url":
      "http://hl7.org/fhir/SearchParameter/MedicationKnowledge-monitoring-program-name",
  "version": "5.0.0-cibuild",
  "name": "monitoring-program-name",
  "status": "draft",
  "experimental": false,
  "date": "2023-03-31T19:23:11+00:00",
  "publisher": "Health Level Seven International (Pharmacy)",
  "contact": [
    {
      "telecom": [
        {"system": "url", "value": "http://hl7.org/fhir"}
      ]
    },
    {
      "telecom": [
        {
          "system": "url",
          "value": "http://www.hl7.org/Special/committees/medication/index.cfm"
        }
      ]
    }
  ],
  "description": "Name of the reviewing program",
  "jurisdiction": [
    {
      "coding": [
        {
          "system": "http://unstats.un.org/unsd/methods/m49/m49.htm",
          "code": "001",
          "display": "World"
        }
      ]
    }
  ],
  "code": "monitoring-program-name",
  "base": ["MedicationKnowledge"],
  "type": "token",
  "expression": "MedicationKnowledge.monitoringProgram.name",
  "processingMode": "normal"
});

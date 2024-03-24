import 'dart:convert';
import 'dart:io';

import 'package:fhir/r4.dart';
import 'package:fhir_bulk/r4.dart';

Future<void> main() async {
  final sofaMap = <String, Sofa>{};
  List<Resource> resources = await FhirBulk.fromFile('ndjson/Patient.ndjson');
  final patients = List<Patient>.from(resources);
  resources = await FhirBulk.fromFile('ndjson/Medication.ndjson');
  final medications = List<Medication>.from(resources);
  for (final patient in patients) {
    final sofa = Sofa(patient);
    sofa.medications = medications;
    sofaMap[patient.path] = sofa;
  }

  Future<void> byFile(String filePath) async {
    final resources = await FhirBulk.fromFile('ndjson/$filePath.ndjson');
    for (final resource in resources) {
      if (resource is MedicationAdministration) {
        final patient = resource.subject.reference;
        if (sofaMap.containsKey(patient)) {
          sofaMap[patient]?.medicationAdministrations.add(resource);
        }
      } else if (resource is Observation) {
        final patient = resource.subject?.reference;
        if (patient != null && sofaMap.containsKey(patient)) {
          sofaMap[patient]?.observations.add(resource);
        }
      }
    }
  }

  for (final file in [
    'MedicationAdministration',
    'MedicationAdministrationICU',
    'ObservationChartevents',
    'ObservationDatetimeevents',
    'ObservationLabevents',
    'ObservationMicroOrg',
    'ObservationMicroSusc',
    'ObservationMicroTest',
    'ObservationOutputevents',
  ]) {
    await byFile('ndjson/$file.ndjson');
  }

  for (final key in sofaMap.keys) {
    if (!await Directory('ndjson/$key').exists()) {
      await Directory('ndjson/$key').create();
      await Directory('ndjson/$key/Medication Administration').create();
      await Directory('ndjson/$key/Observation').create();
      await Directory('ndjson/$key/Medications').create();
    }
    final sofa = sofaMap[key];
    if (sofa != null) {
      await File('ndjson/$key/Patient.json')
          .writeAsString(jsonEncode(sofa.patient.toJson()));
      for (final medication in sofa.medications) {
        await File('ndjson/$key/Medications/med_${medication.fhirId}.json')
            .writeAsString(jsonEncode(medication.toJson()));
      }
      for (final medicationAdministration in sofa.medicationAdministrations) {
        await File(
                'ndjson/$key/Medication Administration/medadmin_${medicationAdministration.fhirId}.json')
            .writeAsString(jsonEncode(medicationAdministration.toJson()));
      }
      for (final observation in sofa.observations) {
        await File('ndjson/$key/Observation/obs_${observation.fhirId}.json')
            .writeAsString(jsonEncode(observation.toJson()));
      }
    }
  }
}

class Sofa {
  Patient patient;
  List<Medication> medications = [];
  List<MedicationAdministration> medicationAdministrations = [];
  List<Observation> observations = [];

  Sofa(this.patient);
}

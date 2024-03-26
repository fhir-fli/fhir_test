import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:fhir_r4/fhir_r4.dart';

import 'ips_sections.dart';

class IpsParser {
  final Bundle bundle;
  Composition? composition;
  Patient? patient;
  final Map<IpsSections, List<Reference>> sectionReferences = {};
  final Map<IpsSections, List<Resource>> sectionResources = {};
  final Map<String, IpsSections> loincToSection = {
    '10160-0': IpsSections.medications,
    '48765-2': IpsSections.allergies,
    '11450-4': IpsSections.problems,
    '47519-4': IpsSections.procedures,
    '11369-6': IpsSections.immunizations,
    '46264-8': IpsSections.medicationDevices,
    '30954-2': IpsSections.results,
    '8716-3': IpsSections.vitalSigns,
    '11348-0': IpsSections.pastIllnessHx,
    '47420-5': IpsSections.functionalStatus,
    '18776-5': IpsSections.planOfCare,
    '29762-2': IpsSections.socialHistory,
    '10162-6': IpsSections.pregnancyHx,
    '42348-3': IpsSections.advanceDirectives,
  };

  IpsParser(this.bundle) {
    _parseComposition();
    _parseSectionReferences();
    _parseResources();
  }

  void _parseComposition() {
    composition = bundle.entry
        ?.map((entry) => entry.resource)
        .whereType<Composition>()
        .firstWhereOrNull((composition) =>
            composition.type.coding?.any((coding) =>
                coding.system == FhirUri('http://loinc.org') &&
                coding.code == FhirCode('60591-5')) ??
            false);
  }

  void _parseSectionReferences() {
    composition?.section?.forEach((section) {
      final coding = section.code?.coding?.firstWhereOrNull(
          (Coding coding) => loincToSection.containsKey(coding.code?.value));
      if (coding != null) {
        final sectionType = loincToSection[coding.code!.value!];
        if (sectionType != null) {
          sectionReferences[sectionType] = section.entry ?? <Reference>[];
        }
      }
    });
  }

  void _parseResources() {
    final entries = bundle.entry ?? [];
    for (final entry in entries) {
      if (entry.resource != null) {
        if (entry.resource is Patient &&
            (composition?.subject?.reference == entry.fullUrl?.toString() ||
                composition?.subject?.reference == entry.resource?.path)) {
          patient = entry.resource as Patient;
        } else {
          for (var section in IpsSections.values) {
            final references = sectionReferences[section];
            if (references != null && _entryIsReferenced(entry, references)) {
              sectionResources[section] = (sectionResources[section] ?? [])
                ..add(entry.resource!);
            }
          }
        }
      }
    }
  }

  bool _entryIsReferenced(BundleEntry entry, List<Reference> references) {
    final entryFullUrl = entry.fullUrl?.value;
    final entryReference = entry.resource?.path;
    return references.any((ref) =>
        ref.reference == entryFullUrl.toString() ||
        ref.reference == entryReference);
  }

  void printPatient() {
    if (patient?.name != null && patient!.name!.isNotEmpty) {
      print((patient!.name!.first.given?.join(' ') ?? '') +
          ' ' +
          (patient!.name!.first.family ?? ''));
    }
    if (patient?.birthDate != null) {
      print('DOB: ${patient!.birthDate!.value}');
    }
  }

  void printAllergies() {
    final allergies = sectionResources[IpsSections.allergies];
    if (allergies != null && allergies.isNotEmpty) {
      print('ALLERGIES:');
      for (final allergy in allergies) {
        if (allergy is AllergyIntolerance) {
          final coding = allergy.code?.coding
              ?.firstWhereOrNull<Coding>((coding) => coding.display != null);
          print(coding?.display ?? '');
        }
      }
    }
  }
}

extension on Iterable {
  T? firstWhereOrNull<T>(bool Function(T element) test) {
    for (var element in this) {
      if (element is T && test(element)) {
        return element;
      }
    }
    return null;
  }
}

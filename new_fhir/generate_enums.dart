import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'types.dart';

Future<void> main() async {
  // for (var resource in resources) {
  //   String resourceEnum = '';
  //   final structureDefinitionUrl =
  //       'https://hl7.org/fhir/${resource.toLowerCase()}.profile.json';
  //   print(structureDefinitionUrl);
  //   final strutureDefintionResponse = await http.get(
  //     Uri.parse(structureDefinitionUrl),
  //   );
  //   final structureDefinitionMap = json.decode(strutureDefintionResponse.body);
  //   for (final element
  //       in structureDefinitionMap['snapshot']?['element'] as List? ?? []) {
  //     if (element['binding']?['valueSet'] != null &&
  //         element['binding']?['additional'] == null) {
  //       String codeSystemUrl = element['binding']['valueSet']
  //           .toString()
  //           .split('|')
  //           .first
  //           .replaceAll('ValueSet/', '');
  //       print('CodeSystem: $codeSystemUrl');
  //       final result = await http.get(Uri.parse(codeSystemUrl), headers: {
  //         'Content-Type': 'application/fhir+json',
  //         'Accept': 'application/fhir+json'
  //       });
  //       try {
  //         final codeSystemMap = json.decode(result.body);
  //         final name = hyphenatedToCamelCase(codeSystemMap['id'].toString());
  //         String enumString = 'enum $name {\n';
  //         for (var concept in codeSystemMap['concept'] as List? ?? []) {
  //           enumString += "  @JsonValue('${concept['code']}')\n"
  //               "${concept['code'].toString().toLowerCase().replaceAll('_', '').replaceAll('-', '').replaceAll('.', '')},\n";
  //         }
  //         enumString += '}\n\n';
  //         resourceEnum += enumString;
  //       } catch (e) {
  //         print('Error: $e');
  //       }
  //     }
  //   }
  //   await File('resource_enums/$resource.dart').writeAsString(resourceEnum);
  // }
  for (final type in byType.keys) {
    final types = byType[type]!;
    String resourceString = '';
    for (final resourceType in types) {
      final fileString =
          await File('resource_enums/$resourceType.dart').readAsString();
      resourceString += '\n\n$fileString';
    }
    await File('enums/$type.enums.dart').writeAsString(resourceString);
  }
}

String hyphenatedToCamelCase(String hyphenatedString) {
  // Split the string by hyphens
  List<String> parts = hyphenatedString.split('-');

  // Capitalize the first letter of each part and join them together
  String camelCase = parts.map((part) {
    // Check if part is not empty to avoid errors on strings that start or end with a hyphen
    if (part.isNotEmpty) {
      // Capitalize the first letter and add the rest of the lowercase letters
      return part[0].toUpperCase() + part.substring(1).toLowerCase();
    }
    return '';
  }).join('');

  return camelCase;
}

const resources = [
  'Account',
  'ActivityDefinition',
  'ActorDefinition',
  'AdministrableProductDefinition',
  'AdverseEvent',
  'AllergyIntolerance',
  'Appointment',
  'AppointmentResponse',
  'ArtifactAssessment',
  'AuditEvent',
  'Basic',
  'Binary',
  'BiologicallyDerivedProduct',
  'BiologicallyDerivedProductDispense',
  'BodyStructure',
  'Bundle',
  'CapabilityStatement',
  'CarePlan',
  'CareTeam',
  'ChargeItem',
  'ChargeItemDefinition',
  'Citation',
  'Claim',
  'ClaimResponse',
  'ClinicalImpression',
  'ClinicalUseDefinition',
  'CodeSystem',
  'Communication',
  'CommunicationRequest',
  'CompartmentDefinition',
  'Composition',
  'ConceptMap',
  'Condition',
  'ConditionDefinition',
  'Consent',
  'Contract',
  'Coverage',
  'CoverageEligibilityRequest',
  'CoverageEligibilityResponse',
  'DetectedIssue',
  'Device',
  'DeviceAssociation',
  'DeviceDefinition',
  'DeviceDispense',
  'DeviceMetric',
  'DeviceRequest',
  'DeviceUsage',
  'DiagnosticReport',
  'DocumentReference',
  'Encounter',
  'EncounterHistory',
  'Endpoint',
  'EnrollmentRequest',
  'EnrollmentResponse',
  'EpisodeOfCare',
  'EventDefinition',
  'Evidence',
  'EvidenceReport',
  'EvidenceVariable',
  'ExampleScenario',
  'ExplanationOfBenefit',
  'FamilyMemberHistory',
  'Flag',
  'FormularyItem',
  'GenomicStudy',
  'Goal',
  'GraphDefinition',
  'Group',
  'GuidanceResponse',
  'HealthcareService',
  'ImagingSelection',
  'ImagingStudy',
  'Immunization',
  'ImmunizationEvaluation',
  'ImmunizationRecommendation',
  'ImplementationGuide',
  'Ingredient',
  'InsurancePlan',
  'InventoryItem',
  'InventoryReport',
  'Invoice',
  'Library',
  'Linkage',
  'List',
  'Location',
  'ManufacturedItemDefinition',
  'Measure',
  'MeasureReport',
  'Medication',
  'MedicationAdministration',
  'MedicationDispense',
  'MedicationKnowledge',
  'MedicationRequest',
  'MedicationStatement',
  'MedicinalProductDefinition',
  'MessageDefinition',
  'MessageHeader',
  'MolecularSequence',
  'NamingSystem',
  'NutritionIntake',
  'NutritionOrder',
  'NutritionProduct',
  'Observation',
  'ObservationDefinition',
  'OperationDefinition',
  'OperationOutcome',
  'Organization',
  'OrganizationAffiliation',
  'PackagedProductDefinition',
  'Patient',
  'PaymentNotice',
  'PaymentReconciliation',
  'Permission',
  'Person',
  'PlanDefinition',
  'Practitioner',
  'PractitionerRole',
  'Procedure',
  'Provenance',
  'Questionnaire',
  'QuestionnaireResponse',
  'RegulatedAuthorization',
  'RelatedPerson',
  'RequestOrchestration',
  'Requirements',
  'ResearchStudy',
  'ResearchSubject',
  'RiskAssessment',
  'Schedule',
  'SearchParameter',
  'ServiceRequest',
  'Slot',
  'Specimen',
  'SpecimenDefinition',
  'StructureDefinition',
  'StructureMap',
  'Subscription',
  'SubscriptionStatus',
  'SubscriptionTopic',
  'Substance',
  'SubstanceDefinition',
  'SubstanceNucleicAcid',
  'SubstancePolymer',
  'SubstanceProtein',
  'SubstanceReferenceInformation',
  'SubstanceSourceMaterial',
  'SupplyDelivery',
  'SupplyRequest',
  'Task',
  'TerminologyCapabilities',
  'TestPlan',
  'TestReport',
  'TestScript',
  'Transport',
  'ValueSet',
  'VerificationResult',
  'VisionPrescription',
];

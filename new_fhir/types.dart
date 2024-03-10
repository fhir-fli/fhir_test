const Map<String, String> allTypes = <String, String>{
  'base64Binary': 'primitive_types',
  'boolean': 'primitive_types',
  'canonical': 'primitive_types',
  'code': 'primitive_types',
  'date': 'primitive_types',
  'dateTime': 'primitive_types',
  'decimal': 'primitive_types',
  'id': 'primitive_types',
  'instant': 'primitive_types',
  'integer': 'primitive_types',
  'integer64': 'primitive_types',
  'markdown': 'primitive_types',
  'oid': 'primitive_types',
  'positiveInt': 'primitive_types',
  'string': 'primitive_types',
  'time': 'primitive_types',
  'unsignedInt': 'primitive_types',
  'uri': 'primitive_types',
  'url': 'primitive_types',
  'uuid': 'primitive_types',
  'xhtml': 'primitive_types',
  'Base64Binary': 'primitive_types',
  'Boolean': 'primitive_types',
  'Canonical': 'primitive_types',
  'Code': 'primitive_types',
  'Date': 'primitive_types',
  'DateTime': 'primitive_types',
  'FhirDateTime': 'primitive_types',
  'Decimal': 'primitive_types',
  'Id': 'primitive_types',
  'Instant': 'primitive_types',
  'Integer': 'primitive_types',
  'Integer64': 'primitive_types',
  'Markdown': 'primitive_types',
  'Oid': 'primitive_types',
  'PositiveInt': 'primitive_types',
  'String': 'primitive_types',
  'Time': 'primitive_types',
  'UnsignedInt': 'primitive_types',
  'Uri': 'primitive_types',
  'FhirUri': 'primitive_types',
  'Url': 'primitive_types',
  'FhirUrl': 'primitive_types',
  'Uuid': 'primitive_types',
  'FhirBase64Binary': 'primitive_types',
  'FhirBoolean': 'primitive_types',
  'FhirCanonical': 'primitive_types',
  'FhirCode': 'primitive_types',
  'FhirDate': 'primitive_types',
  'FhirDecimal': 'primitive_types',
  'FhirId': 'primitive_types',
  'FhirInstant': 'primitive_types',
  'FhirInteger': 'primitive_types',
  'FhirInteger64': 'primitive_types',
  'FhirMarkdown': 'primitive_types',
  'FhirOid': 'primitive_types',
  'FhirPositiveInt': 'primitive_types',
  'FhirTime': 'primitive_types',
  'FhirUnsignedInt': 'primitive_types',
  'FhirUuid': 'primitive_types',
  'Xhtml': 'primitive_types',
  'Element': 'basic_types',
  'DataType': 'abstract_types',
  'PrimitiveType': 'abstract_types',
  'BackboneType': 'abstract_types',
  'Extension': 'basic_types',
  'Address': 'general_types',
  'Age': 'general_types',
  'Annotation': 'general_types',
  'Attachment': 'general_types',
  'Availability': 'metadata_types',
  'Base': 'abstract_types',
  'CodeableConcept': 'general_types',
  'CodeableReference': 'special_types',
  'Coding': 'general_types',
  'ContactDetail': 'metadata_types',
  'ContactPoint': 'general_types',
  'Contributor': 'metadata_types',
  'Count': 'general_types',
  'DataRequirement': 'metadata_types',
  'Distance': 'general_types',
  'Dosage': 'special_types',
  'Duration': 'general_types',
  'ElementDefinition': 'special_types',
  'Expression': 'metadata_types',
  'FhirExpression': 'metadata_types',
  'ExtendedContactDetail': 'metadata_types',
  'HumanName': 'general_types',
  'Identifier': 'general_types',
  'MarketingStatus': 'draft_types',
  'RelativeTime': 'special_types',
  'Meta': 'special_types',
  'FhirMeta': 'special_types',
  'Money': 'general_types',
  'MonetaryComponent': 'metadata_types',
  'MoneyQuantity': 'general_types',
  'Narrative': 'special_types',
  'ParameterDefinition': 'metadata_types',
  'Period': 'general_types',
  'Population': 'draft_types',
  'ProductShelfLife': 'draft_types',
  'Quantity': 'general_types',
  'Range': 'general_types',
  'Ratio': 'general_types',
  'RatioRange': 'general_types',
  'Reference': 'special_types',
  'RelatedArtifact': 'metadata_types',
  'SampledData': 'general_types',
  'Signature': 'general_types',
  'SimpleQuantity': 'general_types',
  'Timing': 'general_types',
  'TriggerDefinition': 'metadata_types',
  'UsageContext': 'metadata_types',
  'VirtualServiceDetail': 'metadata_types',
  'CapabilityStatement': 'conformance',
  'StructureDefinition': 'conformance',
  'ImplementationGuide': 'conformance',
  'SearchParameter': 'conformance',
  'MessageDefinition': 'conformance',
  'OperationDefinition': 'conformance',
  'CompartmentDefinition': 'conformance',
  'StructureMap': 'conformance',
  'GraphDefinition': 'conformance',
  'CodeSystem': 'terminology',
  'ValueSet': 'terminology',
  'ConceptMap': 'terminology',
  'NamingSystem': 'terminology',
  'TerminologyCapabilities': 'terminology',
  'Provenance': 'security',
  'AuditEvent': 'security',
  'Permission': 'security',
  'Consent': 'security',
  'Composition': 'documents',
  'DocumentManifest': 'documents',
  'DocumentReference': 'documents',
  'Basic': 'other',
  'Binary': 'other',
  'Bundle': 'other',
  'Linkage': 'other',
  'MessageHeader': 'other',
  'OperationOutcome': 'other',
  'Parameters': 'other',
  'Subscription': 'other',
  'SubscriptionStatus': 'other',
  'SubscriptionTopic': 'other',
  'Patient': 'individuals',
  'Practitioner': 'individuals',
  'PractitionerRole': 'individuals',
  'RelatedPerson': 'individuals',
  'Person': 'individuals',
  'Group': 'individuals',
  'Organization': 'entities1',
  'OrganizationAffiliation': 'entities1',
  'HealthcareService': 'entities1',
  'Endpoint': 'entities1',
  'Location': 'entities1',
  'Substance': 'entities2',
  'BiologicallyDerivedProduct': 'entities2',
  'BiologicallyDerivedProductDispense': 'entities2',
  'Device': 'entities2',
  'DeviceMetric': 'entities2',
  'NutritionProduct': 'entities2',
  'Task': 'workflow',
  'Transport': 'workflow',
  'Appointment': 'workflow',
  'AppointmentResponse': 'workflow',
  'Schedule': 'workflow',
  'Slot': 'workflow',
  'VerificationResult': 'workflow',
  'Encounter': 'management',
  'EncounterHistory': 'management',
  'EpisodeOfCare': 'management',
  'Flag': 'management',
  'List': 'management',
  'Library': 'management',
  'AllergyIntolerance': 'summary',
  'AdverseEvent': 'summary',
  'Condition': 'summary',
  'Procedure': 'summary',
  'FamilyMemberHistory': 'summary',
  'ClinicalImpression': 'summary',
  'DetectedIssue': 'summary',
  'Observation': 'diagnostics',
  'DiagnosticReport': 'diagnostics',
  'Specimen': 'diagnostics',
  'BodyStructure': 'diagnostics',
  'ImagingSelection': 'diagnostics',
  'ImagingStudy': 'diagnostics',
  'QuestionnaireResponse': 'diagnostics',
  'MolecularSequence': 'diagnostics',
  'GenomicStudy': 'diagnostics',
  'MedicationRequest': 'medications',
  'MedicationAdministration': 'medications',
  'MedicationDispense': 'medications',
  'MedicationStatement': 'medications',
  'MedicationUsage': 'medications',
  'Medication': 'medications',
  'MedicationKnowledge': 'medications',
  'Immunization': 'medications',
  'ImmunizationEvaluation': 'medications',
  'ImmunizationRecommendation': 'medications',
  'FormularyItem': 'medications',
  'CarePlan': 'care_provision',
  'CareTeam': 'care_provision',
  'Goal': 'care_provision',
  'ServiceRequest': 'care_provision',
  'NutritionOrder': 'care_provision',
  'NutritionIntake': 'care_provision',
  'VisionPrescription': 'care_provision',
  'RiskAssessment': 'care_provision',
  'RequestOrchestration': 'care_provision',
  'Communication': 'request_and_response',
  'CommunicationRequest': 'request_and_response',
  'DeviceRequest': 'request_and_response',
  'DeviceDispense': 'request_and_response',
  'DeviceAssociation': 'request_and_response',
  'DeviceUsage': 'request_and_response',
  'GuidanceResponse': 'request_and_response',
  'SupplyRequest': 'request_and_response',
  'SupplyDelivery': 'request_and_response',
  'InventoryItem': 'request_and_response',
  'InventoryReport': 'request_and_response',
  'Coverage': 'support',
  'CoverageEligibilityRequest': 'support',
  'CoverageEligibilityResponse': 'support',
  'EnrollmentRequest': 'support',
  'EnrollmentResponse': 'support',
  'Claim': 'billing',
  'ClaimResponse': 'billing',
  'Invoice': 'billing',
  'PaymentNotice': 'payment',
  'PaymentReconciliation': 'payment',
  'Account': 'general',
  'ChargeItem': 'general',
  'ChargeItemDefinition': 'general',
  'Contract': 'general',
  'ExplanationOfBenefit': 'general',
  'InsurancePlan': 'general',
  'ResearchStudy': 'public_health_and_research',
  'ResearchSubject': 'public_health_and_research',
  'ActivityDefinition': 'definitional_artifacts',
  'ConditionDefinition': 'definitional_artifacts',
  'DeviceDefinition': 'definitional_artifacts',
  'EventDefinition': 'definitional_artifacts',
  'ObservationDefinition': 'definitional_artifacts',
  'PlanDefinition': 'definitional_artifacts',
  'Questionnaire': 'definitional_artifacts',
  'SpecimenDefinition': 'definitional_artifacts',
  'ExampleScenario': 'definitional_artifacts',
  'ActorDefinition': 'definitional_artifacts',
  'Requirements': 'definitional_artifacts',
  'ArtifactAssessment': 'evidence_based_medicine',
  'Citation': 'evidence_based_medicine',
  'Evidence': 'evidence_based_medicine',
  'EvidenceReport': 'evidence_based_medicine',
  'EvidenceVariable': 'evidence_based_medicine',
  'Measure': 'quality_reporting_and_testing',
  'MeasureReport': 'quality_reporting_and_testing',
  'TestPlan': 'quality_reporting_and_testing',
  'TestScript': 'quality_reporting_and_testing',
  'TestReport': 'quality_reporting_and_testing',
  'MedicinalProductDefinition': 'medication_definition',
  'PackagedProductDefinition': 'medication_definition',
  'AdministrableProductDefinition': 'medication_definition',
  'ManufacturedItemDefinition': 'medication_definition',
  'Ingredient': 'medication_definition',
  'ClinicalUseDefinition': 'medication_definition',
  'RegulatedAuthorization': 'medication_definition',
  'SubstanceDefinition': 'medication_definition',
  'SubstanceNucleicAcid': 'medication_definition',
  'SubstancePolymer': 'medication_definition',
  'SubstanceProtein': 'medication_definition',
  'SubstanceReferenceInformation': 'medication_definition',
  'SubstanceSourceMaterial': 'medication_definition',
};

const Map<String, String> resourceTypes = <String, String>{
  'conformance': 'foundation',
  'terminology': 'foundation',
  'security': 'foundation',
  'documents': 'foundation',
  'other': 'foundation',
  'individuals': 'base',
  'entities1': 'base',
  'entities2': 'base',
  'workflow': 'base',
  'management': 'base',
  'summary': 'clinical',
  'diagnostics': 'clinical',
  'medications': 'clinical',
  'care_provision': 'clinical',
  'request_and_response': 'clinical',
  'support': 'financial',
  'billing': 'financial',
  'payment': 'financial',
  'general': 'financial',
  'public_health_and_research': 'specialized',
  'definitional_artifacts': 'specialized',
  'evidence_based_medicine': 'specialized',
  'quality_reporting_and_testing': 'specialized',
  'medication_definition': 'specialized',
};

const byType = {
  'conformance': [
    'CapabilityStatement',
    'StructureDefinition',
    'ImplementationGuide',
    'SearchParameter',
    'MessageDefinition',
    'OperationDefinition',
    'CompartmentDefinition',
    'StructureMap',
    'GraphDefinition',
  ],
  'terminology': [
    'CodeSystem',
    'ValueSet',
    'ConceptMap',
    'NamingSystem',
    'TerminologyCapabilities',
  ],
  'security': [
    'Provenance',
    'AuditEvent',
    'Permission',
    'Consent',
  ],
  'documents': [
    'Composition',
    'DocumentManifest',
    'DocumentReference',
  ],
  'other': [
    'Basic',
    'Binary',
    'Bundle',
    'Linkage',
    'MessageHeader',
    'OperationOutcome',
    'Parameters',
    'Subscription',
    'SubscriptionStatus',
    'SubscriptionTopic',
  ],
  'individuals': [
    'Patient',
    'Practitioner',
    'PractitionerRole',
    'RelatedPerson',
    'Person',
    'Group',
  ],
  'entities1': [
    'Organization',
    'OrganizationAffiliation',
    'HealthcareService',
    'Endpoint',
    'Location',
  ],
  'entities2': [
    'Substance',
    'BiologicallyDerivedProduct',
    'BiologicallyDerivedProductDispense',
    'Device',
    'DeviceMetric',
    'NutritionProduct',
  ],
  'workflow': [
    'Task',
    'Transport',
    'Appointment',
    'AppointmentResponse',
    'Schedule',
    'Slot',
    'VerificationResult',
  ],
  'management': [
    'Encounter',
    'EncounterHistory',
    'EpisodeOfCare',
    'Flag',
    'List',
    'Library',
  ],
  'summary': [
    'AllergyIntolerance',
    'AdverseEvent',
    'Condition',
    'Procedure',
    'FamilyMemberHistory',
    'ClinicalImpression',
    'DetectedIssue',
  ],
  'diagnostics': [
    'Observation',
    'DiagnosticReport',
    'Specimen',
    'BodyStructure',
    'ImagingSelection',
    'ImagingStudy',
    'QuestionnaireResponse',
    'MolecularSequence',
    'GenomicStudy',
  ],
  'medications': [
    'MedicationRequest',
    'MedicationAdministration',
    'MedicationDispense',
    'MedicationStatement',
    'MedicationUsage',
    'Medication',
    'MedicationKnowledge',
    'Immunization',
    'ImmunizationEvaluation',
    'ImmunizationRecommendation',
    'FormularyItem',
  ],
  'care_provision': [
    'CarePlan',
    'CareTeam',
    'Goal',
    'ServiceRequest',
    'NutritionOrder',
    'NutritionIntake',
    'VisionPrescription',
    'RiskAssessment',
    'RequestOrchestration',
  ],
  'request_and_response': [
    'Communication',
    'CommunicationRequest',
    'DeviceRequest',
    'DeviceDispense',
    'DeviceAssociation',
    'DeviceUsage',
    'GuidanceResponse',
    'SupplyRequest',
    'SupplyDelivery',
    'InventoryItem',
    'InventoryReport',
  ],
  'support': [
    'Coverage',
    'CoverageEligibilityRequest',
    'CoverageEligibilityResponse',
    'EnrollmentRequest',
    'EnrollmentResponse',
  ],
  'billing': [
    'Claim',
    'ClaimResponse',
    'Invoice',
  ],
  'payment': [
    'PaymentNotice',
    'PaymentReconciliation',
  ],
  'general': [
    'Account',
    'ChargeItem',
    'ChargeItemDefinition',
    'Contract',
    'ExplanationOfBenefit',
    'InsurancePlan',
  ],
  'public_health_and_research': [
    'ResearchStudy',
    'ResearchSubject',
  ],
  'definitional_artifacts': [
    'ActivityDefinition',
    'ConditionDefinition',
    'DeviceDefinition',
    'EventDefinition',
    'ObservationDefinition',
    'PlanDefinition',
    'Questionnaire',
    'SpecimenDefinition',
    'ExampleScenario',
    'ActorDefinition',
    'Requirements',
  ],
  'evidence_based_medicine': [
    'ArtifactAssessment',
    'Citation',
    'Evidence',
    'EvidenceReport',
    'EvidenceVariable',
  ],
  'quality_reporting_and_testing': [
    'Measure',
    'MeasureReport',
    'TestPlan',
    'TestScript',
    'TestReport',
  ],
  'medication_definition': [
    'MedicinalProductDefinition',
    'PackagedProductDefinition',
    'AdministrableProductDefinition',
    'ManufacturedItemDefinition',
    'Ingredient',
    'ClinicalUseDefinition',
    'RegulatedAuthorization',
    'SubstanceDefinition',
    'SubstanceNucleicAcid',
    'SubstancePolymer',
    'SubstanceProtein',
    'SubstanceReferenceInformation',
    'SubstanceSourceMaterial',
  ],
};

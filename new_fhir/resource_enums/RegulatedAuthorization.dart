enum RegulatedAuthorizationType {
  @JsonValue('MarketingAuth')
marketingauth,
  @JsonValue('Orphan')
orphan,
  @JsonValue('Pediatric')
pediatric,
}

enum PublicationStatus {
  @JsonValue('draft')
draft,
  @JsonValue('active')
active,
  @JsonValue('retired')
retired,
  @JsonValue('unknown')
unknown,
}

enum ProductIntendedUse {
  @JsonValue('Prevention')
prevention,
  @JsonValue('Treatment')
treatment,
  @JsonValue('Alleviation')
alleviation,
  @JsonValue('Diagnosis')
diagnosis,
  @JsonValue('Monitoring')
monitoring,
}

enum RegulatedAuthorizationBasis {
  @JsonValue('Full')
full,
  @JsonValue('NewSubstance')
newsubstance,
  @JsonValue('KnownSubstance')
knownsubstance,
  @JsonValue('SimilarBiological')
similarbiological,
  @JsonValue('Well-establishedUse')
wellestablisheduse,
  @JsonValue('TraditionalUse')
traditionaluse,
  @JsonValue('Bibliographical')
bibliographical,
  @JsonValue('KnownHumanBlood')
knownhumanblood,
  @JsonValue('TemporaryUse')
temporaryuse,
  @JsonValue('ParallelTrade')
paralleltrade,
}

enum RegulatedAuthorizationCaseType {
  @JsonValue('InitialMAA')
initialmaa,
  @JsonValue('Variation')
variation,
  @JsonValue('LineExtension')
lineextension,
  @JsonValue('PSUR')
psur,
  @JsonValue('Renewal')
renewal,
  @JsonValue('Follow-up')
followup,
  @JsonValue('100000155699')
100000155699,
  @JsonValue('AnnualReassessment')
annualreassessment,
  @JsonValue('UrgentSafetyRestriction')
urgentsafetyrestriction,
  @JsonValue('PaediatricSubmission')
paediatricsubmission,
  @JsonValue('TransferMA')
transferma,
  @JsonValue('LiftingSuspension')
liftingsuspension,
  @JsonValue('Withdrawal')
withdrawal,
  @JsonValue('Reformatting')
reformatting,
  @JsonValue('RMP')
rmp,
  @JsonValue('ReviewSuspension')
reviewsuspension,
  @JsonValue('SupplementalInformation')
supplementalinformation,
  @JsonValue('RepeatUse')
repeatuse,
  @JsonValue('SignalDetection')
signaldetection,
  @JsonValue('FLU')
flu,
  @JsonValue('PANDEMIC')
pandemic,
  @JsonValue('Orphan')
orphan,
}

enum PublicationStatus {
  @JsonValue('draft')
draft,
  @JsonValue('active')
active,
  @JsonValue('retired')
retired,
  @JsonValue('unknown')
unknown,
}


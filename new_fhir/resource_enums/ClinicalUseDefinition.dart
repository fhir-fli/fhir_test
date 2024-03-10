enum ClinicalUseDefinitionType {
  @JsonValue('indication')
indication,
  @JsonValue('contraindication')
contraindication,
  @JsonValue('interaction')
interaction,
  @JsonValue('undesirable-effect')
undesirableeffect,
  @JsonValue('warning')
warning,
}

enum ClinicalUseDefinitionCategory {
  @JsonValue('Pregnancy')
pregnancy,
  @JsonValue('Overdose')
overdose,
  @JsonValue('DriveAndMachines')
driveandmachines,
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

enum TherapyRelationshipType {
  @JsonValue('contraindicated-only-with')
contraindicatedonlywith,
  @JsonValue('contraindicated-except-with')
contraindicatedexceptwith,
  @JsonValue('indicated-only-with')
indicatedonlywith,
  @JsonValue('indicated-except-with')
indicatedexceptwith,
  @JsonValue('indicated-only-after')
indicatedonlyafter,
  @JsonValue('indicated-only-before')
indicatedonlybefore,
  @JsonValue('replace-other-therapy')
replaceothertherapy,
  @JsonValue('replace-other-therapy-contraindicated')
replaceothertherapycontraindicated,
  @JsonValue('replace-other-therapy-not-tolerated')
replaceothertherapynottolerated,
  @JsonValue('replace-other-therapy-not-effective')
replaceothertherapynoteffective,
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

enum InteractionType {
  @JsonValue('drug-drug')
drugdrug,
  @JsonValue('drug-food')
drugfood,
  @JsonValue('drug-test')
drugtest,
  @JsonValue('other')
other,
}

enum InteractionIncidence {
  @JsonValue('Theoretical')
theoretical,
  @JsonValue('Observed')
observed,
}

enum UndesirableEffectFrequency {
  @JsonValue('Common')
common,
  @JsonValue('Uncommon')
uncommon,
  @JsonValue('Rare')
rare,
}

enum WarningType {
  @JsonValue('P313')
p313,
  @JsonValue('P314')
p314,
  @JsonValue('P315')
p315,
  @JsonValue('P320')
p320,
  @JsonValue('P321')
p321,
  @JsonValue('P322')
p322,
  @JsonValue('P330')
p330,
  @JsonValue('P331')
p331,
  @JsonValue('P361')
p361,
  @JsonValue('P363')
p363,
}


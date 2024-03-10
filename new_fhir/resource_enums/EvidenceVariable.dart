enum VersionAlgorithm {
  @JsonValue('semver')
semver,
  @JsonValue('integer')
integer,
  @JsonValue('alpha')
alpha,
  @JsonValue('date')
date,
  @JsonValue('natural')
natural,
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

enum DefinitionMethod {
  @JsonValue('systematic-assessment')
systematicassessment,
  @JsonValue('non-systematic-assessment')
nonsystematicassessment,
  @JsonValue('mean')
mean,
  @JsonValue('median')
median,
  @JsonValue('mean-of-mean')
meanofmean,
  @JsonValue('mean-of-median')
meanofmedian,
  @JsonValue('median-of-mean')
medianofmean,
  @JsonValue('median-of-median')
medianofmedian,
}

enum CharacteristicOffset {
  @JsonValue('UNL')
unl,
  @JsonValue('LNL')
lnl,
}

enum CharacteristicCombination {
  @JsonValue('all-of')
allof,
  @JsonValue('any-of')
anyof,
  @JsonValue('at-least')
atleast,
  @JsonValue('at-most')
atmost,
  @JsonValue('statistical')
statistical,
  @JsonValue('net-effect')
neteffect,
  @JsonValue('dataset')
dataset,
}

enum EvidenceVariableEvent {
  @JsonValue('study-start')
studystart,
  @JsonValue('treatment-start')
treatmentstart,
  @JsonValue('condition-detection')
conditiondetection,
  @JsonValue('condition-treatment')
conditiontreatment,
  @JsonValue('hospital-admission')
hospitaladmission,
  @JsonValue('hospital-discharge')
hospitaldischarge,
  @JsonValue('operative-procedure')
operativeprocedure,
}

enum VariableHandling {
  @JsonValue('continuous')
continuous,
  @JsonValue('dichotomous')
dichotomous,
  @JsonValue('ordinal')
ordinal,
  @JsonValue('polychotomous')
polychotomous,
}


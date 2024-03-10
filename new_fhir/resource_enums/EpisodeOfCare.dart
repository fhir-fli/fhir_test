enum EpisodeOfCareStatus {
  @JsonValue('planned')
planned,
  @JsonValue('waitlist')
waitlist,
  @JsonValue('active')
active,
  @JsonValue('onhold')
onhold,
  @JsonValue('finished')
finished,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('entered-in-error')
enteredinerror,
}

enum EpisodeOfCareStatus {
  @JsonValue('planned')
planned,
  @JsonValue('waitlist')
waitlist,
  @JsonValue('active')
active,
  @JsonValue('onhold')
onhold,
  @JsonValue('finished')
finished,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('entered-in-error')
enteredinerror,
}

enum EncounterReasonUse {
  @JsonValue('CC')
cc,
  @JsonValue('HC')
hc,
  @JsonValue('AD')
ad,
  @JsonValue('RV')
rv,
  @JsonValue('HM')
hm,
}

enum EncounterDiagnosisUse {
  @JsonValue('working')
working,
  @JsonValue('final')
final,
}


enum EncounterStatus {
  @JsonValue('planned')
planned,
  @JsonValue('in-progress')
inprogress,
  @JsonValue('on-hold')
onhold,
  @JsonValue('discharged')
discharged,
  @JsonValue('completed')
completed,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('discontinued')
discontinued,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('unknown')
unknown,
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

enum EncounterLocationStatus {
  @JsonValue('planned')
planned,
  @JsonValue('active')
active,
  @JsonValue('reserved')
reserved,
  @JsonValue('completed')
completed,
}


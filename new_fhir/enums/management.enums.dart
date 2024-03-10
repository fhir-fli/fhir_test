

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



enum FlagStatus {
  @JsonValue('active')
active,
  @JsonValue('inactive')
inactive,
  @JsonValue('entered-in-error')
enteredinerror,
}



enum ListStatus {
  @JsonValue('current')
current,
  @JsonValue('retired')
retired,
  @JsonValue('entered-in-error')
enteredinerror,
}

enum ListMode {
  @JsonValue('working')
working,
  @JsonValue('snapshot')
snapshot,
  @JsonValue('changes')
changes,
}



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


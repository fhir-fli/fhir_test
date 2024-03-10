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


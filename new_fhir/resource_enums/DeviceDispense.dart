enum DevicedispenseStatus {
  @JsonValue('preparation')
preparation,
  @JsonValue('in-progress')
inprogress,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('on-hold')
onhold,
  @JsonValue('completed')
completed,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('stopped')
stopped,
  @JsonValue('declined')
declined,
  @JsonValue('unknown')
unknown,
}


enum EventStatus {
  @JsonValue('preparation')
preparation,
  @JsonValue('in-progress')
inprogress,
  @JsonValue('not-done')
notdone,
  @JsonValue('on-hold')
onhold,
  @JsonValue('stopped')
stopped,
  @JsonValue('completed')
completed,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('unknown')
unknown,
}

enum DeviceAction {
  @JsonValue('implanted')
implanted,
  @JsonValue('explanted')
explanted,
  @JsonValue('manipulated')
manipulated,
}


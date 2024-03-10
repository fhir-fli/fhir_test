enum DeviceusageStatus {
  @JsonValue('active')
active,
  @JsonValue('completed')
completed,
  @JsonValue('not-done')
notdone,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('intended')
intended,
  @JsonValue('stopped')
stopped,
  @JsonValue('on-hold')
onhold,
}

enum DeviceusageStatus {
  @JsonValue('active')
active,
  @JsonValue('completed')
completed,
  @JsonValue('not-done')
notdone,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('intended')
intended,
  @JsonValue('stopped')
stopped,
  @JsonValue('on-hold')
onhold,
}

enum DeviceusageAdherenceCode {
  @JsonValue('always')
always,
  @JsonValue('never')
never,
  @JsonValue('sometimes')
sometimes,
}

enum DeviceusageAdherenceReason {
  @JsonValue('lost')
lost,
  @JsonValue('stolen')
stolen,
  @JsonValue('prescribed')
prescribed,
  @JsonValue('broken')
broken,
  @JsonValue('burned')
burned,
  @JsonValue('forgot')
forgot,
}


enum RequestStatus {
  @JsonValue('draft')
draft,
  @JsonValue('active')
active,
  @JsonValue('on-hold')
onhold,
  @JsonValue('revoked')
revoked,
  @JsonValue('completed')
completed,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('unknown')
unknown,
}


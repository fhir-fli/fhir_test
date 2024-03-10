enum Slotstatus {
  @JsonValue('busy')
busy,
  @JsonValue('free')
free,
  @JsonValue('busy-unavailable')
busyunavailable,
  @JsonValue('busy-tentative')
busytentative,
  @JsonValue('entered-in-error')
enteredinerror,
}


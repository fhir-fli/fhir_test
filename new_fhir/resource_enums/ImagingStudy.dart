enum ImagingstudyStatus {
  @JsonValue('registered')
registered,
  @JsonValue('available')
available,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('unknown')
unknown,
}

enum Null {
}


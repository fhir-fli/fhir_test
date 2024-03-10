enum ObservationStatus {
  @JsonValue('registered')
registered,
  @JsonValue('preliminary')
preliminary,
  @JsonValue('final')
final,
  @JsonValue('amended')
amended,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('unknown')
unknown,
}


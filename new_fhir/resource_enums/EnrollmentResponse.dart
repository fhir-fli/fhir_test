enum FmStatus {
  @JsonValue('active')
active,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('draft')
draft,
  @JsonValue('entered-in-error')
enteredinerror,
}

enum EnrollmentOutcome {
  @JsonValue('queued')
queued,
  @JsonValue('complete')
complete,
  @JsonValue('error')
error,
  @JsonValue('partial')
partial,
}


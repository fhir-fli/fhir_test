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

enum EligibilityresponsePurpose {
  @JsonValue('auth-requirements')
authrequirements,
  @JsonValue('benefits')
benefits,
  @JsonValue('discovery')
discovery,
  @JsonValue('validation')
validation,
}

enum Datestype {
  @JsonValue('card-issued')
cardissued,
  @JsonValue('claim-received')
claimreceived,
  @JsonValue('service-expected')
serviceexpected,
}

enum EligibilityOutcome {
  @JsonValue('queued')
queued,
  @JsonValue('complete')
complete,
  @JsonValue('error')
error,
  @JsonValue('partial')
partial,
}


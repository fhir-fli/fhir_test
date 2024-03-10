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

enum ClaimUse {
  @JsonValue('claim')
claim,
  @JsonValue('preauthorization')
preauthorization,
  @JsonValue('predetermination')
predetermination,
}

enum Datestype {
  @JsonValue('card-issued')
cardissued,
  @JsonValue('claim-received')
claimreceived,
  @JsonValue('service-expected')
serviceexpected,
}


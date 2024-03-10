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

enum CoverageKind {
  @JsonValue('insurance')
insurance,
  @JsonValue('self-pay')
selfpay,
  @JsonValue('other')
other,
}


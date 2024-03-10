enum ChargeitemStatus {
  @JsonValue('planned')
planned,
  @JsonValue('billable')
billable,
  @JsonValue('not-billable')
notbillable,
  @JsonValue('aborted')
aborted,
  @JsonValue('billed')
billed,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('unknown')
unknown,
}


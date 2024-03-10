enum ConsentStateCodes {
  @JsonValue('draft')
draft,
  @JsonValue('active')
active,
  @JsonValue('inactive')
inactive,
  @JsonValue('not-done')
notdone,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('unknown')
unknown,
}

enum ConsentProvisionType {
  @JsonValue('deny')
deny,
  @JsonValue('permit')
permit,
}

enum ConsentDataMeaning {
  @JsonValue('instance')
instance,
  @JsonValue('related')
related,
  @JsonValue('dependents')
dependents,
  @JsonValue('authoredby')
authoredby,
}


enum PermissionStatus {
  @JsonValue('active')
active,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('draft')
draft,
  @JsonValue('rejected')
rejected,
}

enum PermissionRuleCombining {
  @JsonValue('deny-overrides')
denyoverrides,
  @JsonValue('permit-overrides')
permitoverrides,
  @JsonValue('ordered-deny-overrides')
ordereddenyoverrides,
  @JsonValue('ordered-permit-overrides')
orderedpermitoverrides,
  @JsonValue('deny-unless-permit')
denyunlesspermit,
  @JsonValue('permit-unless-deny')
permitunlessdeny,
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


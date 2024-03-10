enum VersionAlgorithm {
  @JsonValue('semver')
semver,
  @JsonValue('integer')
integer,
  @JsonValue('alpha')
alpha,
  @JsonValue('date')
date,
  @JsonValue('natural')
natural,
}

enum PublicationStatus {
  @JsonValue('draft')
draft,
  @JsonValue('active')
active,
  @JsonValue('retired')
retired,
  @JsonValue('unknown')
unknown,
}

enum CapabilityStatementKind {
  @JsonValue('instance')
instance,
  @JsonValue('capability')
capability,
  @JsonValue('requirements')
requirements,
}

enum CodesystemContentMode {
  @JsonValue('not-present')
notpresent,
  @JsonValue('example')
example,
  @JsonValue('fragment')
fragment,
  @JsonValue('complete')
complete,
  @JsonValue('supplement')
supplement,
}

enum CodeSearchSupport {
  @JsonValue('in-compose')
incompose,
  @JsonValue('in-expansion')
inexpansion,
  @JsonValue('in-compose-or-expansion')
incomposeorexpansion,
}


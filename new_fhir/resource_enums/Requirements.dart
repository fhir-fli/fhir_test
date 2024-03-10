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

enum ConformanceExpectation {
  @JsonValue('SHALL')
shall,
  @JsonValue('SHOULD')
should,
  @JsonValue('MAY')
may,
  @JsonValue('SHOULD-NOT')
shouldnot,
}


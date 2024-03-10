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

enum FilterOperator {
  @JsonValue('=')
=,
  @JsonValue('is-a')
isa,
  @JsonValue('descendent-of')
descendentof,
  @JsonValue('is-not-a')
isnota,
  @JsonValue('regex')
regex,
  @JsonValue('in')
in,
  @JsonValue('not-in')
notin,
  @JsonValue('generalizes')
generalizes,
  @JsonValue('child-of')
childof,
  @JsonValue('descendent-leaf')
descendentleaf,
  @JsonValue('exists')
exists,
}


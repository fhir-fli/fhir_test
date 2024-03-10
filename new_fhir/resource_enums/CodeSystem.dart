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

enum CodesystemHierarchyMeaning {
  @JsonValue('grouped-by')
groupedby,
  @JsonValue('is-a')
isa,
  @JsonValue('part-of')
partof,
  @JsonValue('classified-with')
classifiedwith,
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

enum ConceptPropertyType {
  @JsonValue('code')
code,
  @JsonValue('Coding')
coding,
  @JsonValue('string')
string,
  @JsonValue('integer')
integer,
  @JsonValue('boolean')
boolean,
  @JsonValue('dateTime')
datetime,
  @JsonValue('decimal')
decimal,
}




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

enum ConceptmapPropertyType {
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
  @JsonValue('code')
code,
}

enum ConceptmapAttributeType {
  @JsonValue('code')
code,
  @JsonValue('Coding')
coding,
  @JsonValue('string')
string,
  @JsonValue('boolean')
boolean,
  @JsonValue('Quantity')
quantity,
}

enum ConceptMapRelationship {
  @JsonValue('related-to')
relatedto,
  @JsonValue('not-related-to')
notrelatedto,
}

enum ConceptmapUnmappedMode {
  @JsonValue('use-source-code')
usesourcecode,
  @JsonValue('fixed')
fixed,
  @JsonValue('other-map')
othermap,
}

enum ConceptMapRelationship {
  @JsonValue('related-to')
relatedto,
  @JsonValue('not-related-to')
notrelatedto,
}



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

enum NamingsystemType {
  @JsonValue('codesystem')
codesystem,
  @JsonValue('identifier')
identifier,
  @JsonValue('root')
root,
}

enum NamingsystemIdentifierType {
  @JsonValue('oid')
oid,
  @JsonValue('uuid')
uuid,
  @JsonValue('uri')
uri,
  @JsonValue('iri-stem')
iristem,
  @JsonValue('v2csmnemonic')
v2csmnemonic,
  @JsonValue('other')
other,
}



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


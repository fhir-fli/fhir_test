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


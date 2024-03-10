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


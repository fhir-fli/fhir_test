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

enum OperationKind {
  @JsonValue('operation')
operation,
  @JsonValue('query')
query,
}

enum OperationParameterUse {
  @JsonValue('in')
in,
  @JsonValue('out')
out,
}

enum OperationParameterScope {
  @JsonValue('instance')
instance,
  @JsonValue('type')
type,
  @JsonValue('system')
system,
}

enum FhirTypes {
  @JsonValue('Base')
base,
}

enum FhirTypes {
  @JsonValue('Base')
base,
}

enum SearchParamType {
  @JsonValue('number')
number,
  @JsonValue('date')
date,
  @JsonValue('string')
string,
  @JsonValue('token')
token,
  @JsonValue('reference')
reference,
  @JsonValue('composite')
composite,
  @JsonValue('quantity')
quantity,
  @JsonValue('uri')
uri,
  @JsonValue('special')
special,
}

enum BindingStrength {
  @JsonValue('required')
required,
  @JsonValue('extensible')
extensible,
  @JsonValue('preferred')
preferred,
  @JsonValue('example')
example,
}


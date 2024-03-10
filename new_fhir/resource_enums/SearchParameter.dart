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

enum SearchProcessingmode {
  @JsonValue('normal')
normal,
  @JsonValue('phonetic')
phonetic,
  @JsonValue('other')
other,
}

enum SearchComparator {
  @JsonValue('eq')
eq,
  @JsonValue('ne')
ne,
  @JsonValue('gt')
gt,
  @JsonValue('lt')
lt,
  @JsonValue('ge')
ge,
  @JsonValue('le')
le,
  @JsonValue('sa')
sa,
  @JsonValue('eb')
eb,
  @JsonValue('ap')
ap,
}

enum SearchModifierCode {
  @JsonValue('missing')
missing,
  @JsonValue('exact')
exact,
  @JsonValue('contains')
contains,
  @JsonValue('not')
not,
  @JsonValue('text')
text,
  @JsonValue('in')
in,
  @JsonValue('not-in')
notin,
  @JsonValue('below')
below,
  @JsonValue('above')
above,
  @JsonValue('type')
type,
  @JsonValue('identifier')
identifier,
  @JsonValue('of-type')
oftype,
  @JsonValue('code-text')
codetext,
  @JsonValue('text-advanced')
textadvanced,
  @JsonValue('iterate')
iterate,
}


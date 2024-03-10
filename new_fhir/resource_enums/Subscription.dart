enum SubscriptionStatus {
  @JsonValue('requested')
requested,
  @JsonValue('active')
active,
  @JsonValue('error')
error,
  @JsonValue('off')
off,
  @JsonValue('entered-in-error')
enteredinerror,
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

enum SubscriptionPayloadContent {
  @JsonValue('empty')
empty,
  @JsonValue('id-only')
idonly,
  @JsonValue('full-resource')
fullresource,
}


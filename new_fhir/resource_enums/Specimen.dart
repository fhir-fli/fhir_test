enum SpecimenStatus {
  @JsonValue('available')
available,
  @JsonValue('unavailable')
unavailable,
  @JsonValue('unsatisfactory')
unsatisfactory,
  @JsonValue('entered-in-error')
enteredinerror,
}

enum SpecimenCombined {
  @JsonValue('grouped')
grouped,
  @JsonValue('pooled')
pooled,
}

enum SpecimenRole {
  @JsonValue('b')
b,
  @JsonValue('c')
c,
  @JsonValue('e')
e,
  @JsonValue('f')
f,
  @JsonValue('o')
o,
  @JsonValue('p')
p,
  @JsonValue('q')
q,
  @JsonValue('r')
r,
  @JsonValue('v')
v,
}


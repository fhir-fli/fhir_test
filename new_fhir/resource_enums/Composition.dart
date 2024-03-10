enum CompositionStatus {
  @JsonValue('registered')
registered,
  @JsonValue('partial')
partial,
  @JsonValue('final')
final,
  @JsonValue('amended')
amended,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('deprecated')
deprecated,
  @JsonValue('unknown')
unknown,
}

enum CompositionAttestationMode {
  @JsonValue('personal')
personal,
  @JsonValue('professional')
professional,
  @JsonValue('legal')
legal,
  @JsonValue('official')
official,
}


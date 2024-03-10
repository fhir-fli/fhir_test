enum LocationStatus {
  @JsonValue('active')
active,
  @JsonValue('suspended')
suspended,
  @JsonValue('inactive')
inactive,
}

enum LocationMode {
  @JsonValue('instance')
instance,
  @JsonValue('kind')
kind,
}

enum LocationCharacteristic {
  @JsonValue('wheelchair')
wheelchair,
  @JsonValue('has-translation')
hastranslation,
  @JsonValue('has-oxy-nitro')
hasoxynitro,
  @JsonValue('has-neg-press')
hasnegpress,
  @JsonValue('has-iso-ward')
hasisoward,
  @JsonValue('has-icu')
hasicu,
}


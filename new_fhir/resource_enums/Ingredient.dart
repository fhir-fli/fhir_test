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

enum IngredientRole {
  @JsonValue('100000072072')
100000072072,
  @JsonValue('100000072073')
100000072073,
  @JsonValue('100000072082')
100000072082,
  @JsonValue('100000136065')
100000136065,
  @JsonValue('100000136066')
100000136066,
  @JsonValue('100000136178')
100000136178,
  @JsonValue('100000136179')
100000136179,
  @JsonValue('100000136561')
100000136561,
  @JsonValue('200000003427')
200000003427,
}

enum IngredientFunction {
  @JsonValue('Antioxidant')
antioxidant,
  @JsonValue('AlkalizingAgent')
alkalizingagent,
}

enum IngredientManufacturerRole {
  @JsonValue('allowed')
allowed,
  @JsonValue('possible')
possible,
  @JsonValue('actual')
actual,
}


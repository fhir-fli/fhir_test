enum InventoryreportStatus {
  @JsonValue('draft')
draft,
  @JsonValue('requested')
requested,
  @JsonValue('active')
active,
  @JsonValue('entered-in-error')
enteredinerror,
}

enum InventoryreportCounttype {
  @JsonValue('snapshot')
snapshot,
  @JsonValue('difference')
difference,
}


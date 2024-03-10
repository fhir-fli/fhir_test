enum InventoryitemStatus {
  @JsonValue('active')
active,
  @JsonValue('inactive')
inactive,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('unknown')
unknown,
}

enum InventoryitemNametype {
  @JsonValue('trade-name')
tradename,
  @JsonValue('alias')
alias,
  @JsonValue('original-name')
originalname,
  @JsonValue('preferred')
preferred,
}


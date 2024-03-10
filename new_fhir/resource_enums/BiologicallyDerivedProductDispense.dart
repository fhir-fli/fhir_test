enum BiologicallyderivedproductdispenseStatus {
  @JsonValue('preparation')
preparation,
  @JsonValue('in-progress')
inprogress,
  @JsonValue('allocated')
allocated,
  @JsonValue('issued')
issued,
  @JsonValue('unfulfilled')
unfulfilled,
  @JsonValue('returned')
returned,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('unknown')
unknown,
}


enum SupplyrequestStatus {
  @JsonValue('draft')
draft,
  @JsonValue('active')
active,
  @JsonValue('suspended')
suspended,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('completed')
completed,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('unknown')
unknown,
}

enum RequestPriority {
  @JsonValue('routine')
routine,
  @JsonValue('urgent')
urgent,
  @JsonValue('asap')
asap,
  @JsonValue('stat')
stat,
}


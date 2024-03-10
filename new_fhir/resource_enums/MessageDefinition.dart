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

enum MessageEvents {
}

enum MessageSignificanceCategory {
  @JsonValue('consequence')
consequence,
  @JsonValue('currency')
currency,
  @JsonValue('notification')
notification,
}

enum MessageheaderResponseRequest {
  @JsonValue('always')
always,
  @JsonValue('on-error')
onerror,
  @JsonValue('never')
never,
  @JsonValue('on-success')
onsuccess,
}


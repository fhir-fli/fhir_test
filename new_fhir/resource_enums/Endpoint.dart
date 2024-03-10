enum EndpointStatus {
  @JsonValue('active')
active,
  @JsonValue('suspended')
suspended,
  @JsonValue('error')
error,
  @JsonValue('off')
off,
  @JsonValue('entered-in-error')
enteredinerror,
}

enum EndpointEnvironment {
  @JsonValue('prod')
prod,
  @JsonValue('staging')
staging,
  @JsonValue('dev')
dev,
  @JsonValue('test')
test,
  @JsonValue('train')
train,
}


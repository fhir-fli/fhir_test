enum DeviceassociationStatus {
  @JsonValue('implanted')
implanted,
  @JsonValue('explanted')
explanted,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('attached')
attached,
  @JsonValue('unknown')
unknown,
}

enum DeviceassociationStatusReason {
  @JsonValue('attached')
attached,
  @JsonValue('disconnected')
disconnected,
  @JsonValue('failed')
failed,
  @JsonValue('placed')
placed,
  @JsonValue('replaced')
replaced,
}

enum DeviceassociationOperationstatus {
  @JsonValue('on')
on,
  @JsonValue('off')
off,
  @JsonValue('standby')
standby,
  @JsonValue('defective')
defective,
  @JsonValue('unknown')
unknown,
}


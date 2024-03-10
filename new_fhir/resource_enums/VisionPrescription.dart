enum FmStatus {
  @JsonValue('active')
active,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('draft')
draft,
  @JsonValue('entered-in-error')
enteredinerror,
}

enum VisionEyeCodes {
  @JsonValue('right')
right,
  @JsonValue('left')
left,
}

enum VisionBaseCodes {
  @JsonValue('up')
up,
  @JsonValue('down')
down,
  @JsonValue('in')
in,
  @JsonValue('out')
out,
}


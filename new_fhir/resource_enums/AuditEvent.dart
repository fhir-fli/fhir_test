enum AuditEventAction {
  @JsonValue('C')
c,
  @JsonValue('R')
r,
  @JsonValue('U')
u,
  @JsonValue('D')
d,
  @JsonValue('E')
e,
}

enum AuditEventSeverity {
  @JsonValue('emergency')
emergency,
  @JsonValue('alert')
alert,
  @JsonValue('critical')
critical,
  @JsonValue('error')
error,
  @JsonValue('warning')
warning,
  @JsonValue('notice')
notice,
  @JsonValue('informational')
informational,
  @JsonValue('debug')
debug,
}


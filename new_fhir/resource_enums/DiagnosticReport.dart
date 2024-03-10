enum DiagnosticReportStatus {
  @JsonValue('registered')
registered,
  @JsonValue('partial')
partial,
  @JsonValue('final')
final,
  @JsonValue('amended')
amended,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('unknown')
unknown,
}


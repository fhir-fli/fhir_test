enum HistoryStatus {
  @JsonValue('partial')
partial,
  @JsonValue('completed')
completed,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('health-unknown')
healthunknown,
}

enum AdministrativeGender {
  @JsonValue('male')
male,
  @JsonValue('female')
female,
  @JsonValue('other')
other,
  @JsonValue('unknown')
unknown,
}


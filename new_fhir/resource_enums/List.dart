enum ListStatus {
  @JsonValue('current')
current,
  @JsonValue('retired')
retired,
  @JsonValue('entered-in-error')
enteredinerror,
}

enum ListMode {
  @JsonValue('working')
working,
  @JsonValue('snapshot')
snapshot,
  @JsonValue('changes')
changes,
}


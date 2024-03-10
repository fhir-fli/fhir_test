enum GoalStatus {
  @JsonValue('proposed')
proposed,
  @JsonValue('planned')
planned,
  @JsonValue('accepted')
accepted,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('rejected')
rejected,
}


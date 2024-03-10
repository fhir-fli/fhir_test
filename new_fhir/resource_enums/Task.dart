enum TaskStatus {
  @JsonValue('draft')
draft,
  @JsonValue('requested')
requested,
  @JsonValue('received')
received,
  @JsonValue('accepted')
accepted,
  @JsonValue('rejected')
rejected,
  @JsonValue('ready')
ready,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('in-progress')
inprogress,
  @JsonValue('on-hold')
onhold,
  @JsonValue('failed')
failed,
  @JsonValue('completed')
completed,
  @JsonValue('entered-in-error')
enteredinerror,
}

enum TaskStatusReason {
  @JsonValue('missing')
missing,
  @JsonValue('misidentified')
misidentified,
  @JsonValue('equipment-issue')
equipmentissue,
  @JsonValue('environmental-issue')
environmentalissue,
  @JsonValue('personnel-issue')
personnelissue,
}

enum TaskIntent {
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


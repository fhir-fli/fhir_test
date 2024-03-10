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

enum ConditionPreconditionType {
  @JsonValue('sensitive')
sensitive,
  @JsonValue('specific')
specific,
}

enum ConditionQuestionnairePurpose {
  @JsonValue('preadmit')
preadmit,
  @JsonValue('diff-diagnosis')
diffdiagnosis,
  @JsonValue('outcome')
outcome,
}


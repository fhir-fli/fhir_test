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

enum ItemType {
  @JsonValue('group')
group,
  @JsonValue('display')
display,
  @JsonValue('question')
question,
}

enum QuestionnaireEnableOperator {
  @JsonValue('exists')
exists,
  @JsonValue('=')
=,
  @JsonValue('!=')
!=,
  @JsonValue('>')
>,
  @JsonValue('<')
<,
  @JsonValue('>=')
>=,
  @JsonValue('<=')
<=,
}

enum QuestionnaireEnableBehavior {
  @JsonValue('all')
all,
  @JsonValue('any')
any,
}

enum QuestionnaireDisabledDisplay {
  @JsonValue('hidden')
hidden,
  @JsonValue('protected')
protected,
}

enum QuestionnaireAnswerConstraint {
  @JsonValue('optionsOnly')
optionsonly,
  @JsonValue('optionsOrType')
optionsortype,
  @JsonValue('optionsOrString')
optionsorstring,
}


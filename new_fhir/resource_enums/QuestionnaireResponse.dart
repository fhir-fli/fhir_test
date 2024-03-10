enum QuestionnaireAnswersStatus {
  @JsonValue('in-progress')
inprogress,
  @JsonValue('completed')
completed,
  @JsonValue('amended')
amended,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('stopped')
stopped,
}


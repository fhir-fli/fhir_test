enum ArtifactassessmentInformationType {
  @JsonValue('comment')
comment,
  @JsonValue('classifier')
classifier,
  @JsonValue('rating')
rating,
  @JsonValue('container')
container,
  @JsonValue('response')
response,
  @JsonValue('change-request')
changerequest,
}

enum CertaintyType {
  @JsonValue('Overall')
overall,
  @JsonValue('RiskOfBias')
riskofbias,
  @JsonValue('Inconsistency')
inconsistency,
  @JsonValue('Indirectness')
indirectness,
  @JsonValue('Imprecision')
imprecision,
  @JsonValue('PublicationBias')
publicationbias,
  @JsonValue('DoseResponseGradient')
doseresponsegradient,
  @JsonValue('PlausibleConfounding')
plausibleconfounding,
  @JsonValue('LargeEffect')
largeeffect,
}

enum CertaintyRating {
  @JsonValue('high')
high,
  @JsonValue('moderate')
moderate,
  @JsonValue('low')
low,
  @JsonValue('very-low')
verylow,
  @JsonValue('no-concern')
noconcern,
  @JsonValue('serious-concern')
seriousconcern,
  @JsonValue('very-serious-concern')
veryseriousconcern,
  @JsonValue('extremely-serious-concern')
extremelyseriousconcern,
  @JsonValue('present')
present,
  @JsonValue('absent')
absent,
  @JsonValue('no-change')
nochange,
  @JsonValue('downcode1')
downcode1,
  @JsonValue('downcode2')
downcode2,
  @JsonValue('downcode3')
downcode3,
  @JsonValue('upcode1')
upcode1,
  @JsonValue('upcode2')
upcode2,
}

enum ArtifactassessmentWorkflowStatus {
  @JsonValue('submitted')
submitted,
  @JsonValue('triaged')
triaged,
  @JsonValue('waiting-for-input')
waitingforinput,
  @JsonValue('resolved-no-change')
resolvednochange,
  @JsonValue('resolved-change-required')
resolvedchangerequired,
  @JsonValue('deferred')
deferred,
  @JsonValue('duplicate')
duplicate,
  @JsonValue('applied')
applied,
  @JsonValue('published')
published,
  @JsonValue('entered-in-error')
enteredinerror,
}

enum ArtifactassessmentDisposition {
  @JsonValue('unresolved')
unresolved,
  @JsonValue('not-persuasive')
notpersuasive,
  @JsonValue('persuasive')
persuasive,
  @JsonValue('persuasive-with-modification')
persuasivewithmodification,
  @JsonValue('not-persuasive-with-modification')
notpersuasivewithmodification,
}


enum GuidanceModuleCode {
  @JsonValue('bmi-calculator')
bmicalculator,
  @JsonValue('mme-calculator')
mmecalculator,
  @JsonValue('opioid-cds')
opioidcds,
  @JsonValue('anc-cds')
anccds,
  @JsonValue('chf-pathway')
chfpathway,
  @JsonValue('covid-19-severity')
covid19severity,
}

enum GuidanceResponseStatus {
  @JsonValue('success')
success,
  @JsonValue('data-requested')
datarequested,
  @JsonValue('data-required')
datarequired,
  @JsonValue('in-progress')
inprogress,
  @JsonValue('failure')
failure,
  @JsonValue('entered-in-error')
enteredinerror,
}


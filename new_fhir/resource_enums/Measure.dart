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

enum FhirTypes {
  @JsonValue('Base')
base,
}

enum MeasureDefinitionExample {
  @JsonValue('screening')
screening,
  @JsonValue('standardized-depression-screening-tool')
standardizeddepressionscreeningtool,
}

enum MeasureGroupExample {
  @JsonValue('primary-rate')
primaryrate,
  @JsonValue('secondary-rate')
secondaryrate,
}

enum FhirTypes {
  @JsonValue('Base')
base,
}

enum MeasureStratifierExample {
  @JsonValue('age')
age,
  @JsonValue('gender')
gender,
  @JsonValue('region')
region,
}

enum MeasureStratifierExample {
  @JsonValue('age')
age,
  @JsonValue('gender')
gender,
  @JsonValue('region')
region,
}

enum MeasureSupplementalDataExample {
  @JsonValue('age')
age,
  @JsonValue('gender')
gender,
  @JsonValue('ethnicity')
ethnicity,
  @JsonValue('payer')
payer,
}


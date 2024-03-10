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

enum PermittedDataType {
  @JsonValue('Quantity')
quantity,
  @JsonValue('CodeableConcept')
codeableconcept,
  @JsonValue('string')
string,
  @JsonValue('boolean')
boolean,
  @JsonValue('integer')
integer,
  @JsonValue('Range')
range,
  @JsonValue('Ratio')
ratio,
  @JsonValue('SampledData')
sampleddata,
  @JsonValue('time')
time,
  @JsonValue('dateTime')
datetime,
  @JsonValue('Period')
period,
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

enum ObservationRangeCategory {
  @JsonValue('reference')
reference,
  @JsonValue('critical')
critical,
  @JsonValue('absolute')
absolute,
}

enum PermittedDataType {
  @JsonValue('Quantity')
quantity,
  @JsonValue('CodeableConcept')
codeableconcept,
  @JsonValue('string')
string,
  @JsonValue('boolean')
boolean,
  @JsonValue('integer')
integer,
  @JsonValue('Range')
range,
  @JsonValue('Ratio')
ratio,
  @JsonValue('SampledData')
sampleddata,
  @JsonValue('time')
time,
  @JsonValue('dateTime')
datetime,
  @JsonValue('Period')
period,
}


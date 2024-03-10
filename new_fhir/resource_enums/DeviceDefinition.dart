enum DevicedefinitionRegulatoryIdentifierType {
  @JsonValue('basic')
basic,
  @JsonValue('master')
master,
  @JsonValue('license')
license,
}

enum DeviceNametype {
  @JsonValue('registered-name')
registeredname,
  @JsonValue('user-friendly-name')
userfriendlyname,
  @JsonValue('patient-reported-name')
patientreportedname,
}

enum DeviceSpecificationCategory {
  @JsonValue('communication')
communication,
  @JsonValue('performance')
performance,
  @JsonValue('measurement')
measurement,
  @JsonValue('risk-class')
riskclass,
  @JsonValue('electrical')
electrical,
  @JsonValue('material')
material,
  @JsonValue('exchange')
exchange,
}

enum DevicedefinitionRelationtype {
  @JsonValue('gateway')
gateway,
  @JsonValue('replaces')
replaces,
  @JsonValue('previous')
previous,
}

enum DeviceProductidentifierinudi {
  @JsonValue('lot-number')
lotnumber,
  @JsonValue('manufactured-date')
manufactureddate,
  @JsonValue('serial-number')
serialnumber,
  @JsonValue('expiration-date')
expirationdate,
  @JsonValue('biological-source')
biologicalsource,
  @JsonValue('software-version')
softwareversion,
}

enum DeviceCorrectiveactionscope {
  @JsonValue('model')
model,
  @JsonValue('lot-numbers')
lotnumbers,
  @JsonValue('serial-numbers')
serialnumbers,
}


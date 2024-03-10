enum UdiEntryType {
  @JsonValue('barcode')
barcode,
  @JsonValue('rfid')
rfid,
  @JsonValue('manual')
manual,
  @JsonValue('card')
card,
  @JsonValue('self-reported')
selfreported,
  @JsonValue('electronic-transmission')
electronictransmission,
  @JsonValue('unknown')
unknown,
}

enum DeviceStatus {
  @JsonValue('active')
active,
  @JsonValue('inactive')
inactive,
  @JsonValue('entered-in-error')
enteredinerror,
}

enum DeviceAvailabilityStatus {
  @JsonValue('lost')
lost,
  @JsonValue('damaged')
damaged,
  @JsonValue('destroyed')
destroyed,
  @JsonValue('available')
available,
}

enum DeviceNametype {
  @JsonValue('registered-name')
registeredname,
  @JsonValue('user-friendly-name')
userfriendlyname,
  @JsonValue('patient-reported-name')
patientreportedname,
}

enum DeviceCategory {
  @JsonValue('active')
active,
  @JsonValue('communicating')
communicating,
  @JsonValue('dme')
dme,
  @JsonValue('home-use')
homeuse,
  @JsonValue('implantable')
implantable,
  @JsonValue('in-vitro')
invitro,
  @JsonValue('point-of-care')
pointofcare,
  @JsonValue('single-use')
singleuse,
  @JsonValue('reusable')
reusable,
  @JsonValue('software')
software,
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

enum DeviceOperationMode {
  @JsonValue('normal')
normal,
  @JsonValue('demo')
demo,
  @JsonValue('service')
service,
  @JsonValue('maintenance')
maintenance,
  @JsonValue('test')
test,
}


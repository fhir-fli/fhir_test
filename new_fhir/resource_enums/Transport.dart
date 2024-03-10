enum TransportStatus {
  @JsonValue('in-progress')
inprogress,
  @JsonValue('completed')
completed,
  @JsonValue('abandoned')
abandoned,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('planned')
planned,
  @JsonValue('entered-in-error')
enteredinerror,
}

enum TransportStatusReason {
  @JsonValue('declined-by-patient')
declinedbypatient,
  @JsonValue('refused-by-recipient')
refusedbyrecipient,
  @JsonValue('patient-not-available')
patientnotavailable,
  @JsonValue('specimen-not-available')
specimennotavailable,
  @JsonValue('wrong-request-data')
wrongrequestdata,
  @JsonValue('in-route-accident')
inrouteaccident,
  @JsonValue('request-not-acknowledged')
requestnotacknowledged,
}

enum TransportIntent {
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


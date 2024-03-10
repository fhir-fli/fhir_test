

enum TaskStatus {
  @JsonValue('draft')
draft,
  @JsonValue('requested')
requested,
  @JsonValue('received')
received,
  @JsonValue('accepted')
accepted,
  @JsonValue('rejected')
rejected,
  @JsonValue('ready')
ready,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('in-progress')
inprogress,
  @JsonValue('on-hold')
onhold,
  @JsonValue('failed')
failed,
  @JsonValue('completed')
completed,
  @JsonValue('entered-in-error')
enteredinerror,
}

enum TaskStatusReason {
  @JsonValue('missing')
missing,
  @JsonValue('misidentified')
misidentified,
  @JsonValue('equipment-issue')
equipmentissue,
  @JsonValue('environmental-issue')
environmentalissue,
  @JsonValue('personnel-issue')
personnelissue,
}

enum TaskIntent {
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



enum Appointmentstatus {
  @JsonValue('proposed')
proposed,
  @JsonValue('pending')
pending,
  @JsonValue('booked')
booked,
  @JsonValue('arrived')
arrived,
  @JsonValue('fulfilled')
fulfilled,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('noshow')
noshow,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('checked-in')
checkedin,
  @JsonValue('waitlist')
waitlist,
}

enum Participationstatus {
  @JsonValue('accepted')
accepted,
  @JsonValue('declined')
declined,
  @JsonValue('tentative')
tentative,
  @JsonValue('needs-action')
needsaction,
}

enum WeekOfMonth {
  @JsonValue('first')
first,
  @JsonValue('second')
second,
  @JsonValue('third')
third,
  @JsonValue('fourth')
fourth,
  @JsonValue('last')
last,
}

enum DaysOfWeek {
  @JsonValue('mon')
mon,
  @JsonValue('tue')
tue,
  @JsonValue('wed')
wed,
  @JsonValue('thu')
thu,
  @JsonValue('fri')
fri,
  @JsonValue('sat')
sat,
  @JsonValue('sun')
sun,
}







enum Slotstatus {
  @JsonValue('busy')
busy,
  @JsonValue('free')
free,
  @JsonValue('busy-unavailable')
busyunavailable,
  @JsonValue('busy-tentative')
busytentative,
  @JsonValue('entered-in-error')
enteredinerror,
}




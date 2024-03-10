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




enum FmStatus {
  @JsonValue('active')
active,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('draft')
draft,
  @JsonValue('entered-in-error')
enteredinerror,
}



enum FmStatus {
  @JsonValue('active')
active,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('draft')
draft,
  @JsonValue('entered-in-error')
enteredinerror,
}

enum PaymentKind {
  @JsonValue('deposit')
deposit,
  @JsonValue('periodic-payment')
periodicpayment,
  @JsonValue('online')
online,
  @JsonValue('kiosk')
kiosk,
}

enum PaymentIssuertype {
  @JsonValue('patient')
patient,
  @JsonValue('insurance')
insurance,
}

enum PaymentOutcome {
  @JsonValue('queued')
queued,
  @JsonValue('complete')
complete,
  @JsonValue('error')
error,
  @JsonValue('partial')
partial,
}

enum NoteType {
  @JsonValue('display')
display,
  @JsonValue('print')
print,
  @JsonValue('printoper')
printoper,
}


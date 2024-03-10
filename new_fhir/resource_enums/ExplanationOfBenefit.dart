enum ExplanationofbenefitStatus {
  @JsonValue('active')
active,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('draft')
draft,
  @JsonValue('entered-in-error')
enteredinerror,
}

enum ClaimUse {
  @JsonValue('claim')
claim,
  @JsonValue('preauthorization')
preauthorization,
  @JsonValue('predetermination')
predetermination,
}

enum Datestype {
  @JsonValue('card-issued')
cardissued,
  @JsonValue('claim-received')
claimreceived,
  @JsonValue('service-expected')
serviceexpected,
}

enum ClaimOutcome {
  @JsonValue('queued')
queued,
  @JsonValue('complete')
complete,
  @JsonValue('error')
error,
  @JsonValue('partial')
partial,
}

enum ClaimDecision {
  @JsonValue('denied')
denied,
  @JsonValue('approved')
approved,
  @JsonValue('partial')
partial,
  @JsonValue('pending')
pending,
}

enum ClaimDecision {
  @JsonValue('denied')
denied,
  @JsonValue('approved')
approved,
  @JsonValue('partial')
partial,
  @JsonValue('pending')
pending,
}

enum ClaimDecisionReason {
  @JsonValue('0001')
0001,
  @JsonValue('0002')
0002,
  @JsonValue('0003')
0003,
  @JsonValue('0004')
0004,
  @JsonValue('0005')
0005,
}

enum NoteType {
  @JsonValue('display')
display,
  @JsonValue('print')
print,
  @JsonValue('printoper')
printoper,
}


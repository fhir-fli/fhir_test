enum AccountStatus {
  @JsonValue('active')
active,
  @JsonValue('inactive')
inactive,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('on-hold')
onhold,
  @JsonValue('unknown')
unknown,
}

enum AccountBillingStatus {
  @JsonValue('open')
open,
  @JsonValue('carecomplete-notbilled')
carecompletenotbilled,
  @JsonValue('billing')
billing,
  @JsonValue('closed-baddebt')
closedbaddebt,
  @JsonValue('closed-voided')
closedvoided,
  @JsonValue('closed-completed')
closedcompleted,
  @JsonValue('closed-combined')
closedcombined,
}

enum EncounterDiagnosisUse {
  @JsonValue('working')
working,
  @JsonValue('final')
final,
}

enum AccountRelationship {
  @JsonValue('parent')
parent,
  @JsonValue('guarantor')
guarantor,
}

enum AccountAggregate {
  @JsonValue('patient')
patient,
  @JsonValue('insurance')
insurance,
  @JsonValue('total')
total,
}

enum AccountBalanceTerm {
  @JsonValue('current')
current,
  @JsonValue('30')
30,
  @JsonValue('60')
60,
  @JsonValue('90')
90,
  @JsonValue('120')
120,
}


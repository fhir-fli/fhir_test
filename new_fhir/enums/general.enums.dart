

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



enum ChargeitemStatus {
  @JsonValue('planned')
planned,
  @JsonValue('billable')
billable,
  @JsonValue('not-billable')
notbillable,
  @JsonValue('aborted')
aborted,
  @JsonValue('billed')
billed,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('unknown')
unknown,
}



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



enum ContractStatus {
  @JsonValue('amended')
amended,
  @JsonValue('appended')
appended,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('disputed')
disputed,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('executable')
executable,
  @JsonValue('executed')
executed,
  @JsonValue('negotiable')
negotiable,
  @JsonValue('offered')
offered,
  @JsonValue('policy')
policy,
  @JsonValue('rejected')
rejected,
  @JsonValue('renewed')
renewed,
  @JsonValue('revoked')
revoked,
  @JsonValue('resolved')
resolved,
  @JsonValue('terminated')
terminated,
}

enum ContractLegalstate {
  @JsonValue('amended')
amended,
  @JsonValue('appended')
appended,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('disputed')
disputed,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('executable')
executable,
  @JsonValue('executed')
executed,
  @JsonValue('negotiable')
negotiable,
  @JsonValue('offered')
offered,
  @JsonValue('policy')
policy,
  @JsonValue('rejected')
rejected,
  @JsonValue('renewed')
renewed,
  @JsonValue('revoked')
revoked,
  @JsonValue('resolved')
resolved,
  @JsonValue('terminated')
terminated,
}

enum ContractExpirationType {
  @JsonValue('breach')
breach,
}

enum ContractScope {
  @JsonValue('policy')
policy,
}

enum ContractDefinitionType {
  @JsonValue('temp')
temp,
}

enum ContractDefinitionSubtype {
  @JsonValue('temp')
temp,
}

enum ContractPublicationstatus {
  @JsonValue('amended')
amended,
  @JsonValue('appended')
appended,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('disputed')
disputed,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('executable')
executable,
  @JsonValue('executed')
executed,
  @JsonValue('negotiable')
negotiable,
  @JsonValue('offered')
offered,
  @JsonValue('policy')
policy,
  @JsonValue('rejected')
rejected,
  @JsonValue('renewed')
renewed,
  @JsonValue('revoked')
revoked,
  @JsonValue('resolved')
resolved,
  @JsonValue('terminated')
terminated,
}

enum ContractSecurityClassification {
  @JsonValue('policy')
policy,
}

enum ContractSecurityCategory {
  @JsonValue('policy')
policy,
}

enum ContractSecurityControl {
  @JsonValue('policy')
policy,
}

enum ContractPartyRole {
  @JsonValue('flunky')
flunky,
}

enum ContractDecisionMode {
  @JsonValue('policy')
policy,
}

enum AssetAvailability {
  @JsonValue('lease')
lease,
}



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


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

enum ActionParticipantType {
  @JsonValue('careteam')
careteam,
  @JsonValue('device')
device,
  @JsonValue('group')
group,
  @JsonValue('healthcareservice')
healthcareservice,
  @JsonValue('location')
location,
  @JsonValue('organization')
organization,
  @JsonValue('patient')
patient,
  @JsonValue('practitioner')
practitioner,
  @JsonValue('practitionerrole')
practitionerrole,
  @JsonValue('relatedperson')
relatedperson,
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

enum ActionCode {
  @JsonValue('send-message')
sendmessage,
  @JsonValue('collect-information')
collectinformation,
  @JsonValue('prescribe-medication')
prescribemedication,
  @JsonValue('recommend-immunization')
recommendimmunization,
  @JsonValue('order-service')
orderservice,
  @JsonValue('propose-diagnosis')
proposediagnosis,
  @JsonValue('record-detected-issue')
recorddetectedissue,
  @JsonValue('record-inference')
recordinference,
  @JsonValue('report-flag')
reportflag,
}

enum ActionReasonCode {
  @JsonValue('off-pathway')
offpathway,
  @JsonValue('risk-assessment')
riskassessment,
  @JsonValue('care-gap')
caregap,
  @JsonValue('drug-drug-interaction')
drugdruginteraction,
  @JsonValue('quality-measure')
qualitymeasure,
}

enum ActionConditionKind {
  @JsonValue('applicability')
applicability,
  @JsonValue('start')
start,
  @JsonValue('stop')
stop,
}

enum ActionRelationshipType {
  @JsonValue('before')
before,
  @JsonValue('concurrent')
concurrent,
  @JsonValue('after')
after,
}

enum ActionRelationshipType {
  @JsonValue('before')
before,
  @JsonValue('concurrent')
concurrent,
  @JsonValue('after')
after,
}

enum ActionParticipantType {
  @JsonValue('careteam')
careteam,
  @JsonValue('device')
device,
  @JsonValue('group')
group,
  @JsonValue('healthcareservice')
healthcareservice,
  @JsonValue('location')
location,
  @JsonValue('organization')
organization,
  @JsonValue('patient')
patient,
  @JsonValue('practitioner')
practitioner,
  @JsonValue('practitionerrole')
practitionerrole,
  @JsonValue('relatedperson')
relatedperson,
}

enum ActionParticipantFunction {
  @JsonValue('performer')
performer,
  @JsonValue('author')
author,
  @JsonValue('reviewer')
reviewer,
  @JsonValue('witness')
witness,
}

enum ActionGroupingBehavior {
  @JsonValue('visual-group')
visualgroup,
  @JsonValue('logical-group')
logicalgroup,
  @JsonValue('sentence-group')
sentencegroup,
}

enum ActionSelectionBehavior {
  @JsonValue('any')
any,
  @JsonValue('all')
all,
  @JsonValue('all-or-none')
allornone,
  @JsonValue('exactly-one')
exactlyone,
  @JsonValue('at-most-one')
atmostone,
  @JsonValue('one-or-more')
oneormore,
}

enum ActionRequiredBehavior {
  @JsonValue('must')
must,
  @JsonValue('could')
could,
  @JsonValue('must-unless-documented')
mustunlessdocumented,
}

enum ActionPrecheckBehavior {
  @JsonValue('yes')
yes,
  @JsonValue('no')
no,
}

enum ActionCardinalityBehavior {
  @JsonValue('single')
single,
  @JsonValue('multiple')
multiple,
}




enum RequestStatus {
  @JsonValue('draft')
draft,
  @JsonValue('active')
active,
  @JsonValue('on-hold')
onhold,
  @JsonValue('revoked')
revoked,
  @JsonValue('completed')
completed,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('unknown')
unknown,
}



enum CareTeamStatus {
  @JsonValue('proposed')
proposed,
  @JsonValue('active')
active,
  @JsonValue('suspended')
suspended,
  @JsonValue('inactive')
inactive,
  @JsonValue('entered-in-error')
enteredinerror,
}



enum GoalStatus {
  @JsonValue('proposed')
proposed,
  @JsonValue('planned')
planned,
  @JsonValue('accepted')
accepted,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('rejected')
rejected,
}



enum RequestStatus {
  @JsonValue('draft')
draft,
  @JsonValue('active')
active,
  @JsonValue('on-hold')
onhold,
  @JsonValue('revoked')
revoked,
  @JsonValue('completed')
completed,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('unknown')
unknown,
}

enum RequestIntent {
  @JsonValue('proposal')
proposal,
  @JsonValue('plan')
plan,
  @JsonValue('directive')
directive,
  @JsonValue('order')
order,
  @JsonValue('option')
option,
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

enum ServicerequestOrderdetailParameterCode {
  @JsonValue('catheter-insertion')
catheterinsertion,
  @JsonValue('body-elevation')
bodyelevation,
  @JsonValue('device-configuration')
deviceconfiguration,
  @JsonValue('device-settings')
devicesettings,
}



enum RequestStatus {
  @JsonValue('draft')
draft,
  @JsonValue('active')
active,
  @JsonValue('on-hold')
onhold,
  @JsonValue('revoked')
revoked,
  @JsonValue('completed')
completed,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('unknown')
unknown,
}

enum RequestIntent {
  @JsonValue('proposal')
proposal,
  @JsonValue('plan')
plan,
  @JsonValue('directive')
directive,
  @JsonValue('order')
order,
  @JsonValue('option')
option,
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



enum EventStatus {
  @JsonValue('preparation')
preparation,
  @JsonValue('in-progress')
inprogress,
  @JsonValue('not-done')
notdone,
  @JsonValue('on-hold')
onhold,
  @JsonValue('stopped')
stopped,
  @JsonValue('completed')
completed,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('unknown')
unknown,
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

enum VisionEyeCodes {
  @JsonValue('right')
right,
  @JsonValue('left')
left,
}

enum VisionBaseCodes {
  @JsonValue('up')
up,
  @JsonValue('down')
down,
  @JsonValue('in')
in,
  @JsonValue('out')
out,
}



enum ObservationStatus {
  @JsonValue('registered')
registered,
  @JsonValue('preliminary')
preliminary,
  @JsonValue('final')
final,
  @JsonValue('amended')
amended,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('unknown')
unknown,
}



enum RequestStatus {
  @JsonValue('draft')
draft,
  @JsonValue('active')
active,
  @JsonValue('on-hold')
onhold,
  @JsonValue('revoked')
revoked,
  @JsonValue('completed')
completed,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('unknown')
unknown,
}

enum RequestIntent {
  @JsonValue('proposal')
proposal,
  @JsonValue('plan')
plan,
  @JsonValue('directive')
directive,
  @JsonValue('order')
order,
  @JsonValue('option')
option,
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


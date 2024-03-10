

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

enum ConditionPreconditionType {
  @JsonValue('sensitive')
sensitive,
  @JsonValue('specific')
specific,
}

enum ConditionQuestionnairePurpose {
  @JsonValue('preadmit')
preadmit,
  @JsonValue('diff-diagnosis')
diffdiagnosis,
  @JsonValue('outcome')
outcome,
}



enum DevicedefinitionRegulatoryIdentifierType {
  @JsonValue('basic')
basic,
  @JsonValue('master')
master,
  @JsonValue('license')
license,
}

enum DeviceNametype {
  @JsonValue('registered-name')
registeredname,
  @JsonValue('user-friendly-name')
userfriendlyname,
  @JsonValue('patient-reported-name')
patientreportedname,
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

enum DevicedefinitionRelationtype {
  @JsonValue('gateway')
gateway,
  @JsonValue('replaces')
replaces,
  @JsonValue('previous')
previous,
}

enum DeviceProductidentifierinudi {
  @JsonValue('lot-number')
lotnumber,
  @JsonValue('manufactured-date')
manufactureddate,
  @JsonValue('serial-number')
serialnumber,
  @JsonValue('expiration-date')
expirationdate,
  @JsonValue('biological-source')
biologicalsource,
  @JsonValue('software-version')
softwareversion,
}

enum DeviceCorrectiveactionscope {
  @JsonValue('model')
model,
  @JsonValue('lot-numbers')
lotnumbers,
  @JsonValue('serial-numbers')
serialnumbers,
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

enum PermittedDataType {
  @JsonValue('Quantity')
quantity,
  @JsonValue('CodeableConcept')
codeableconcept,
  @JsonValue('string')
string,
  @JsonValue('boolean')
boolean,
  @JsonValue('integer')
integer,
  @JsonValue('Range')
range,
  @JsonValue('Ratio')
ratio,
  @JsonValue('SampledData')
sampleddata,
  @JsonValue('time')
time,
  @JsonValue('dateTime')
datetime,
  @JsonValue('Period')
period,
}

enum AdministrativeGender {
  @JsonValue('male')
male,
  @JsonValue('female')
female,
  @JsonValue('other')
other,
  @JsonValue('unknown')
unknown,
}

enum ObservationRangeCategory {
  @JsonValue('reference')
reference,
  @JsonValue('critical')
critical,
  @JsonValue('absolute')
absolute,
}

enum PermittedDataType {
  @JsonValue('Quantity')
quantity,
  @JsonValue('CodeableConcept')
codeableconcept,
  @JsonValue('string')
string,
  @JsonValue('boolean')
boolean,
  @JsonValue('integer')
integer,
  @JsonValue('Range')
range,
  @JsonValue('Ratio')
ratio,
  @JsonValue('SampledData')
sampleddata,
  @JsonValue('time')
time,
  @JsonValue('dateTime')
datetime,
  @JsonValue('Period')
period,
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

enum ItemType {
  @JsonValue('group')
group,
  @JsonValue('display')
display,
  @JsonValue('question')
question,
}

enum QuestionnaireEnableOperator {
  @JsonValue('exists')
exists,
  @JsonValue('=')
=,
  @JsonValue('!=')
!=,
  @JsonValue('>')
>,
  @JsonValue('<')
<,
  @JsonValue('>=')
>=,
  @JsonValue('<=')
<=,
}

enum QuestionnaireEnableBehavior {
  @JsonValue('all')
all,
  @JsonValue('any')
any,
}

enum QuestionnaireDisabledDisplay {
  @JsonValue('hidden')
hidden,
  @JsonValue('protected')
protected,
}

enum QuestionnaireAnswerConstraint {
  @JsonValue('optionsOnly')
optionsonly,
  @JsonValue('optionsOrType')
optionsortype,
  @JsonValue('optionsOrString')
optionsorstring,
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

enum SpecimenContainedPreference {
  @JsonValue('preferred')
preferred,
  @JsonValue('alternate')
alternate,
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

enum ExamplescenarioActorType {
  @JsonValue('person')
person,
  @JsonValue('system')
system,
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

enum ExamplescenarioActorType {
  @JsonValue('person')
person,
  @JsonValue('system')
system,
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

enum ConformanceExpectation {
  @JsonValue('SHALL')
shall,
  @JsonValue('SHOULD')
should,
  @JsonValue('MAY')
may,
  @JsonValue('SHOULD-NOT')
shouldnot,
}


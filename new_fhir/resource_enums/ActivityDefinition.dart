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


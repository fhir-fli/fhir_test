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


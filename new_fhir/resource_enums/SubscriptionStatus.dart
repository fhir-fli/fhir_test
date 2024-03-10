enum SubscriptionStatus {
  @JsonValue('requested')
requested,
  @JsonValue('active')
active,
  @JsonValue('error')
error,
  @JsonValue('off')
off,
  @JsonValue('entered-in-error')
enteredinerror,
}

enum SubscriptionNotificationType {
  @JsonValue('handshake')
handshake,
  @JsonValue('heartbeat')
heartbeat,
  @JsonValue('event-notification')
eventnotification,
  @JsonValue('query-status')
querystatus,
  @JsonValue('query-event')
queryevent,
}


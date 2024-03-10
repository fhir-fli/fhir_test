enum ResponseCode {
  @JsonValue('ok')
ok,
  @JsonValue('transient-error')
transienterror,
  @JsonValue('fatal-error')
fatalerror,
}


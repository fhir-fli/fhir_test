enum ReportStatusCodes {
  @JsonValue('completed')
completed,
  @JsonValue('in-progress')
inprogress,
  @JsonValue('waiting')
waiting,
  @JsonValue('stopped')
stopped,
  @JsonValue('entered-in-error')
enteredinerror,
}

enum ReportResultCodes {
  @JsonValue('pass')
pass,
  @JsonValue('fail')
fail,
  @JsonValue('pending')
pending,
}

enum ReportParticipantType {
  @JsonValue('test-engine')
testengine,
  @JsonValue('client')
client,
  @JsonValue('server')
server,
}

enum ReportActionResultCodes {
  @JsonValue('pass')
pass,
  @JsonValue('skip')
skip,
  @JsonValue('fail')
fail,
  @JsonValue('warning')
warning,
  @JsonValue('error')
error,
}

enum ReportActionResultCodes {
  @JsonValue('pass')
pass,
  @JsonValue('skip')
skip,
  @JsonValue('fail')
fail,
  @JsonValue('warning')
warning,
  @JsonValue('error')
error,
}


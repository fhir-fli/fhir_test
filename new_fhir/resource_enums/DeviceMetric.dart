enum MetricOperationalStatus {
  @JsonValue('on')
on,
  @JsonValue('off')
off,
  @JsonValue('standby')
standby,
  @JsonValue('entered-in-error')
enteredinerror,
}

enum MetricCategory {
  @JsonValue('measurement')
measurement,
  @JsonValue('setting')
setting,
  @JsonValue('calculation')
calculation,
  @JsonValue('unspecified')
unspecified,
}

enum MetricCalibrationType {
  @JsonValue('unspecified')
unspecified,
  @JsonValue('offset')
offset,
  @JsonValue('gain')
gain,
  @JsonValue('two-point')
twopoint,
}

enum MetricCalibrationState {
  @JsonValue('not-calibrated')
notcalibrated,
  @JsonValue('calibration-required')
calibrationrequired,
  @JsonValue('calibrated')
calibrated,
  @JsonValue('unspecified')
unspecified,
}


enum MeasureReportStatus {
  @JsonValue('complete')
complete,
  @JsonValue('pending')
pending,
  @JsonValue('error')
error,
}

enum MeasureReportType {
  @JsonValue('individual')
individual,
  @JsonValue('subject-list')
subjectlist,
  @JsonValue('summary')
summary,
  @JsonValue('data-exchange')
dataexchange,
}

enum MeasureGroupExample {
  @JsonValue('primary-rate')
primaryrate,
  @JsonValue('secondary-rate')
secondaryrate,
}

enum MeasureStratifierExample {
  @JsonValue('age')
age,
  @JsonValue('gender')
gender,
  @JsonValue('region')
region,
}

enum MeasurereportStratifierValueExample {
  @JsonValue('northwest')
northwest,
  @JsonValue('northeast')
northeast,
  @JsonValue('southwest')
southwest,
  @JsonValue('southeast')
southeast,
}

enum MeasureStratifierExample {
  @JsonValue('age')
age,
  @JsonValue('gender')
gender,
  @JsonValue('region')
region,
}

enum MeasurereportStratifierValueExample {
  @JsonValue('northwest')
northwest,
  @JsonValue('northeast')
northeast,
  @JsonValue('southwest')
southwest,
  @JsonValue('southeast')
southeast,
}




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





enum MedicationdispenseAdminLocation {
  @JsonValue('inpatient')
inpatient,
  @JsonValue('outpatient')
outpatient,
  @JsonValue('community')
community,
}







enum MedicationCostCategory {
  @JsonValue('banda')
banda,
  @JsonValue('bandb')
bandb,
}










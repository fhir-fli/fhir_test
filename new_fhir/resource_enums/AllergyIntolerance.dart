enum AllergyIntoleranceType {
  @JsonValue('allergy')
allergy,
  @JsonValue('intolerance')
intolerance,
}

enum AllergyIntoleranceCategory {
  @JsonValue('food')
food,
  @JsonValue('medication')
medication,
  @JsonValue('environment')
environment,
  @JsonValue('biologic')
biologic,
}

enum AllergyIntoleranceCriticality {
  @JsonValue('low')
low,
  @JsonValue('high')
high,
  @JsonValue('unable-to-assess')
unabletoassess,
}

enum ReactionEventSeverity {
  @JsonValue('mild')
mild,
  @JsonValue('moderate')
moderate,
  @JsonValue('severe')
severe,
}


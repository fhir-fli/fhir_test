enum GroupType {
  @JsonValue('person')
person,
  @JsonValue('animal')
animal,
  @JsonValue('practitioner')
practitioner,
  @JsonValue('device')
device,
  @JsonValue('careteam')
careteam,
  @JsonValue('healthcareservice')
healthcareservice,
  @JsonValue('location')
location,
  @JsonValue('organization')
organization,
  @JsonValue('relatedperson')
relatedperson,
  @JsonValue('specimen')
specimen,
}

enum GroupMembershipBasis {
  @JsonValue('definitional')
definitional,
  @JsonValue('enumerated')
enumerated,
}


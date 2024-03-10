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

enum GraphCompartmentUse {
  @JsonValue('where')
where,
  @JsonValue('requires')
requires,
}

enum GraphCompartmentRule {
  @JsonValue('identical')
identical,
  @JsonValue('matching')
matching,
  @JsonValue('different')
different,
  @JsonValue('custom')
custom,
}

enum CompartmentType {
  @JsonValue('Patient')
patient,
  @JsonValue('Encounter')
encounter,
  @JsonValue('RelatedPerson')
relatedperson,
  @JsonValue('Practitioner')
practitioner,
  @JsonValue('Device')
device,
  @JsonValue('EpisodeOfCare')
episodeofcare,
}


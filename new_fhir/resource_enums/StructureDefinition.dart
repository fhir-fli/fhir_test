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

enum FhirVersion {
  @JsonValue('0.01')
001,
  @JsonValue('0.05')
005,
  @JsonValue('0.06')
006,
  @JsonValue('0.11')
011,
  @JsonValue('0.0')
00,
  @JsonValue('0.4')
04,
  @JsonValue('0.5')
05,
  @JsonValue('1.0')
10,
  @JsonValue('1.1')
11,
  @JsonValue('1.4')
14,
  @JsonValue('1.6')
16,
  @JsonValue('1.8')
18,
  @JsonValue('3.0')
30,
  @JsonValue('3.3')
33,
  @JsonValue('3.5')
35,
  @JsonValue('4.0')
40,
  @JsonValue('4.1')
41,
  @JsonValue('4.2')
42,
  @JsonValue('4.3')
43,
  @JsonValue('4.4')
44,
  @JsonValue('4.5')
45,
  @JsonValue('4.6')
46,
  @JsonValue('5.0')
50,
}

enum StructureDefinitionKind {
  @JsonValue('primitive-type')
primitivetype,
  @JsonValue('complex-type')
complextype,
  @JsonValue('resource')
resource,
  @JsonValue('logical')
logical,
}

enum ExtensionContextType {
  @JsonValue('fhirpath')
fhirpath,
  @JsonValue('element')
element,
  @JsonValue('extension')
extension,
}

enum FhirTypes {
  @JsonValue('Base')
base,
}

enum TypeDerivationRule {
  @JsonValue('specialization')
specialization,
  @JsonValue('constraint')
constraint,
}


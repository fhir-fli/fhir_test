enum ProductCategory {
  @JsonValue('organ')
organ,
  @JsonValue('tissue')
tissue,
  @JsonValue('fluid')
fluid,
  @JsonValue('cells')
cells,
  @JsonValue('biologicalAgent')
biologicalagent,
}

enum BiologicallyderivedProductcodes {
  @JsonValue('e0398')
e0398,
  @JsonValue('s1128')
s1128,
  @JsonValue('s1194')
s1194,
  @JsonValue('s1195')
s1195,
  @JsonValue('s1310')
s1310,
  @JsonValue('s1398')
s1398,
  @JsonValue('s2598')
s2598,
  @JsonValue('e4377')
e4377,
  @JsonValue('t1396')
t1396,
}

enum BiologicallyderivedProductStatus {
  @JsonValue('available')
available,
  @JsonValue('unavailable')
unavailable,
}

enum BiologicallyderivedProductPropertyTypeCodes {
  @JsonValue('collectiontype')
collectiontype,
  @JsonValue('aborhd')
aborhd,
  @JsonValue('singleeuropeancode')
singleeuropeancode,
  @JsonValue('redcellantigen')
redcellantigen,
}


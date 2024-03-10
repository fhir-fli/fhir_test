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

enum MedicinalProductDomain {
  @JsonValue('Human')
human,
  @JsonValue('Veterinary')
veterinary,
  @JsonValue('HumanAndVeterinary')
humanandveterinary,
}

enum SubstanceGrade {
  @JsonValue('USP-NF')
uspnf,
  @JsonValue('Ph.Eur')
pheur,
  @JsonValue('JP')
jp,
  @JsonValue('BP')
bp,
  @JsonValue('CompanyStandard')
companystandard,
}

enum SubstanceStereochemistry {
  @JsonValue('ConstitutionalIsomer')
constitutionalisomer,
  @JsonValue('Stereoisomer')
stereoisomer,
  @JsonValue('Enantiomer')
enantiomer,
}

enum SubstanceOpticalActivity {
  @JsonValue('+')
+,
  @JsonValue('-')
,
}

enum SubstanceAmountType {
  @JsonValue('Average')
average,
  @JsonValue('Approximately')
approximately,
  @JsonValue('LessThan')
lessthan,
  @JsonValue('MoreThan')
morethan,
}

enum SubstanceStructureTechnique {
  @JsonValue('X-Ray')
xray,
  @JsonValue('HPLC')
hplc,
  @JsonValue('NMR')
nmr,
  @JsonValue('PeptideMapping')
peptidemapping,
  @JsonValue('LigandBindingAssay')
ligandbindingassay,
}

enum SubstanceForm {
  @JsonValue('salt')
salt,
  @JsonValue('base')
base,
}

enum SubstanceWeightMethod {
  @JsonValue('SDS-PAGE')
sdspage,
  @JsonValue('Calculated')
calculated,
  @JsonValue('LighScattering')
lighscattering,
  @JsonValue('Viscosity')
viscosity,
  @JsonValue('GelPermeationCentrifugation')
gelpermeationcentrifugation,
  @JsonValue('End-groupAnalysis')
endgroupanalysis,
  @JsonValue('End-groupTitration')
endgrouptitration,
  @JsonValue('Size-ExclusionChromatography')
sizeexclusionchromatography,
}

enum SubstanceWeightType {
  @JsonValue('Exact')
exact,
  @JsonValue('Average')
average,
  @JsonValue('WeightAverage')
weightaverage,
}

enum SubstanceStereochemistry {
  @JsonValue('ConstitutionalIsomer')
constitutionalisomer,
  @JsonValue('Stereoisomer')
stereoisomer,
  @JsonValue('Enantiomer')
enantiomer,
}

enum SubstanceOpticalActivity {
  @JsonValue('+')
+,
  @JsonValue('-')
,
}

enum SubstanceStructureTechnique {
  @JsonValue('X-Ray')
xray,
  @JsonValue('HPLC')
hplc,
  @JsonValue('NMR')
nmr,
  @JsonValue('PeptideMapping')
peptidemapping,
  @JsonValue('LigandBindingAssay')
ligandbindingassay,
}

enum SubstanceRepresentationType {
  @JsonValue('Systematic')
systematic,
  @JsonValue('Scientific')
scientific,
  @JsonValue('Brand')
brand,
}

enum SubstanceRepresentationFormat {
  @JsonValue('InChI')
inchi,
  @JsonValue('SMILES')
smiles,
  @JsonValue('MOLFILE')
molfile,
  @JsonValue('CDX')
cdx,
  @JsonValue('SDF')
sdf,
  @JsonValue('PDB')
pdb,
  @JsonValue('mmCIF')
mmcif,
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

enum SubstanceNameType {
  @JsonValue('Systematic')
systematic,
  @JsonValue('Scientific')
scientific,
  @JsonValue('Brand')
brand,
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

enum SubstanceNameDomain {
  @JsonValue('ActiveIngredient')
activeingredient,
  @JsonValue('FoodColorAdditive')
foodcoloradditive,
}

enum SubstanceNameAuthority {
  @JsonValue('BAN')
ban,
  @JsonValue('COSING')
cosing,
  @JsonValue('Ph.Eur.')
pheur,
  @JsonValue('FCC')
fcc,
  @JsonValue('INCI')
inci,
  @JsonValue('INN')
inn,
  @JsonValue('JAN')
jan,
  @JsonValue('JECFA')
jecfa,
  @JsonValue('MARTINDALE')
martindale,
  @JsonValue('USAN')
usan,
  @JsonValue('USP')
usp,
  @JsonValue('PHF')
phf,
  @JsonValue('HAB')
hab,
  @JsonValue('PhF')
phf,
  @JsonValue('IUIS')
iuis,
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

enum SubstanceRelationshipType {
  @JsonValue('Salt')
salt,
  @JsonValue('ActiveMoiety')
activemoiety,
  @JsonValue('StartingMaterial')
startingmaterial,
  @JsonValue('Polymorph')
polymorph,
  @JsonValue('Impurity')
impurity,
}

enum SubstanceAmountType {
  @JsonValue('Average')
average,
  @JsonValue('Approximately')
approximately,
  @JsonValue('LessThan')
lessthan,
  @JsonValue('MoreThan')
morethan,
}

enum SubstanceSourceMaterialType {
  @JsonValue('Animal')
animal,
  @JsonValue('Plant')
plant,
  @JsonValue('Mineral')
mineral,
}

enum SubstanceSourceMaterialGenus {
  @JsonValue('Mycobacterium')
mycobacterium,
  @JsonValue('InfluenzavirusA')
influenzavirusa,
  @JsonValue('Ginkgo')
ginkgo,
}

enum SubstanceSourceMaterialSpecies {
  @JsonValue('GinkgoBiloba')
ginkgobiloba,
  @JsonValue('OleaEuropaea')
oleaeuropaea,
}

enum SubstanceSourceMaterialPart {
  @JsonValue('Animal')
animal,
  @JsonValue('Plant')
plant,
  @JsonValue('Mineral')
mineral,
}


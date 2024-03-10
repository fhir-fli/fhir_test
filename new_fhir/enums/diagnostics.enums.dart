

enum ObservationTriggeredbytype {
  @JsonValue('reflex')
reflex,
  @JsonValue('repeat')
repeat,
  @JsonValue('re-run')
rerun,
}

enum ObservationStatus {
  @JsonValue('registered')
registered,
  @JsonValue('preliminary')
preliminary,
  @JsonValue('final')
final,
  @JsonValue('amended')
amended,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('unknown')
unknown,
}

enum ObservationReferencerangeNormalvalue {
  @JsonValue('negative')
negative,
  @JsonValue('absent')
absent,
}



enum DiagnosticReportStatus {
  @JsonValue('registered')
registered,
  @JsonValue('partial')
partial,
  @JsonValue('final')
final,
  @JsonValue('amended')
amended,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('unknown')
unknown,
}



enum SpecimenStatus {
  @JsonValue('available')
available,
  @JsonValue('unavailable')
unavailable,
  @JsonValue('unsatisfactory')
unsatisfactory,
  @JsonValue('entered-in-error')
enteredinerror,
}

enum SpecimenCombined {
  @JsonValue('grouped')
grouped,
  @JsonValue('pooled')
pooled,
}

enum SpecimenRole {
  @JsonValue('b')
b,
  @JsonValue('c')
c,
  @JsonValue('e')
e,
  @JsonValue('f')
f,
  @JsonValue('o')
o,
  @JsonValue('p')
p,
  @JsonValue('q')
q,
  @JsonValue('r')
r,
  @JsonValue('v')
v,
}





enum ImagingselectionStatus {
  @JsonValue('available')
available,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('unknown')
unknown,
}

enum Imagingselection2dgraphictype {
  @JsonValue('point')
point,
  @JsonValue('polyline')
polyline,
  @JsonValue('interpolated')
interpolated,
  @JsonValue('circle')
circle,
  @JsonValue('ellipse')
ellipse,
}

enum Imagingselection3dgraphictype {
  @JsonValue('point')
point,
  @JsonValue('multipoint')
multipoint,
  @JsonValue('polyline')
polyline,
  @JsonValue('polygon')
polygon,
  @JsonValue('ellipse')
ellipse,
  @JsonValue('ellipsoid')
ellipsoid,
}



enum ImagingstudyStatus {
  @JsonValue('registered')
registered,
  @JsonValue('available')
available,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('unknown')
unknown,
}

enum Null {
}



enum QuestionnaireAnswersStatus {
  @JsonValue('in-progress')
inprogress,
  @JsonValue('completed')
completed,
  @JsonValue('amended')
amended,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('stopped')
stopped,
}



enum SequenceType {
  @JsonValue('aa')
aa,
  @JsonValue('dna')
dna,
  @JsonValue('rna')
rna,
}

enum OrientationType {
  @JsonValue('sense')
sense,
  @JsonValue('antisense')
antisense,
}

enum StrandType {
  @JsonValue('watson')
watson,
  @JsonValue('crick')
crick,
}



enum GenomicstudyStatus {
  @JsonValue('registered')
registered,
  @JsonValue('available')
available,
  @JsonValue('cancelled')
cancelled,
  @JsonValue('entered-in-error')
enteredinerror,
  @JsonValue('unknown')
unknown,
}

enum GenomicstudyType {
  @JsonValue('alt-splc')
altsplc,
  @JsonValue('chromatin')
chromatin,
  @JsonValue('cnv')
cnv,
  @JsonValue('epi-alt-hist')
epialthist,
  @JsonValue('epi-alt-dna')
epialtdna,
  @JsonValue('fam-var-segr')
famvarsegr,
  @JsonValue('func-var')
funcvar,
  @JsonValue('gene-expression')
geneexpression,
  @JsonValue('post-trans-mod')
posttransmod,
  @JsonValue('snp')
snp,
  @JsonValue('str')
str,
  @JsonValue('struc-var')
strucvar,
}

enum GenomicstudyMethodtype {
  @JsonValue('biochemical-genetics')
biochemicalgenetics,
  @JsonValue('cytogenetics')
cytogenetics,
  @JsonValue('molecular-genetics')
moleculargenetics,
  @JsonValue('analyte')
analyte,
  @JsonValue('chromosome-breakage-studies')
chromosomebreakagestudies,
  @JsonValue('deletion-duplication-analysis')
deletionduplicationanalysis,
  @JsonValue('detection-of-homozygosity')
detectionofhomozygosity,
  @JsonValue('enzyme-assay')
enzymeassay,
  @JsonValue('fish-interphase')
fishinterphase,
  @JsonValue('fish-metaphase')
fishmetaphase,
  @JsonValue('flow-cytometry')
flowcytometry,
  @JsonValue('fish')
fish,
  @JsonValue('immunohistochemistry')
immunohistochemistry,
  @JsonValue('karyotyping')
karyotyping,
  @JsonValue('linkage-analysis')
linkageanalysis,
  @JsonValue('methylation-analysis')
methylationanalysis,
  @JsonValue('msi')
msi,
  @JsonValue('m-fish')
mfish,
  @JsonValue('mutation-scanning-of-select-exons')
mutationscanningofselectexons,
  @JsonValue('mutation-scanning-of-the-entire-coding-region')
mutationscanningoftheentirecodingregion,
  @JsonValue('protein-analysis')
proteinanalysis,
  @JsonValue('protein-expression')
proteinexpression,
  @JsonValue('rna-analysis')
rnaanalysis,
  @JsonValue('sequence-analysis-of-select-exons')
sequenceanalysisofselectexons,
  @JsonValue('sequence-analysis-of-the-entire-coding-region')
sequenceanalysisoftheentirecodingregion,
  @JsonValue('sister-chromatid-exchange')
sisterchromatidexchange,
  @JsonValue('targeted-variant-analysis')
targetedvariantanalysis,
  @JsonValue('udp')
udp,
  @JsonValue('aspe')
aspe,
  @JsonValue('alternative-splicing-detection')
alternativesplicingdetection,
  @JsonValue('bi-directional-sanger-sequence-analysis')
bidirectionalsangersequenceanalysis,
  @JsonValue('c-banding')
cbanding,
  @JsonValue('cia')
cia,
  @JsonValue('chromatin-immunoprecipitation-on-chip')
chromatinimmunoprecipitationonchip,
  @JsonValue('comparative-genomic-hybridization')
comparativegenomichybridization,
  @JsonValue('damid')
damid,
  @JsonValue('digital-virtual-karyotyping')
digitalvirtualkaryotyping,
  @JsonValue('digital-microfluidic-microspheres')
digitalmicrofluidicmicrospheres,
  @JsonValue('enzymatic-levels')
enzymaticlevels,
  @JsonValue('enzyme-activity')
enzymeactivity,
  @JsonValue('elisa')
elisa,
  @JsonValue('fluorometry')
fluorometry,
  @JsonValue('fusion-genes-microarrays')
fusiongenesmicroarrays,
  @JsonValue('g-banding')
gbanding,
  @JsonValue('gc-ms')
gcms,
  @JsonValue('gene-expression-profiling')
geneexpressionprofiling,
  @JsonValue('gene-id')
geneid,
  @JsonValue('gold-nanoparticle-probe-technology')
goldnanoparticleprobetechnology,
  @JsonValue('hplc')
hplc,
  @JsonValue('lc-ms')
lcms,
  @JsonValue('lc-ms-ms')
lcmsms,
  @JsonValue('metabolite-levels')
metabolitelevels,
  @JsonValue('methylation-specific-pcr')
methylationspecificpcr,
  @JsonValue('microarray')
microarray,
  @JsonValue('mlpa')
mlpa,
  @JsonValue('ngs-mps')
ngsmps,
  @JsonValue('ola')
ola,
  @JsonValue('oligonucleotide-hybridization-based-dna-sequencing')
oligonucleotidehybridizationbaseddnasequencing,
  @JsonValue('other')
other,
  @JsonValue('pcr')
pcr,
  @JsonValue('pcr-with-allele-specific-hybridization')
pcrwithallelespecifichybridization,
  @JsonValue('pcr-rflp-with-southern-hybridization')
pcrrflpwithsouthernhybridization,
  @JsonValue('protein-truncation-test')
proteintruncationtest,
  @JsonValue('pyrosequencing')
pyrosequencing,
  @JsonValue('q-banding')
qbanding,
  @JsonValue('qpcr')
qpcr,
  @JsonValue('r-banding')
rbanding,
  @JsonValue('rflp')
rflp,
  @JsonValue('rt-lamp')
rtlamp,
  @JsonValue('rt-pcr')
rtpcr,
  @JsonValue('rt-pcr-with-gel-analysis')
rtpcrwithgelanalysis,
  @JsonValue('rt-qpcr')
rtqpcr,
  @JsonValue('snp-detection')
snpdetection,
  @JsonValue('silver-staining')
silverstaining,
  @JsonValue('sky')
sky,
  @JsonValue('t-banding')
tbanding,
  @JsonValue('ms-ms')
msms,
  @JsonValue('tetra-nucleotide-repeat-by-pcr-or-southern-blot')
tetranucleotiderepeatbypcrorsouthernblot,
  @JsonValue('tiling-arrays')
tilingarrays,
  @JsonValue('trinucleotide-repeat-by-pcr-or-southern-blot')
trinucleotiderepeatbypcrorsouthernblot,
  @JsonValue('uni-directional-sanger-sequencing')
unidirectionalsangersequencing,
}

enum GenomicstudyChangetype {
  @JsonValue('DNA')
dna,
  @JsonValue('RNA')
rna,
  @JsonValue('AA')
aa,
  @JsonValue('CHR')
chr,
  @JsonValue('CNV')
cnv,
}

enum Null {
}

enum GenomicstudyDataformat {
  @JsonValue('bam')
bam,
  @JsonValue('bed')
bed,
  @JsonValue('bedpe')
bedpe,
  @JsonValue('bedgraph')
bedgraph,
  @JsonValue('bigbed')
bigbed,
  @JsonValue('bigWig')
bigwig,
  @JsonValue('birdsuite-files')
birdsuitefiles,
  @JsonValue('broadpeak')
broadpeak,
  @JsonValue('cbs')
cbs,
  @JsonValue('chemical-reactivity-probing-profiles')
chemicalreactivityprobingprofiles,
  @JsonValue('chrom-sizes')
chromsizes,
  @JsonValue('cn')
cn,
  @JsonValue('custom-file-formats')
customfileformats,
  @JsonValue('cytoband')
cytoband,
  @JsonValue('fasta')
fasta,
  @JsonValue('gct')
gct,
  @JsonValue('cram')
cram,
  @JsonValue('genepred')
genepred,
  @JsonValue('gff-gtf')
gffgtf,
  @JsonValue('gistic')
gistic,
  @JsonValue('goby')
goby,
  @JsonValue('gwas')
gwas,
  @JsonValue('igv')
igv,
  @JsonValue('loh')
loh,
  @JsonValue('maf-multiple-alignment-format')
mafmultiplealignmentformat,
  @JsonValue('maf-mutation-annotation-format')
mafmutationannotationformat,
  @JsonValue('merged-bam-file')
mergedbamfile,
  @JsonValue('mut')
mut,
  @JsonValue('narrowpeak')
narrowpeak,
  @JsonValue('psl')
psl,
  @JsonValue('res')
res,
  @JsonValue('rna-secondary-structure-formats')
rnasecondarystructureformats,
  @JsonValue('sam')
sam,
  @JsonValue('sample-info-attributes-file')
sampleinfoattributesfile,
  @JsonValue('seg')
seg,
  @JsonValue('tdf')
tdf,
  @JsonValue('track-line')
trackline,
  @JsonValue('type-line')
typeline,
  @JsonValue('vcf')
vcf,
  @JsonValue('wig')
wig,
}

enum GenomicstudyDataformat {
  @JsonValue('bam')
bam,
  @JsonValue('bed')
bed,
  @JsonValue('bedpe')
bedpe,
  @JsonValue('bedgraph')
bedgraph,
  @JsonValue('bigbed')
bigbed,
  @JsonValue('bigWig')
bigwig,
  @JsonValue('birdsuite-files')
birdsuitefiles,
  @JsonValue('broadpeak')
broadpeak,
  @JsonValue('cbs')
cbs,
  @JsonValue('chemical-reactivity-probing-profiles')
chemicalreactivityprobingprofiles,
  @JsonValue('chrom-sizes')
chromsizes,
  @JsonValue('cn')
cn,
  @JsonValue('custom-file-formats')
customfileformats,
  @JsonValue('cytoband')
cytoband,
  @JsonValue('fasta')
fasta,
  @JsonValue('gct')
gct,
  @JsonValue('cram')
cram,
  @JsonValue('genepred')
genepred,
  @JsonValue('gff-gtf')
gffgtf,
  @JsonValue('gistic')
gistic,
  @JsonValue('goby')
goby,
  @JsonValue('gwas')
gwas,
  @JsonValue('igv')
igv,
  @JsonValue('loh')
loh,
  @JsonValue('maf-multiple-alignment-format')
mafmultiplealignmentformat,
  @JsonValue('maf-mutation-annotation-format')
mafmutationannotationformat,
  @JsonValue('merged-bam-file')
mergedbamfile,
  @JsonValue('mut')
mut,
  @JsonValue('narrowpeak')
narrowpeak,
  @JsonValue('psl')
psl,
  @JsonValue('res')
res,
  @JsonValue('rna-secondary-structure-formats')
rnasecondarystructureformats,
  @JsonValue('sam')
sam,
  @JsonValue('sample-info-attributes-file')
sampleinfoattributesfile,
  @JsonValue('seg')
seg,
  @JsonValue('tdf')
tdf,
  @JsonValue('track-line')
trackline,
  @JsonValue('type-line')
typeline,
  @JsonValue('vcf')
vcf,
  @JsonValue('wig')
wig,
}




enum TitleType {
  @JsonValue('primary')
primary,
  @JsonValue('official')
official,
  @JsonValue('scientific')
scientific,
  @JsonValue('plain-language')
plainlanguage,
  @JsonValue('subtitle')
subtitle,
  @JsonValue('short-title')
shorttitle,
  @JsonValue('acronym')
acronym,
  @JsonValue('earlier-title')
earliertitle,
  @JsonValue('language')
language,
  @JsonValue('autotranslated')
autotranslated,
  @JsonValue('human-use')
humanuse,
  @JsonValue('machine-use')
machineuse,
  @JsonValue('duplicate-uid')
duplicateuid,
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

enum ResearchStudyPrimPurpType {
  @JsonValue('treatment')
treatment,
  @JsonValue('prevention')
prevention,
  @JsonValue('diagnostic')
diagnostic,
  @JsonValue('supportive-care')
supportivecare,
  @JsonValue('screening')
screening,
  @JsonValue('health-services-research')
healthservicesresearch,
  @JsonValue('basic-science')
basicscience,
  @JsonValue('device-feasibility')
devicefeasibility,
}

enum ResearchStudyPhase {
  @JsonValue('n-a')
na,
  @JsonValue('early-phase-1')
earlyphase1,
  @JsonValue('phase-1')
phase1,
  @JsonValue('phase-1-phase-2')
phase1phase2,
  @JsonValue('phase-2')
phase2,
  @JsonValue('phase-2-phase-3')
phase2phase3,
  @JsonValue('phase-3')
phase3,
  @JsonValue('phase-4')
phase4,
}

enum StudyDesign {
  @JsonValue('SEVCO:01001')
sevco:01001,
  @JsonValue('SEVCO:01002')
sevco:01002,
  @JsonValue('SEVCO:01010')
sevco:01010,
  @JsonValue('SEVCO:01023')
sevco:01023,
  @JsonValue('SEVCO:01022')
sevco:01022,
  @JsonValue('SEVCO:01027')
sevco:01027,
  @JsonValue('SEVCO:01028')
sevco:01028,
  @JsonValue('SEVCO:01045')
sevco:01045,
  @JsonValue('SEVCO:01026')
sevco:01026,
  @JsonValue('SEVCO:01049')
sevco:01049,
  @JsonValue('SEVCO:01042')
sevco:01042,
  @JsonValue('SEVCO:01051')
sevco:01051,
  @JsonValue('SEVCO:01086')
sevco:01086,
  @JsonValue('SEVCO:01087')
sevco:01087,
  @JsonValue('SEVCO:01060')
sevco:01060,
  @JsonValue('SEVCO:01061')
sevco:01061,
  @JsonValue('SEVCO:01062')
sevco:01062,
  @JsonValue('SEVCO:01063')
sevco:01063,
  @JsonValue('SEVCO:01064')
sevco:01064,
  @JsonValue('SEVCO:01043')
sevco:01043,
  @JsonValue('SEVCO:01052')
sevco:01052,
  @JsonValue('SEVCO:01053')
sevco:01053,
  @JsonValue('SEVCO:01054')
sevco:01054,
  @JsonValue('SEVCO:01085')
sevco:01085,
  @JsonValue('SEVCO:01089')
sevco:01089,
}

enum ResearchStudyFocusType {
  @JsonValue('medication')
medication,
  @JsonValue('device')
device,
  @JsonValue('intervention')
intervention,
  @JsonValue('factor')
factor,
}

enum ResearchStudyClassifiers {
  @JsonValue('fda-regulated-drug')
fdaregulateddrug,
  @JsonValue('fda-regulated-device')
fdaregulateddevice,
  @JsonValue('mpg-paragraph-23b')
mpgparagraph23b,
  @JsonValue('irb-exempt')
irbexempt,
}

enum ResearchStudyPartyRole {
  @JsonValue('sponsor')
sponsor,
  @JsonValue('lead-sponsor')
leadsponsor,
  @JsonValue('sponsor-investigator')
sponsorinvestigator,
  @JsonValue('primary-investigator')
primaryinvestigator,
  @JsonValue('collaborator')
collaborator,
  @JsonValue('funding-source')
fundingsource,
  @JsonValue('general-contact')
generalcontact,
  @JsonValue('recruitment-contact')
recruitmentcontact,
  @JsonValue('sub-investigator')
subinvestigator,
  @JsonValue('study-director')
studydirector,
  @JsonValue('study-chair')
studychair,
  @JsonValue('irb')
irb,
}

enum ResearchStudyPartyOrganizationType {
  @JsonValue('nih')
nih,
  @JsonValue('fda')
fda,
  @JsonValue('government')
government,
  @JsonValue('nonprofit')
nonprofit,
  @JsonValue('academic')
academic,
  @JsonValue('industry')
industry,
}

enum ResearchStudyStatus {
  @JsonValue('overall-study')
overallstudy,
  @JsonValue('active')
active,
  @JsonValue('active-but-not-recruiting')
activebutnotrecruiting,
  @JsonValue('administratively-completed')
administrativelycompleted,
  @JsonValue('approved')
approved,
  @JsonValue('closed-to-accrual')
closedtoaccrual,
  @JsonValue('closed-to-accrual-and-intervention')
closedtoaccrualandintervention,
  @JsonValue('completed')
completed,
  @JsonValue('disapproved')
disapproved,
  @JsonValue('enrolling-by-invitation')
enrollingbyinvitation,
  @JsonValue('in-review')
inreview,
  @JsonValue('not-yet-recruiting')
notyetrecruiting,
  @JsonValue('recruiting')
recruiting,
  @JsonValue('temporarily-closed-to-accrual')
temporarilyclosedtoaccrual,
  @JsonValue('temporarily-closed-to-accrual-and-intervention')
temporarilyclosedtoaccrualandintervention,
  @JsonValue('terminated')
terminated,
  @JsonValue('withdrawn')
withdrawn,
}

enum ResearchStudyReasonStopped {
  @JsonValue('accrual-goal-met')
accrualgoalmet,
  @JsonValue('closed-due-to-toxicity')
closedduetotoxicity,
  @JsonValue('closed-due-to-lack-of-study-progress')
closedduetolackofstudyprogress,
  @JsonValue('temporarily-closed-per-study-design')
temporarilyclosedperstudydesign,
}

enum ResearchStudyArmType {
  @JsonValue('active-comparator')
activecomparator,
  @JsonValue('placebo-comparator')
placebocomparator,
  @JsonValue('sham-comparator')
shamcomparator,
  @JsonValue('no-intervention')
nointervention,
  @JsonValue('experimental')
experimental,
  @JsonValue('other-arm-type')
otherarmtype,
}

enum ResearchStudyObjectiveType {
  @JsonValue('primary')
primary,
  @JsonValue('secondary')
secondary,
  @JsonValue('exploratory')
exploratory,
}

enum ResearchStudyObjectiveType {
  @JsonValue('primary')
primary,
  @JsonValue('secondary')
secondary,
  @JsonValue('exploratory')
exploratory,
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


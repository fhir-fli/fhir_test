enum OrganizationRole {
  @JsonValue('provider')
provider,
  @JsonValue('agency')
agency,
  @JsonValue('research')
research,
  @JsonValue('payer')
payer,
  @JsonValue('diagnostics')
diagnostics,
  @JsonValue('supplier')
supplier,
  @JsonValue('HIE/HIO')
hie/hio,
  @JsonValue('member')
member,
}


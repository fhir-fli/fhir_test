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

enum MapModelMode {
  @JsonValue('source')
source,
  @JsonValue('queried')
queried,
  @JsonValue('target')
target,
  @JsonValue('produced')
produced,
}

enum MapGroupTypeMode {
  @JsonValue('types')
types,
  @JsonValue('type-and-types')
typeandtypes,
}

enum MapInputMode {
  @JsonValue('source')
source,
  @JsonValue('target')
target,
}

enum MapSourceListMode {
  @JsonValue('first')
first,
  @JsonValue('not_first')
notfirst,
  @JsonValue('last')
last,
  @JsonValue('not_last')
notlast,
  @JsonValue('only_one')
onlyone,
}

enum MapTargetListMode {
  @JsonValue('first')
first,
  @JsonValue('share')
share,
  @JsonValue('last')
last,
  @JsonValue('single')
single,
}

enum MapTransform {
  @JsonValue('create')
create,
  @JsonValue('copy')
copy,
  @JsonValue('truncate')
truncate,
  @JsonValue('escape')
escape,
  @JsonValue('cast')
cast,
  @JsonValue('append')
append,
  @JsonValue('translate')
translate,
  @JsonValue('reference')
reference,
  @JsonValue('dateOp')
dateop,
  @JsonValue('uuid')
uuid,
  @JsonValue('pointer')
pointer,
  @JsonValue('evaluate')
evaluate,
  @JsonValue('cc')
cc,
  @JsonValue('c')
c,
  @JsonValue('qty')
qty,
  @JsonValue('id')
id,
  @JsonValue('cp')
cp,
}


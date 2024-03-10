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


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

enum TestscriptScopeConformanceCodes {
  @JsonValue('required')
required,
  @JsonValue('optional')
optional,
  @JsonValue('strict')
strict,
}

enum TestscriptScopePhaseCodes {
  @JsonValue('unit')
unit,
  @JsonValue('integration')
integration,
  @JsonValue('production')
production,
}

enum HttpOperations {
  @JsonValue('delete')
delete,
  @JsonValue('get')
get,
  @JsonValue('options')
options,
  @JsonValue('patch')
patch,
  @JsonValue('post')
post,
  @JsonValue('put')
put,
  @JsonValue('head')
head,
}

enum AssertDirectionCodes {
  @JsonValue('response')
response,
  @JsonValue('request')
request,
}

enum AssertManualCompletionCodes {
  @JsonValue('fail')
fail,
  @JsonValue('pass')
pass,
  @JsonValue('skip')
skip,
  @JsonValue('stop')
stop,
}

enum AssertOperatorCodes {
  @JsonValue('equals')
equals,
  @JsonValue('notEquals')
notequals,
  @JsonValue('in')
in,
  @JsonValue('notIn')
notin,
  @JsonValue('greaterThan')
greaterthan,
  @JsonValue('lessThan')
lessthan,
  @JsonValue('empty')
empty,
  @JsonValue('notEmpty')
notempty,
  @JsonValue('contains')
contains,
  @JsonValue('notContains')
notcontains,
  @JsonValue('eval')
eval,
  @JsonValue('manualEval')
manualeval,
}

enum HttpOperations {
  @JsonValue('delete')
delete,
  @JsonValue('get')
get,
  @JsonValue('options')
options,
  @JsonValue('patch')
patch,
  @JsonValue('post')
post,
  @JsonValue('put')
put,
  @JsonValue('head')
head,
}

enum AssertResponseCodeTypes {
  @JsonValue('continue')
continue,
  @JsonValue('switchingProtocols')
switchingprotocols,
  @JsonValue('okay')
okay,
  @JsonValue('created')
created,
  @JsonValue('accepted')
accepted,
  @JsonValue('nonAuthoritativeInformation')
nonauthoritativeinformation,
  @JsonValue('noContent')
nocontent,
  @JsonValue('resetContent')
resetcontent,
  @JsonValue('partialContent')
partialcontent,
  @JsonValue('multipleChoices')
multiplechoices,
  @JsonValue('movedPermanently')
movedpermanently,
  @JsonValue('found')
found,
  @JsonValue('seeOther')
seeother,
  @JsonValue('notModified')
notmodified,
  @JsonValue('useProxy')
useproxy,
  @JsonValue('temporaryRedirect')
temporaryredirect,
  @JsonValue('permanentRedirect')
permanentredirect,
  @JsonValue('badRequest')
badrequest,
  @JsonValue('unauthorized')
unauthorized,
  @JsonValue('paymentRequired')
paymentrequired,
  @JsonValue('forbidden')
forbidden,
  @JsonValue('notFound')
notfound,
  @JsonValue('methodNotAllowed')
methodnotallowed,
  @JsonValue('notAcceptable')
notacceptable,
  @JsonValue('proxyAuthenticationRequired')
proxyauthenticationrequired,
  @JsonValue('requestTimeout')
requesttimeout,
  @JsonValue('conflict')
conflict,
  @JsonValue('gone')
gone,
  @JsonValue('lengthRequired')
lengthrequired,
  @JsonValue('preconditionFailed')
preconditionfailed,
  @JsonValue('contentTooLarge')
contenttoolarge,
  @JsonValue('uriTooLong')
uritoolong,
  @JsonValue('unsupportedMediaType')
unsupportedmediatype,
  @JsonValue('rangeNotSatisfiable')
rangenotsatisfiable,
  @JsonValue('expectationFailed')
expectationfailed,
  @JsonValue('misdirectedRequest')
misdirectedrequest,
  @JsonValue('unprocessableContent')
unprocessablecontent,
  @JsonValue('upgradeRequired')
upgraderequired,
  @JsonValue('internalServerError')
internalservererror,
  @JsonValue('notImplemented')
notimplemented,
  @JsonValue('badGateway')
badgateway,
  @JsonValue('serviceUnavailable')
serviceunavailable,
  @JsonValue('gatewayTimeout')
gatewaytimeout,
  @JsonValue('httpVersionNotSupported')
httpversionnotsupported,
}


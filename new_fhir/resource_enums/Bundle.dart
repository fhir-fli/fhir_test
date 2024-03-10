enum BundleType {
  @JsonValue('document')
document,
  @JsonValue('message')
message,
  @JsonValue('transaction')
transaction,
  @JsonValue('transaction-response')
transactionresponse,
  @JsonValue('batch')
batch,
  @JsonValue('batch-response')
batchresponse,
  @JsonValue('history')
history,
  @JsonValue('searchset')
searchset,
  @JsonValue('collection')
collection,
  @JsonValue('subscription-notification')
subscriptionnotification,
}

enum SearchEntryMode {
  @JsonValue('match')
match,
  @JsonValue('include')
include,
  @JsonValue('outcome')
outcome,
}

enum HttpVerb {
  @JsonValue('GET')
get,
  @JsonValue('HEAD')
head,
  @JsonValue('POST')
post,
  @JsonValue('PUT')
put,
  @JsonValue('DELETE')
delete,
  @JsonValue('PATCH')
patch,
}


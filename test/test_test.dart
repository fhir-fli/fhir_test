import 'package:fhir/r5.dart';

void main() {
  final newResource = Resource.fromJson(resource);
}

final resource = {
  "resourceType": "TestScript",
  "id": "testscript-example-update",
  "url": "http://hl7.org/fhir/TestScript/testscript-example-update",
  "identifier": [
    {
      "system": "urn:ietf:rfc:3986",
      "value": "urn:oid:2.16.840.1.113883.4.642.12.5"
    }
  ],
  "version": "1.0",
  "name": "TestScriptExampleUpdate",
  "title": "TestScript Example Update",
  "status": "draft",
  "experimental": true,
  "date": "2017-01-18",
  "publisher": "HL7",
  "contact": [
    {
      "name": "Support",
      "telecom": [
        {"system": "email", "value": "support@HL7.org", "use": "work"}
      ]
    }
  ],
  "description":
      "TestScript example resource with setup to delete if present and create a new instance of a Patient; and single test definition to update that Patient with various asserts.",
  "jurisdiction": [
    {
      "coding": [
        {
          "system": "urn:iso:std:iso:3166",
          "code": "US",
          "display": "United States of America (the)"
        }
      ]
    }
  ],
  "purpose": "Patient (Conditional) Create, Update, Delete Operations",
  "copyright": "© HL7.org 2011+",
  "metadata": {
    "link": [
      {
        "url": "http://hl7.org/fhir/patient.html",
        "description":
            "Demographics and other administrative information about an individual or animal receiving care or other health-related services."
      }
    ],
    "capability": [
      {
        "required": true,
        "validated": false,
        "description": "Patient Update and Delete Operations",
        "link": [
          "http://hl7.org/fhir/http.html#update",
          "http://hl7.org/fhir/http.html#delete"
        ],
        "capabilities": "http://hl7.org/fhir/CapabilityStatement/example"
      }
    ]
  },
  "fixture": [
    {
      "id": "fixture-patient-create",
      "autocreate": false,
      "autodelete": false,
      "resource": {"reference": "Patient/example", "display": "Peter Chalmers"}
    },
    {
      "id": "fixture-patient-update",
      "autocreate": false,
      "autodelete": false,
      "resource": {"reference": "Patient/pat1", "display": "Donald Duck"}
    }
  ],
  // "profile": ["http://hl7.org/fhir/StructureDefinition/Patient"],
  // "_profile": [
  //   {"id": "patient-profile"}
  // ],
  // "variable": [
  //   {
  //     "name": "createResourceId",
  //     "path": "Patient/id",
  //     "sourceId": "fixture-patient-create"
  //   }
  // ],
  // "setup": {
  // "action": [
  //   {
  //     "operation": {
  //       "type": {
  //         "system": "http://hl7.org/fhir/restful-interaction",
  //         "code": "delete"
  //       },
  //       "resource": "Patient",
  //       "label": "SetupDeletePatient",
  //       "description":
  //           "Execute a delete operation to insure the patient does not exist on the server.",
  //       "accept": "xml",
  //       "encodeRequestUrl": true,
  //       "params": r"/${createResourceId}"
  //     }
  //   },
  //   {
  //     "assert": {
  //       "description":
  //           "Confirm that the returned HTTP status is 200(OK) or 204(No Content).",
  //       "direction": "response",
  //       "operator": "in",
  //       "responseCode": "200,204",
  //       "stopTestOnFail": false,
  //       "warningOnly": false
  //     }
  //   },
  //   {
  //     "operation": {
  //       "type": {
  //         "system": "http://hl7.org/fhir/restful-interaction",
  //         "code": "update"
  //       },
  //       "resource": "Patient",
  //       "label": "SetupCreatePatient",
  //       "description":
  //           "Create patient resource on test server using the contents of fixture-patient-create",
  //       "accept": "xml",
  //       "contentType": "xml",
  //       "encodeRequestUrl": true,
  //       "params": r"/${createResourceId}",
  //       "sourceId": "fixture-patient-create"
  //     }
  //   },
  //   {
  //     "assert": {
  //       "description":
  //           "Confirm that the returned HTTP status is 201(Created).",
  //       "direction": "response",
  //       "responseCode": "201",
  //       "stopTestOnFail": false,
  //       "warningOnly": false
  //     }
  //   }
  // ]
  // },
  // "test": [
  // {
  //   "id": "01-UpdatePatient",
  //   "name": "Update Patient",
  //   "description": "Update a Patient and validate response.",
  //   "action": [
  //     {
  //       "operation": {
  //         "type": {
  //           "system": "http://hl7.org/fhir/restful-interaction",
  //           "code": "update"
  //         },
  //         "resource": "Patient",
  //         "label": "SetupUpdatePatient",
  //         "description":
  //             "Update patient resource on test server using the contents of fixture-patient-update",
  //         "accept": "xml",
  //         "contentType": "xml",
  //         "encodeRequestUrl": true,
  //         "params": r"/${createResourceId}",
  //         "sourceId": "fixture-patient-update"
  //       }
  //     },
  //     {
  //       "assert": {
  //         "description": "Confirm that the returned HTTP status is 200(OK).",
  //         "response": "okay",
  //         "stopTestOnFail": false,
  //         "warningOnly": false
  //       }
  //     },
  //     {
  //       "assert": {
  //         "description": "Confirm that the returned format is XML.",
  //         "contentType": "xml",
  //         "stopTestOnFail": false,
  //         "warningOnly": false
  //       }
  //     },
  //     {
  //       "assert": {
  //         "description":
  //             "Confirm that the returned HTTP Header Last-Modified is present. Warning only as the server might not support versioning.",
  //         "headerField": "Last-Modified",
  //         "operator": "notEmpty",
  //         "stopTestOnFail": false,
  //         "warningOnly": true
  //       }
  //     }
  //   ]
  // }
  // ]
};

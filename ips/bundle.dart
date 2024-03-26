import 'package:fhir_r4/fhir_r4.dart';

final bundle = Bundle.fromJson({
  "resourceType": "Bundle",
  "id": "2788423",
  "meta": {
    "versionId": "1",
    "lastUpdated": "2022-01-18T14:01:39.591+00:00",
    "source": "#J4AV1WiHSxOoH2or"
  },
  "identifier": {
    "system": "http://system-to-be-defined.com",
    "value": "63fef90a-be11-4ddf-aece-d77da15c4f20"
  },
  "type": "document",
  "timestamp": "2022-01-18T14:01:30+00:00",
  "entry": [
    {
      "fullUrl": "urn:uuid:212fdc76-ccc3-40bf-8cdd-82f2ef88bd7b",
      "resource": {
        "resourceType": "Composition",
        "language": "de-AT",
        "status": "preliminary",
        "type": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "60591-5",
              "display": "Patient summary Document"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "date": "2022-01-18T14:01:30+00:00",
        "author": [
          {"reference": "urn:uuid:75db30ee-7028-486c-929a-c5126837f472"}
        ],
        "title": "International Patient Summary",
        "section": [
          {
            "title": "Active Problems Section",
            "code": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "11450-4",
                  "display": "Problem list Reported"
                }
              ]
            },
            "text": {
              "status": "empty",
              "div":
                  "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>narrative needs to be generated</p></div>"
            },
            "entry": [
              {"reference": "urn:uuid:72e85b9d-004d-4104-b166-86d129948bae"},
              {"reference": "urn:uuid:b2e8b2b6-c8f3-4973-906c-bdad9b6a2761"}
            ]
          },
          {
            "title": "Vital Signs Section",
            "code": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "8716-3",
                  "display": "Vital signs"
                }
              ]
            },
            "text": {
              "status": "empty",
              "div":
                  "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>narrative needs to be generated</p></div>"
            },
            "entry": [
              {"reference": "urn:uuid:93b569df-7729-43df-a3b5-33dc9b3e5dbb"},
              {"reference": "urn:uuid:746ccfff-f09e-475f-b435-c50b33a5b593"},
              {"reference": "urn:uuid:846b4159-5e4f-4b13-869d-62a7667899bf"},
              {"reference": "urn:uuid:95e687a5-c1ad-49f2-a7be-75948c29c886"},
              {"reference": "urn:uuid:c1a6ac94-b532-46d5-b8b2-f2856c32bf7a"},
              {"reference": "urn:uuid:8e7bda20-23c1-4e6d-a5f1-31c48c68f7ad"}
            ]
          },
          {
            "title": "Medication",
            "code": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "10160-0",
                  "display": "Hx of Medication use"
                }
              ]
            },
            "text": {
              "status": "empty",
              "div":
                  "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>narrative needs to be generated</p></div>"
            },
            "entry": [
              {"reference": "urn:uuid:acac4c94-a752-4cf5-9a6b-0d84237d5076"},
              {"reference": "urn:uuid:dc4ba414-dec7-46f8-b1e5-aab6a9605f18"},
              {"reference": "urn:uuid:3d727e26-98f5-444c-9df3-ab633a2ee6ec"},
              {"reference": "urn:uuid:72904e55-7029-413d-9545-a54dc8a38aca"},
              {"reference": "urn:uuid:f154b186-b08a-44ca-9643-93a7ffec12c7"},
              {"reference": "urn:uuid:608fee98-529e-4eb7-8b11-ae65ed5634ca"},
              {"reference": "urn:uuid:1e6f39d9-1c0f-4a93-b2b3-4a8f99952b14"}
            ]
          },
          {
            "title": "Results",
            "code": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "30954-2",
                  "display":
                      "Relevant diagnostic tests/laboratory data Narrative"
                }
              ]
            },
            "text": {
              "status": "empty",
              "div":
                  "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>narrative needs to be generated</p></div>"
            },
            "entry": [
              {"reference": "urn:uuid:09ca1307-e6a0-4842-a64b-13dc7ab2f6ff"},
              {"reference": "urn:uuid:8cf144d9-1d87-4303-9d40-c75ada7d0282"},
              {"reference": "urn:uuid:1b47af5f-dad2-40c3-afcd-ae1d7602002a"},
              {"reference": "urn:uuid:3202055f-c331-424f-bd37-7c16e8313323"},
              {"reference": "urn:uuid:cf953066-ed0a-48d5-895f-2ef3172d9f2c"}
            ]
          },
          {
            "title": "Allergies and Intolerances",
            "code": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "48765-2",
                  "display": "Allergies and adverse reactions Document"
                }
              ]
            },
            "text": {
              "status": "empty",
              "div":
                  "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>narrative needs to be generated</p></div>"
            },
            "entry": [
              {"reference": "urn:uuid:768eb9cb-00f3-4ab1-bfc2-ff835cb3b89b"}
            ]
          },
          {
            "title": "Immunizations",
            "code": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "11369-6",
                  "display": "Hx of Immunization"
                }
              ]
            },
            "text": {
              "status": "empty",
              "div":
                  "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>narrative needs to be generated</p></div>"
            },
            "entry": [
              {"reference": "urn:uuid:a3cc0d2f-55b7-4354-840a-4738e395ae2e"},
              {"reference": "urn:uuid:a9660d56-6c4a-42fe-a661-1842e5449dfe"},
              {"reference": "urn:uuid:d1f9b76c-5e99-41cb-a304-5d49ed94f829"}
            ]
          },
          {
            "title": "History of Past Illness",
            "code": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "11348-0",
                  "display": "Hx of Past illness"
                }
              ]
            },
            "text": {
              "status": "empty",
              "div":
                  "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>narrative needs to be generated</p></div>"
            },
            "entry": [
              {"reference": "urn:uuid:80579ab0-45f9-45e2-bc38-90341f06229d"},
              {"reference": "urn:uuid:5c6fece7-c553-41e0-a69f-4d22e2769547"},
              {"reference": "urn:uuid:c6ec9665-6162-495f-b9f7-e013aa387040"}
            ]
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
      "resource": {
        "resourceType": "Patient",
        "text": {
          "status": "generated",
          "div":
              "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div class=\"hapiHeaderText\">Dr. Maria Johanna <b>MUSTERFRAU </b></div><table class=\"hapiPropertyTable\"><tbody><tr><td>Identifier</td><td>1111241261</td></tr><tr><td>Address</td><td><span>Musterstraße 13a </span><br/><span>Eisenstadt </span><span>Burgenland </span><span>AUT </span></td></tr><tr><td>Date of birth</td><td><span>24 December 1961</span></td></tr></tbody></table></div>"
        },
        "identifier": [
          {
            "use": "usual",
            "type": {
              "coding": [
                {
                  "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                  "code": "SB",
                  "display": "Social Beneficiary Identifier"
                }
              ]
            },
            "system": "urn:oid:1.2.40.0.10.1.4.3.1",
            "value": "1111241261",
            "assigner": {
              "display":
                  "Dachverband der �sterreichischen Sozialversicherungstr�ger"
            }
          }
        ],
        "name": [
          {
            "family": "Musterfrau",
            "given": ["Maria", "Johanna"],
            "prefix": ["Dr."]
          }
        ],
        "telecom": [
          {"system": "phone", "value": "+43.2682.40400", "use": "home"},
          {"system": "phone", "value": "+43.664.1234567", "use": "mobile"},
          {"system": "email", "value": "musterfrau@provider.at"}
        ],
        "gender": "female",
        "birthDate": "1961-12-24",
        "address": [
          {
            "use": "home",
            "line": ["Musterstraße 13a"],
            "city": "Eisenstadt",
            "state": "Burgenland",
            "postalCode": "7000",
            "country": "AUT"
          }
        ],
        "maritalStatus": {
          "coding": [
            {
              "system":
                  "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
              "code": "M",
              "display": "Married"
            }
          ]
        }
      }
    },
    {
      "fullUrl": "urn:uuid:75db30ee-7028-486c-929a-c5126837f472",
      "resource": {
        "resourceType": "Device",
        "text": {
          "status": "additional",
          "div":
              "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>This Device generates an IPS FHIR Document from in production used ELGA CDA</p></div>"
        },
        "manufacturer": "<INSERT MANUFACTURER NAME HERE>",
        "deviceName": [
          {"name": "IPS Generator", "type": "user-friendly-name"}
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:72e85b9d-004d-4104-b166-86d129948bae",
      "resource": {
        "resourceType": "Condition",
        "clinicalStatus": {
          "coding": [
            {
              "system":
                  "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code": "active"
            }
          ]
        },
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/condition-category",
                "code": "problem-list-item",
                "display": "Problem List Item"
              },
              {
                "system": "http://loinc.org",
                "code": "75326-9",
                "display": "Problem"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.3.1.2.99.8888",
              "code": "50052",
              "display": "Körperliche Mobilität, beeinträchtigt"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "onsetDateTime": "2013-01-11"
      }
    },
    {
      "fullUrl": "urn:uuid:b2e8b2b6-c8f3-4973-906c-bdad9b6a2761",
      "resource": {
        "resourceType": "Condition",
        "clinicalStatus": {
          "coding": [
            {
              "system":
                  "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code": "active"
            }
          ]
        },
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/condition-category",
                "code": "problem-list-item",
                "display": "Problem List Item"
              },
              {
                "system": "http://loinc.org",
                "code": "75326-9",
                "display": "Problem"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "urn:oid:2.16.840.1.113883.6.96",
              "code": "36653000",
              "display": "Röteln"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "onsetDateTime": "2016-03"
      }
    },
    {
      "fullUrl": "urn:uuid:93b569df-7729-43df-a3b5-33dc9b3e5dbb",
      "resource": {
        "resourceType": "Observation",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "vital-signs",
                "display": "Vital Signs"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "8867-4",
              "display": "Heart Beat"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectivePeriod": {
          "start": "2016-07-30T08:30:00+01:00",
          "end": "2016-07-30T08:35:00+01:00"
        },
        "valueQuantity": {"value": 60, "unit": "/min"}
      }
    },
    {
      "fullUrl": "urn:uuid:746ccfff-f09e-475f-b435-c50b33a5b593",
      "resource": {
        "resourceType": "Observation",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "vital-signs",
                "display": "Vital Signs"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "8480-6",
              "display": "Systolic blood pressure"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectivePeriod": {
          "start": "2016-07-30T08:30:00+01:00",
          "end": "2016-07-30T08:35:00+01:00"
        },
        "valueQuantity": {"value": 110, "unit": "mm[Hg]"}
      }
    },
    {
      "fullUrl": "urn:uuid:846b4159-5e4f-4b13-869d-62a7667899bf",
      "resource": {
        "resourceType": "Observation",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "vital-signs",
                "display": "Vital Signs"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "8462-4",
              "display": "Diastolic blood pressure"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectivePeriod": {
          "start": "2016-07-30T08:30:00+01:00",
          "end": "2016-07-30T08:35:00+01:00"
        },
        "valueQuantity": {"value": 70, "unit": "mm[Hg]"}
      }
    },
    {
      "fullUrl": "urn:uuid:95e687a5-c1ad-49f2-a7be-75948c29c886",
      "resource": {
        "resourceType": "Observation",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "vital-signs",
                "display": "Vital Signs"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "8867-4",
              "display": "Heart Beat"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-07-30T08:30:00+01:00",
        "valueQuantity": {"value": 59, "unit": "/min"}
      }
    },
    {
      "fullUrl": "urn:uuid:c1a6ac94-b532-46d5-b8b2-f2856c32bf7a",
      "resource": {
        "resourceType": "Observation",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "vital-signs",
                "display": "Vital Signs"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "8480-6",
              "display": "Systolic blood pressure"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-07-30T08:30:00+01:00",
        "valueQuantity": {"value": 117, "unit": "mm[Hg]"}
      }
    },
    {
      "fullUrl": "urn:uuid:8e7bda20-23c1-4e6d-a5f1-31c48c68f7ad",
      "resource": {
        "resourceType": "Observation",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "vital-signs",
                "display": "Vital Signs"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "8462-4",
              "display": "Diastolic blood pressure"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-07-30T08:30:00+01:00",
        "valueQuantity": {"value": 64, "unit": "mm[Hg]"}
      }
    },
    {
      "fullUrl": "urn:uuid:acac4c94-a752-4cf5-9a6b-0d84237d5076",
      "resource": {
        "resourceType": "MedicationStatement",
        "status": "unknown",
        "medicationReference": {
          "reference": "urn:uuid:1d573194-55cc-43fd-b240-780144b2c0dc"
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2015-08-25T10:31:58+02:00",
        "dateAsserted": "2015-08-25T10:31:56+02:00",
        "informationSource": {
          "reference": "urn:uuid:293fcf4c-ee23-459c-80e6-90f331a0d190"
        },
        "dosage": [
          {
            "timing": {
              "repeat": {"period": 1, "periodUnit": "d"}
            },
            "route": {
              "coding": [
                {
                  "system": "urn:oid:1.2.40.0.10.1.4.3.4.3.4",
                  "code": "100000073619",
                  "display": "zum Einnehmen"
                }
              ]
            },
            "doseAndRate": [
              {
                "doseQuantity": {"value": 4}
              }
            ]
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:293fcf4c-ee23-459c-80e6-90f331a0d190",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.3.4.5",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital",
        "address": [
          {
            "line": ["Hauptstraße 12"],
            "city": "Wien",
            "postalCode": "21569",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:1d573194-55cc-43fd-b240-780144b2c0dc",
      "resource": {
        "resourceType": "Medication",
        "text": {
          "status": "generated",
          "div":
              "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div class=\"hapiHeaderText\"> ASPIRIN TBL 500MG </div></div>"
        },
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.4.16",
              "code": "1255446",
              "display": "ASPIRIN TBL 500MG"
            },
            {
              "system": "urn:oid:1.2.40.0.34.4.17",
              "code": "3155",
              "display": "Aspirin 500 mg Tabletten"
            }
          ]
        },
        "form": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.10.1.4.3.4.3.5",
              "code": "100000073933",
              "display": "Tablette"
            }
          ]
        },
        "amount": {
          "numerator": {
            "value": 50,
            "unit": "{Number}",
            "system": "http://unitsofmeasure.org"
          },
          "denominator": {"value": 1}
        },
        "ingredient": [
          {
            "itemCodeableConcept": {
              "coding": [
                {
                  "system": "urn:oid:2.16.840.1.113883.6.73",
                  "code": "N02BA01",
                  "display": "Acetylsalicylsäure"
                },
                {
                  "system": "urn:oid:1.2.40.0.34.5.156",
                  "code": "100000124205",
                  "display": "ACETYLSALICYLSÄURE"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:dc4ba414-dec7-46f8-b1e5-aab6a9605f18",
      "resource": {
        "resourceType": "MedicationStatement",
        "status": "unknown",
        "medicationReference": {
          "reference": "urn:uuid:254cf729-7a5d-4e8d-9252-7f1b558e2952"
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectivePeriod": {
          "start": "2014-05-05T00:00:00+02:00",
          "end": "2014-05-10T12:12:00+02:00"
        },
        "dateAsserted": "2015-08-25T10:31:56+02:00",
        "informationSource": {
          "reference": "urn:uuid:3bc24bfe-51dd-45fd-9aae-d7a24247f6c4"
        },
        "dosage": [
          {
            "timing": {
              "repeat": {"period": 1, "periodUnit": "d"}
            },
            "route": {
              "coding": [
                {
                  "system": "urn:oid:1.2.40.0.10.1.4.3.4.3.4",
                  "code": "100000073619",
                  "display": "zum Einnehmen"
                }
              ]
            },
            "doseAndRate": [
              {
                "doseQuantity": {
                  "value": 2,
                  "unit": "mL",
                  "system": "http://unitsofmeasure.org",
                  "code": "mL"
                }
              }
            ]
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:3bc24bfe-51dd-45fd-9aae-d7a24247f6c4",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.3.4.5",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital",
        "address": [
          {
            "line": ["Hauptstraße 12"],
            "city": "Wien",
            "postalCode": "21569",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:254cf729-7a5d-4e8d-9252-7f1b558e2952",
      "resource": {
        "resourceType": "Medication",
        "text": {
          "status": "generated",
          "div":
              "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div class=\"hapiHeaderText\"> ASPIRIN TBL 500MG </div></div>"
        },
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.4.16",
              "code": "1255446",
              "display": "ASPIRIN TBL 500MG"
            },
            {
              "system": "urn:oid:1.2.40.0.34.4.17",
              "code": "3155",
              "display": "Aspirin 500 mg Tabletten"
            }
          ]
        },
        "form": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.10.1.4.3.4.3.5",
              "code": "100000073933",
              "display": "Tablette"
            }
          ]
        },
        "amount": {
          "numerator": {
            "value": 50,
            "unit": "{Number}",
            "system": "http://unitsofmeasure.org"
          },
          "denominator": {"value": 1}
        },
        "ingredient": [
          {
            "itemCodeableConcept": {
              "coding": [
                {
                  "system": "urn:oid:2.16.840.1.113883.6.73",
                  "code": "N02BA01",
                  "display": "Acetylsalicylsäure"
                },
                {
                  "system": "urn:oid:1.2.40.0.34.5.156",
                  "code": "100000124205",
                  "display": "ACETYLSALICYLSÄURE"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:3d727e26-98f5-444c-9df3-ab633a2ee6ec",
      "resource": {
        "resourceType": "MedicationStatement",
        "status": "unknown",
        "medicationReference": {
          "reference": "urn:uuid:56194c09-cfdb-4944-8853-bbae6c8f8404"
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectivePeriod": {
          "extension": [
            {
              "url":
                  "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
              "valueCode": "unknown"
            }
          ]
        },
        "dateAsserted": "2015-08-25T10:31:56+02:00",
        "informationSource": {
          "reference": "urn:uuid:37f11d3e-6daf-40a2-adb7-60ed467fbeaa"
        },
        "dosage": [
          {
            "route": {
              "coding": [
                {
                  "system": "urn:oid:1.2.40.0.10.1.4.3.4.3.4",
                  "code": "100000073619",
                  "display": "zum Einnehmen"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:37f11d3e-6daf-40a2-adb7-60ed467fbeaa",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.3.4.5",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital",
        "address": [
          {
            "line": ["Hauptstraße 12"],
            "city": "Wien",
            "postalCode": "21569",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:56194c09-cfdb-4944-8853-bbae6c8f8404",
      "resource": {
        "resourceType": "Medication",
        "text": {
          "status": "generated",
          "div":
              "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div class=\"hapiHeaderText\"> ASPIRIN TBL 500MG </div></div>"
        },
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.4.16",
              "code": "1255446",
              "display": "ASPIRIN TBL 500MG"
            },
            {
              "system": "urn:oid:1.2.40.0.34.4.17",
              "code": "3155",
              "display": "Aspirin 500 mg Tabletten"
            }
          ]
        },
        "form": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.10.1.4.3.4.3.5",
              "code": "100000073933",
              "display": "Tablette"
            }
          ]
        },
        "amount": {
          "numerator": {
            "value": 50,
            "unit": "{Number}",
            "system": "http://unitsofmeasure.org"
          },
          "denominator": {"value": 1}
        },
        "ingredient": [
          {
            "itemCodeableConcept": {
              "coding": [
                {
                  "system": "urn:oid:2.16.840.1.113883.6.73",
                  "code": "N02BA01",
                  "display": "Acetylsalicylsäure"
                },
                {
                  "system": "urn:oid:1.2.40.0.34.5.156",
                  "code": "100000124205",
                  "display": "ACETYLSALICYLSÄURE"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:72904e55-7029-413d-9545-a54dc8a38aca",
      "resource": {
        "resourceType": "MedicationStatement",
        "status": "unknown",
        "medicationReference": {
          "reference": "urn:uuid:75e00014-e2f7-4312-b85d-18fd5adf2fa1"
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2015-08-25T10:31:59+02:00",
        "dateAsserted": "2015-08-25T10:31:56+02:00",
        "informationSource": {
          "reference": "urn:uuid:6ab6a837-151b-47d5-8fb1-2571d5724263"
        },
        "dosage": [
          {
            "timing": {
              "repeat": {"period": 2, "periodUnit": "wk"}
            },
            "route": {
              "coding": [
                {
                  "system": "urn:oid:1.2.40.0.10.1.4.3.4.3.4",
                  "code": "100000073619",
                  "display": "zum Einnehmen"
                }
              ]
            },
            "doseAndRate": [
              {
                "doseQuantity": {"value": 10}
              }
            ]
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:6ab6a837-151b-47d5-8fb1-2571d5724263",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.3.4.5",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital",
        "address": [
          {
            "line": ["Hauptstraße 12"],
            "city": "Wien",
            "postalCode": "21569",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:75e00014-e2f7-4312-b85d-18fd5adf2fa1",
      "resource": {
        "resourceType": "Medication",
        "text": {
          "status": "generated",
          "div":
              "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div class=\"hapiHeaderText\"> ASPIRIN TBL 500MG </div></div>"
        },
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.4.16",
              "code": "1255446",
              "display": "ASPIRIN TBL 500MG"
            },
            {
              "system": "urn:oid:1.2.40.0.34.4.17",
              "code": "3155",
              "display": "Aspirin 500 mg Tabletten"
            }
          ]
        },
        "form": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.10.1.4.3.4.3.5",
              "code": "100000073933",
              "display": "Tablette"
            }
          ]
        },
        "amount": {
          "numerator": {
            "value": 50,
            "unit": "{Number}",
            "system": "http://unitsofmeasure.org"
          },
          "denominator": {"value": 1}
        },
        "ingredient": [
          {
            "itemCodeableConcept": {
              "coding": [
                {
                  "system": "urn:oid:2.16.840.1.113883.6.73",
                  "code": "N02BA01",
                  "display": "Acetylsalicylsäure"
                },
                {
                  "system": "urn:oid:1.2.40.0.34.5.156",
                  "code": "100000124205",
                  "display": "ACETYLSALICYLSÄURE"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:f154b186-b08a-44ca-9643-93a7ffec12c7",
      "resource": {
        "resourceType": "MedicationStatement",
        "status": "unknown",
        "medicationReference": {
          "reference": "urn:uuid:9084eb74-adcb-4c5d-871d-305fed95b3b1"
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectivePeriod": {
          "extension": [
            {
              "url":
                  "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
              "valueCode": "unknown"
            }
          ]
        },
        "dateAsserted": "2015-08-25T10:32:03+02:00",
        "informationSource": {
          "reference": "urn:uuid:b287bacb-cbcb-466b-afbf-dd1d5b83d720"
        },
        "dosage": [
          {
            "route": {
              "coding": [
                {
                  "system": "urn:oid:1.2.40.0.10.1.4.3.4.3.4",
                  "code": "100000073619",
                  "display": "zum Einnehmen"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:b287bacb-cbcb-466b-afbf-dd1d5b83d720",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.3.4.5",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital",
        "address": [
          {
            "line": ["Hauptstraße 12"],
            "city": "Wien",
            "postalCode": "21569",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:9084eb74-adcb-4c5d-871d-305fed95b3b1",
      "resource": {
        "resourceType": "Medication",
        "text": {
          "status": "generated",
          "div":
              "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div class=\"hapiHeaderText\"> ASPIRIN TBL 500MG </div></div>"
        },
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.4.16",
              "code": "1255446",
              "display": "ASPIRIN TBL 500MG"
            },
            {
              "system": "urn:oid:1.2.40.0.34.4.17",
              "code": "3155",
              "display": "Aspirin 500 mg Tabletten"
            }
          ]
        },
        "form": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.10.1.4.3.4.3.5",
              "code": "100000073933",
              "display": "Tablette"
            }
          ]
        },
        "amount": {
          "numerator": {
            "value": 50,
            "unit": "{Number}",
            "system": "http://unitsofmeasure.org"
          },
          "denominator": {"value": 1}
        },
        "ingredient": [
          {
            "itemCodeableConcept": {
              "coding": [
                {
                  "system": "urn:oid:2.16.840.1.113883.6.73",
                  "code": "N02BA01",
                  "display": "Acetylsalicylsäure"
                },
                {
                  "system": "urn:oid:1.2.40.0.34.5.156",
                  "code": "100000124205",
                  "display": "ACETYLSALICYLSÄURE"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:608fee98-529e-4eb7-8b11-ae65ed5634ca",
      "resource": {
        "resourceType": "MedicationStatement",
        "status": "unknown",
        "medicationReference": {
          "reference": "urn:uuid:ad00482b-092e-4540-8f9e-379c1143c8ff"
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectivePeriod": {
          "start": "2014-05-05T00:00:00+02:00",
          "end": "2014-05-10T12:12:00+02:00"
        },
        "dateAsserted": "2015-08-25T10:32:07+02:00",
        "informationSource": {
          "reference": "urn:uuid:a6927094-cbff-48b0-8796-f5c8e6463f32"
        },
        "dosage": [
          {
            "timing": {
              "repeat": {"period": 1, "periodUnit": "d"}
            },
            "route": {
              "coding": [
                {
                  "system": "urn:oid:1.2.40.0.10.1.4.3.4.3.4",
                  "code": "100000073619",
                  "display": "zum Einnehmen"
                }
              ]
            },
            "doseAndRate": [
              {
                "doseQuantity": {
                  "value": 2,
                  "unit": "mL",
                  "system": "http://unitsofmeasure.org",
                  "code": "mL"
                }
              }
            ]
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:a6927094-cbff-48b0-8796-f5c8e6463f32",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.3.4.5",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital",
        "address": [
          {
            "line": ["Hauptstraße 12"],
            "city": "Wien",
            "postalCode": "21569",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:ad00482b-092e-4540-8f9e-379c1143c8ff",
      "resource": {
        "resourceType": "Medication",
        "text": {
          "status": "generated",
          "div":
              "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div class=\"hapiHeaderText\"> ASPIRIN TBL 500MG </div></div>"
        },
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.4.16",
              "code": "1255446",
              "display": "ASPIRIN TBL 500MG"
            },
            {
              "system": "urn:oid:1.2.40.0.34.4.17",
              "code": "3155",
              "display": "Aspirin 500 mg Tabletten"
            }
          ]
        },
        "form": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.10.1.4.3.4.3.5",
              "code": "100000073933",
              "display": "Tablette"
            }
          ]
        },
        "amount": {
          "numerator": {
            "value": 50,
            "unit": "{Number}",
            "system": "http://unitsofmeasure.org"
          },
          "denominator": {"value": 1}
        },
        "ingredient": [
          {
            "itemCodeableConcept": {
              "coding": [
                {
                  "system": "urn:oid:2.16.840.1.113883.6.73",
                  "code": "N02BA01",
                  "display": "Acetylsalicylsäure"
                },
                {
                  "system": "urn:oid:1.2.40.0.34.5.156",
                  "code": "100000124205",
                  "display": "ACETYLSALICYLSÄURE"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:1e6f39d9-1c0f-4a93-b2b3-4a8f99952b14",
      "resource": {
        "resourceType": "MedicationStatement",
        "status": "unknown",
        "medicationReference": {
          "reference": "urn:uuid:fe1f42dd-9bb9-469d-9963-f38c3eafd8c2"
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectivePeriod": {
          "extension": [
            {
              "url":
                  "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
              "valueCode": "unknown"
            }
          ]
        },
        "dosage": [
          {
            "timing": {
              "repeat": {"period": 3, "periodUnit": "d"}
            },
            "doseAndRate": [
              {
                "doseQuantity": {"value": 1}
              }
            ]
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:fe1f42dd-9bb9-469d-9963-f38c3eafd8c2",
      "resource": {
        "resourceType": "Medication",
        "text": {
          "status": "generated",
          "div":
              "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div class=\"hapiHeaderText\"> Ciproxin </div></div>"
        },
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.4.16",
              "code": "1592830",
              "display": "Ciproxin"
            }
          ]
        },
        "form": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.10.1.4.3.4.3.5",
              "code": "100000073665",
              "display": "Filmtablette"
            }
          ]
        },
        "amount": {
          "numerator": {"value": 30},
          "denominator": {"value": 1}
        },
        "ingredient": [
          {
            "itemCodeableConcept": {
              "coding": [
                {
                  "system": "urn:oid:2.16.840.1.113883.6.73",
                  "code": "J01MA02",
                  "display": "Ciprofloxacin hydrochloride"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:09ca1307-e6a0-4842-a64b-13dc7ab2f6ff",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.5.11",
              "code": "300",
              "display": "Hämatologie"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:b7d089d1-224b-4471-b822-87502669b546"}
        ],
        "hasMember": [
          {"reference": "urn:uuid:5284c8f9-4310-47b8-9f4d-2ea603a81725"},
          {"reference": "urn:uuid:23d4083d-9c6e-441a-b5e0-a4961928008b"}
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:5284c8f9-4310-47b8-9f4d-2ea603a81725",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.5.11",
              "code": "03010",
              "display": "Blutbild"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:e123673f-e50d-4397-a7e0-2184e85d8820"}
        ],
        "hasMember": [
          {"reference": "urn:uuid:3f7b7993-37bb-4638-9b30-0e2b384f250a"},
          {"reference": "urn:uuid:d67feef6-18bb-4cec-8e87-9fd8a901f7c6"},
          {"reference": "urn:uuid:e9df73a7-b467-4a60-afb1-ec3660487817"},
          {"reference": "urn:uuid:136cd13b-1df3-4e31-bc2b-28f338882676"},
          {"reference": "urn:uuid:35bba907-aa34-4dc8-9c0c-a8169f1be5f1"},
          {"reference": "urn:uuid:3cc5231a-66df-45ad-a920-2880d069a0e3"},
          {"reference": "urn:uuid:2c2b9102-9659-41d8-83cb-42d7a9dae552"},
          {"reference": "urn:uuid:c505a5bd-fa77-46f9-9327-b0123ca10718"},
          {"reference": "urn:uuid:e9ef129a-bf80-40ed-a3f7-c6c532a76b58"}
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:3f7b7993-37bb-4638-9b30-0e2b384f250a",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "26464-8",
              "display": "Leukozyten"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:4d29a2ef-2554-44d8-99de-e49f51b38524"}
        ],
        "valueQuantity": {
          "value": 26,
          "unit": "10*9/L",
          "system": "http://unitsofmeasure.org",
          "code": "10*9/L"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "H",
                "display": "High"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 4.0,
              "unit": "10*9/L",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 10.0,
              "unit": "10*9/L",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:4d29a2ef-2554-44d8-99de-e49f51b38524",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:d67feef6-18bb-4cec-8e87-9fd8a901f7c6",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "26515-7",
              "display": "Thrombozyten"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:d70e2232-03f5-4d2e-b427-1b269e82ffc8"}
        ],
        "valueQuantity": {
          "value": 165,
          "unit": "10*9/L",
          "system": "http://unitsofmeasure.org",
          "code": "10*9/L"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 150,
              "unit": "10*9/L",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 360,
              "unit": "10*9/L",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:d70e2232-03f5-4d2e-b427-1b269e82ffc8",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:e9df73a7-b467-4a60-afb1-ec3660487817",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "26453-1",
              "display": "Erythrozyten"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:5d32119e-fc05-426e-a623-80d2ddccde3c"}
        ],
        "valueQuantity": {
          "value": 5.39,
          "unit": "10*12/L",
          "system": "http://unitsofmeasure.org",
          "code": "10*12/L"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 4.6,
              "unit": "10*12/L",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 6.2,
              "unit": "10*12/L",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:5d32119e-fc05-426e-a623-80d2ddccde3c",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:136cd13b-1df3-4e31-bc2b-28f338882676",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "718-7",
              "display": "Hämoglobin"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:d0ce2612-40f4-4f32-86f8-0e021ef5acb7"}
        ],
        "valueQuantity": {
          "value": 16.0,
          "unit": "g/dL",
          "system": "http://unitsofmeasure.org",
          "code": "g/dL"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 14.0,
              "unit": "g/dL",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 18.0,
              "unit": "g/dL",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:d0ce2612-40f4-4f32-86f8-0e021ef5acb7",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:35bba907-aa34-4dc8-9c0c-a8169f1be5f1",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "20570-8",
              "display": "Hämatokrit"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:61c3ae79-8b4f-4a9a-870a-348681a1bb3f"}
        ],
        "valueQuantity": {
          "value": 49.7,
          "unit": "%",
          "system": "http://unitsofmeasure.org",
          "code": "%"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "H",
                "display": "High"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 43.0,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 49.0,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:61c3ae79-8b4f-4a9a-870a-348681a1bb3f",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:3cc5231a-66df-45ad-a920-2880d069a0e3",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "28539-5",
              "display": "MCH [Entitic mass]"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:67cd1919-349e-4c48-954e-deac4881d3bd"}
        ],
        "valueQuantity": {
          "value": 29.7,
          "unit": "pg",
          "system": "http://unitsofmeasure.org",
          "code": "pg"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 27.0,
              "unit": "pg",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 33.0,
              "unit": "pg",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:67cd1919-349e-4c48-954e-deac4881d3bd",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:2c2b9102-9659-41d8-83cb-42d7a9dae552",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "30428-7",
              "display": "MCV [Entitic volume]"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:e0a07ecb-34ff-409f-981c-ed2a11bf4b32"}
        ],
        "valueQuantity": {
          "value": 92.2,
          "unit": "fL",
          "system": "http://unitsofmeasure.org",
          "code": "fL"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 85.0,
              "unit": "fL",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 95.0,
              "unit": "fL",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:e0a07ecb-34ff-409f-981c-ed2a11bf4b32",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:c505a5bd-fa77-46f9-9327-b0123ca10718",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "28540-3",
              "display": "MCHC [Mass/volume]"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:ebb24c6a-78f7-4656-b197-8fc7ab7ffc36"}
        ],
        "valueQuantity": {
          "value": 32.2,
          "unit": "g/dL",
          "system": "http://unitsofmeasure.org",
          "code": "g/dL"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 28.0,
              "unit": "g/dL",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 33.0,
              "unit": "g/dL",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:ebb24c6a-78f7-4656-b197-8fc7ab7ffc36",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:e9ef129a-bf80-40ed-a3f7-c6c532a76b58",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.5.11",
              "code": "V00042",
              "display": "Akt.Lymphoz.rel.mi."
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:72a65f02-4007-464b-af7e-ca9fb2f6bc94"}
        ],
        "valueQuantity": {
          "value": 7,
          "unit": "%",
          "system": "http://unitsofmeasure.org",
          "code": "%"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 0,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 10,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:72a65f02-4007-464b-af7e-ca9fb2f6bc94",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:e123673f-e50d-4397-a7e0-2184e85d8820",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:23d4083d-9c6e-441a-b5e0-a4961928008b",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.5.11",
              "code": "03020",
              "display": "Knochenmark Morphologie"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:ee1b0014-3d6e-42f0-a4fb-35b5c716661e"}
        ],
        "hasMember": [
          {"reference": "urn:uuid:6db2b3a9-714d-4ac4-9e6e-d5bdb9941519"},
          {"reference": "urn:uuid:d1a876b5-c9e7-410f-8290-457f4b003bc0"},
          {"reference": "urn:uuid:bb8508f1-93a6-4fdb-a435-1689e875cc37"}
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:6db2b3a9-714d-4ac4-9e6e-d5bdb9941519",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "11108-8",
              "display": "Lymphozyten rel. /KM"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:742c4fd1-8e97-4fb9-9e2a-958db7494496"}
        ],
        "valueQuantity": {
          "value": 0.5,
          "unit": "%",
          "system": "http://unitsofmeasure.org",
          "code": "%"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 0.0,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 15.0,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:742c4fd1-8e97-4fb9-9e2a-958db7494496",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:d1a876b5-c9e7-410f-8290-457f4b003bc0",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "11150-0",
              "display": "Blasten rel. /KM"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:04fa1623-ffd8-4b1e-8ac4-884d1f461bcb"}
        ],
        "valueQuantity": {
          "value": 92.5,
          "unit": "%",
          "system": "http://unitsofmeasure.org",
          "code": "%"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "H",
                "display": "High"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 0.0,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 5.0,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:04fa1623-ffd8-4b1e-8ac4-884d1f461bcb",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:bb8508f1-93a6-4fdb-a435-1689e875cc37",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "11152-6",
              "display": "Eosinophils/100 cells in Bone marrow"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:4bd18e15-0a58-436c-9c7c-ca9725ab11d5"}
        ],
        "valueQuantity": {
          "value": 4,
          "unit": "%",
          "system": "http://unitsofmeasure.org",
          "code": "%"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "Normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 0.0,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 7.0,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:4bd18e15-0a58-436c-9c7c-ca9725ab11d5",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:ee1b0014-3d6e-42f0-a4fb-35b5c716661e",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:b7d089d1-224b-4471-b822-87502669b546",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:8cf144d9-1d87-4303-9d40-c75ada7d0282",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.5.11",
              "code": "400",
              "display": "Hämostaseologie"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:c83edc82-d21d-4601-807c-1016845c62f1"}
        ],
        "hasMember": [
          {"reference": "urn:uuid:976a86c8-bd8c-4a91-ab22-2993769a1d47"},
          {"reference": "urn:uuid:92a46455-9074-49ec-b0bb-8ed868eac320"},
          {"reference": "urn:uuid:bb89b82a-9f93-4f5b-a973-293b90db8168"}
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:976a86c8-bd8c-4a91-ab22-2993769a1d47",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.5.11",
              "code": "04140",
              "display": "Hämostaseologie Globaltests"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:50a9e535-8c07-4486-83fa-129b22e6cf1e"}
        ],
        "hasMember": [
          {"reference": "urn:uuid:121b0c93-bf18-4f76-9d95-f0fc36dd1619"},
          {"reference": "urn:uuid:e6b6d1e6-58b8-4daf-90e6-1c7746d4b95e"},
          {"reference": "urn:uuid:fc4e6cf4-a044-477c-8582-1709d18577aa"},
          {"reference": "urn:uuid:56feac54-e14e-4353-9d8d-2766861e4875"},
          {"reference": "urn:uuid:8c515267-6001-4ae0-8877-a49cb00f6b2f"}
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:121b0c93-bf18-4f76-9d95-f0fc36dd1619",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "5894-1",
              "display": "PTZ (Prothrombinz.)"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:5f84e2f3-9ac9-4d27-8d9c-854c33ec7643"}
        ],
        "valueQuantity": {
          "value": 116,
          "unit": "%",
          "system": "http://unitsofmeasure.org",
          "code": "%"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 70,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 130,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:5f84e2f3-9ac9-4d27-8d9c-854c33ec7643",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:e6b6d1e6-58b8-4daf-90e6-1c7746d4b95e",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {"system": "http://loinc.org", "code": "6301-6", "display": "INR"}
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:7b5f2148-1d9b-40d5-a014-7cc80aba20cf"}
        ],
        "valueQuantity": {
          "value": 1.1,
          "unit": "1",
          "system": "http://unitsofmeasure.org",
          "code": "1"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "L",
                "display": "Low"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 2.0,
              "unit": "1",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 3.5,
              "unit": "1",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:7b5f2148-1d9b-40d5-a014-7cc80aba20cf",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:fc4e6cf4-a044-477c-8582-1709d18577aa",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "14979-9",
              "display": "APTT PPP"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:8dcda2dd-9f30-4732-bcd8-2a48b481e4e6"}
        ],
        "valueQuantity": {
          "value": 29.3,
          "unit": "s",
          "system": "http://unitsofmeasure.org",
          "code": "s"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 23.0,
              "unit": "s",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 37.0,
              "unit": "s",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:8dcda2dd-9f30-4732-bcd8-2a48b481e4e6",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:56feac54-e14e-4353-9d8d-2766861e4875",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "27811-9",
              "display": "AT III Aktivität"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:015f9d3f-50e3-48a6-b28a-2542b9801ef8"}
        ],
        "valueQuantity": {
          "value": 101,
          "unit": "%",
          "system": "http://unitsofmeasure.org",
          "code": "%"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 80,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 135,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:015f9d3f-50e3-48a6-b28a-2542b9801ef8",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:8c515267-6001-4ae0-8877-a49cb00f6b2f",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "30240-6",
              "display": "D-Dimer"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:13ce7e46-4d1b-4ddd-b23c-7a63a48a5a22"}
        ],
        "valueQuantity": {
          "value": 0.30,
          "unit": "mg/L",
          "system": "http://unitsofmeasure.org",
          "code": "mg/L"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "high": {
              "value": 0.50,
              "unit": "mg/L",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:13ce7e46-4d1b-4ddd-b23c-7a63a48a5a22",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:50a9e535-8c07-4486-83fa-129b22e6cf1e",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:92a46455-9074-49ec-b0bb-8ed868eac320",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.5.11",
              "code": "04150",
              "display": "Einzelfaktoranalysen"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:913813b9-1d8b-4613-9b72-5abd9c16d26e"}
        ],
        "hasMember": [
          {"reference": "urn:uuid:c04dae12-1d9e-4a7b-a726-e41db99fc9e8"},
          {"reference": "urn:uuid:7ef2bc08-3e6b-492f-896e-ae9c6cdb4379"}
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:c04dae12-1d9e-4a7b-a726-e41db99fc9e8",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "3198-9",
              "display": "Faktor VII Aktivität"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:292b09bc-0bf4-4d02-b949-c1ab97775c22"}
        ],
        "valueQuantity": {
          "value": 104,
          "unit": "%",
          "system": "http://unitsofmeasure.org",
          "code": "%"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 75,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 160,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:292b09bc-0bf4-4d02-b949-c1ab97775c22",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.3.1.999",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Zentrallabor",
        "telecom": [
          {"system": "phone", "value": "+43.1.12345678", "use": "work"}
        ],
        "address": [
          {
            "line": ["Laborpatz 1"],
            "city": "Wien",
            "postalCode": "1210",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:7ef2bc08-3e6b-492f-896e-ae9c6cdb4379",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "3209-4",
              "display": "Faktor VIII Akt."
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:78bcf434-ec68-43dd-afb1-70b412e891f8"}
        ],
        "valueQuantity": {
          "value": 112,
          "unit": "%",
          "system": "http://unitsofmeasure.org",
          "code": "%"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 60,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 160,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:78bcf434-ec68-43dd-afb1-70b412e891f8",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.3.1.999",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Zentrallabor",
        "telecom": [
          {"system": "phone", "value": "+43.1.12345678", "use": "work"}
        ],
        "address": [
          {
            "line": ["Laborpatz 1"],
            "city": "Wien",
            "postalCode": "1210",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:913813b9-1d8b-4613-9b72-5abd9c16d26e",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:bb89b82a-9f93-4f5b-a973-293b90db8168",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.5.11",
              "code": "04160",
              "display": "Thrombophilie Tests"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:02c0050c-6b06-4e1d-9a26-de0439efad88"}
        ],
        "hasMember": [
          {"reference": "urn:uuid:52dee39a-234f-4175-a582-484dc94702db"},
          {"reference": "urn:uuid:5243237d-e8f9-4eb3-95f4-c42b66686a38"}
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:52dee39a-234f-4175-a582-484dc94702db",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "27818-4",
              "display": "Protein C Aktivität"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:0eecde2c-ed8f-4581-9eb9-271aef8ae7ac"}
        ],
        "valueQuantity": {
          "value": 125,
          "unit": "%",
          "system": "http://unitsofmeasure.org",
          "code": "%"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 70,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 140,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:0eecde2c-ed8f-4581-9eb9-271aef8ae7ac",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:5243237d-e8f9-4eb3-95f4-c42b66686a38",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "31102-7",
              "display": "Protein S Aktivität"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:34:06+01:00",
        "performer": [
          {"reference": "urn:uuid:b64c6fc7-fc24-453a-8dc4-acc61836594f"}
        ],
        "valueQuantity": {
          "value": 75,
          "unit": "%",
          "system": "http://unitsofmeasure.org",
          "code": "%"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 60,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 140,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:b64c6fc7-fc24-453a-8dc4-acc61836594f",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:02c0050c-6b06-4e1d-9a26-de0439efad88",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:c83edc82-d21d-4601-807c-1016845c62f1",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:1b47af5f-dad2-40c3-afcd-ae1d7602002a",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.5.11",
              "code": "500",
              "display": "Klinische Chemie"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:47f65361-ea25-466c-a2d2-54d40c78178c"}
        ],
        "hasMember": [
          {"reference": "urn:uuid:fe5c97b8-0933-42e6-8aa4-e9b15b9b2fe9"},
          {"reference": "urn:uuid:5e2db3ff-55f6-42ff-a570-33ed49f19f6b"}
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:fe5c97b8-0933-42e6-8aa4-e9b15b9b2fe9",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.5.11",
              "code": "05180",
              "display": "Klinische Chemie"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:e53ce670-a41f-4795-a196-33d04722acee"}
        ],
        "hasMember": [
          {"reference": "urn:uuid:01973411-10af-470e-b31b-69f2adbff89b"},
          {"reference": "urn:uuid:a5fe02d3-abf7-42b5-85ba-c2d3c484f1cb"},
          {"reference": "urn:uuid:db309359-686a-4cbe-9422-e0fb7fa2d0ae"},
          {"reference": "urn:uuid:4e7f6c13-69e9-4faf-9cda-03236132786e"},
          {"reference": "urn:uuid:08a3079e-ddee-4932-85ea-022f11d31a1a"},
          {"reference": "urn:uuid:a4476ab7-0da5-4a26-b32f-7c72dbd3df11"},
          {"reference": "urn:uuid:54517fd3-db13-4555-bb73-0c316e45073c"},
          {"reference": "urn:uuid:a7ea349e-9ced-44a6-aaff-be56ffa04586"},
          {"reference": "urn:uuid:078730ca-8bac-4f76-9a5d-1e5ee49e889b"},
          {"reference": "urn:uuid:a06b9f78-d9a8-4008-9fa6-38819e03ddc3"},
          {"reference": "urn:uuid:097e2a3f-f1b9-4f10-bdc1-0e7a26b255a0"},
          {"reference": "urn:uuid:253bfee9-7336-45d8-b57f-1312715132b2"},
          {"reference": "urn:uuid:46adb3a5-cd07-4a5f-87c3-3c3cb912905e"},
          {"reference": "urn:uuid:610dbaa2-dfcf-44eb-8f5d-4972999f2505"},
          {"reference": "urn:uuid:3a340371-6586-45a4-9fa3-e8120388573d"},
          {"reference": "urn:uuid:e4606343-28b0-43b0-957a-ad8f9787c57e"},
          {"reference": "urn:uuid:a5d416eb-0630-4287-9a57-cad1021260f3"},
          {"reference": "urn:uuid:477469bb-a482-4e83-a6ab-164da45f1ba2"},
          {"reference": "urn:uuid:c4f3de97-85b5-44f7-aa1c-91dbbcc536d7"},
          {"reference": "urn:uuid:a50793e6-7cf2-4f1e-844e-ddc99c9428e5"},
          {"reference": "urn:uuid:42f3b4f0-533a-4cac-8eee-6cbd92c7c3b2"}
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:01973411-10af-470e-b31b-69f2adbff89b",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "4537-7",
              "display": "Blutsenkung 1h"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:0a247fb6-33e2-412c-b5f4-08644230a833"}
        ],
        "valueQuantity": {
          "value": 33,
          "unit": "mm",
          "system": "http://unitsofmeasure.org",
          "code": "mm"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "H",
                "display": "High"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 1,
              "unit": "mm",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 22,
              "unit": "mm",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:0a247fb6-33e2-412c-b5f4-08644230a833",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:a5fe02d3-abf7-42b5-85ba-c2d3c484f1cb",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "18184-2",
              "display": "Blutsenkung 2h"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:13568ce7-3e99-4c7f-9569-83846849d6f3"}
        ],
        "valueQuantity": {
          "value": 56,
          "unit": "mm",
          "system": "http://unitsofmeasure.org",
          "code": "mm"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "H",
                "display": "High"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 2,
              "unit": "mm",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 35,
              "unit": "mm",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:13568ce7-3e99-4c7f-9569-83846849d6f3",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:db309359-686a-4cbe-9422-e0fb7fa2d0ae",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "2823-3",
              "display": "Kalium"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:008ea158-c80f-48e2-b945-f9a7e4264425"}
        ],
        "valueQuantity": {
          "value": 4.96,
          "unit": "mmol/L",
          "system": "http://unitsofmeasure.org",
          "code": "mmol/L"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 3.50,
              "unit": "mmol/L",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 5.30,
              "unit": "mmol/L",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:008ea158-c80f-48e2-b945-f9a7e4264425",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:4e7f6c13-69e9-4faf-9cda-03236132786e",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "2951-2",
              "display": "Natrium"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:929430e5-e9ff-4255-8352-6724d7303881"}
        ],
        "valueQuantity": {
          "value": 137,
          "unit": "mmol/L",
          "system": "http://unitsofmeasure.org",
          "code": "mmol/L"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 135,
              "unit": "mmol/L",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 150,
              "unit": "mmol/L",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:929430e5-e9ff-4255-8352-6724d7303881",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:08a3079e-ddee-4932-85ea-022f11d31a1a",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "2075-0",
              "display": "Chlorid"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:fccaf6c4-c932-4174-8ad3-f3c120b49922"}
        ],
        "valueQuantity": {
          "value": 105,
          "unit": "mmol/L",
          "system": "http://unitsofmeasure.org",
          "code": "mmol/L"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 95,
              "unit": "mmol/L",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 110,
              "unit": "mmol/L",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:fccaf6c4-c932-4174-8ad3-f3c120b49922",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:a4476ab7-0da5-4a26-b32f-7c72dbd3df11",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "2000-8",
              "display": "Calcium"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:7364f48e-b3c5-45ca-beec-023a24d4b799"}
        ],
        "valueQuantity": {
          "value": 2.71,
          "unit": "mmol/L",
          "system": "http://unitsofmeasure.org",
          "code": "mmol/L"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "H",
                "display": "High"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 2.15,
              "unit": "mmol/L",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 2.60,
              "unit": "mmol/L",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:7364f48e-b3c5-45ca-beec-023a24d4b799",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:54517fd3-db13-4555-bb73-0c316e45073c",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "2157-6",
              "display":
                  "Creatine kinase [Enzymatic activity/volume] in Serum or Plasma"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:9d4e899c-6b96-44d7-b788-fcde029ad956"}
        ],
        "valueQuantity": {
          "value": 142,
          "unit": "[IU]/L",
          "system": "http://unitsofmeasure.org",
          "code": "[IU]/L"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 0,
              "unit": "[IU]/L",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 170,
              "unit": "[IU]/L",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:9d4e899c-6b96-44d7-b788-fcde029ad956",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:a7ea349e-9ced-44a6-aaff-be56ffa04586",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "10839-9",
              "display": "Troponin I"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:075e50b2-cbc4-4f6d-854f-66cb3517a2fb"}
        ],
        "valueQuantity": {
          "value": 0.01,
          "unit": "ng/L",
          "system": "http://unitsofmeasure.org",
          "code": "ng/L"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 0.00,
              "unit": "ng/L",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 0.04,
              "unit": "ng/L",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:075e50b2-cbc4-4f6d-854f-66cb3517a2fb",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:078730ca-8bac-4f76-9a5d-1e5ee49e889b",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "1920-8",
              "display": "ASAT (GOT)"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:f072253e-270f-48dc-bd19-dfb1ca8c79ec"}
        ],
        "valueQuantity": {
          "value": 28,
          "unit": "[IU]/L",
          "system": "http://unitsofmeasure.org",
          "code": "[IU]/L"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 0,
              "unit": "[IU]/L",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 38,
              "unit": "[IU]/L",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:f072253e-270f-48dc-bd19-dfb1ca8c79ec",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:a06b9f78-d9a8-4008-9fa6-38819e03ddc3",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "1742-6",
              "display": "ALAT (GPT)"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:215d89f4-c612-40cd-96f4-6475d8a5bee8"}
        ],
        "valueQuantity": {
          "value": 25,
          "unit": "[IU]/L",
          "system": "http://unitsofmeasure.org",
          "code": "[IU]/L"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 0,
              "unit": "[IU]/L",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 41,
              "unit": "[IU]/L",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:215d89f4-c612-40cd-96f4-6475d8a5bee8",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:097e2a3f-f1b9-4f10-bdc1-0e7a26b255a0",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "2324-2",
              "display": "Gamma-GT"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:9aaa1da7-6930-44ac-990f-87bbc8e40e24"}
        ],
        "valueQuantity": {
          "value": 21,
          "unit": "[IU]/L",
          "system": "http://unitsofmeasure.org",
          "code": "[IU]/L"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 0,
              "unit": "[IU]/L",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 66,
              "unit": "[IU]/L",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:9aaa1da7-6930-44ac-990f-87bbc8e40e24",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:253bfee9-7336-45d8-b57f-1312715132b2",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "6768-6",
              "display": "Alk.Phosphatase (AP)"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:b599f35a-a3fe-4a77-b277-893082902ede"}
        ],
        "valueQuantity": {
          "value": 54,
          "unit": "[IU]/L",
          "system": "http://unitsofmeasure.org",
          "code": "[IU]/L"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 40,
              "unit": "[IU]/L",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 129,
              "unit": "[IU]/L",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:b599f35a-a3fe-4a77-b277-893082902ede",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:46adb3a5-cd07-4a5f-87c3-3c3cb912905e",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {"system": "http://loinc.org", "code": "2498-4", "display": "Eisen"}
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:93351dba-4411-43ba-9ef1-e3bcde48d326"}
        ],
        "valueQuantity": {
          "value": 91,
          "unit": "ug/dL",
          "system": "http://unitsofmeasure.org",
          "code": "ug/dL"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 80,
              "unit": "ug/dL",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 150,
              "unit": "ug/dL",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:93351dba-4411-43ba-9ef1-e3bcde48d326",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:610dbaa2-dfcf-44eb-8f5d-4972999f2505",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "3034-6",
              "display": "Transferrin"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:0e398181-e960-48cc-992b-adbffb3dfd4e"}
        ],
        "valueQuantity": {
          "value": 2.1,
          "unit": "g/L",
          "system": "http://unitsofmeasure.org",
          "code": "g/L"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 2,
              "unit": "g/L",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 3.6,
              "unit": "g/L",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:0e398181-e960-48cc-992b-adbffb3dfd4e",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:3a340371-6586-45a4-9fa3-e8120388573d",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "2505-6",
              "display": "Transferrinsättigung"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:a4378e99-99a1-4f0a-8031-4d22fb309a54"}
        ],
        "valueQuantity": {
          "value": 30.7,
          "unit": "%",
          "system": "http://unitsofmeasure.org",
          "code": "%"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 16,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 45,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:a4378e99-99a1-4f0a-8031-4d22fb309a54",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:e4606343-28b0-43b0-957a-ad8f9787c57e",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "2276-4",
              "display": "Ferritin"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:5e0d53d3-d29b-434a-848d-2617a8bc551b"}
        ],
        "valueQuantity": {
          "value": 724,
          "unit": "ug/L",
          "system": "http://unitsofmeasure.org",
          "code": "ug/L"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "HH",
                "display": "Critical high"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 15,
              "unit": "ug/L",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 400,
              "unit": "ug/L",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:5e0d53d3-d29b-434a-848d-2617a8bc551b",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:a5d416eb-0630-4287-9a57-cad1021260f3",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "4548-4",
              "display": "Hämoglobin A1c"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:218191fa-b691-4bdb-935d-3c56b42b5683"}
        ],
        "valueQuantity": {
          "value": 1.0,
          "unit": "%",
          "system": "http://unitsofmeasure.org",
          "code": "%"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 4.4,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 6.4,
              "unit": "%",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:218191fa-b691-4bdb-935d-3c56b42b5683",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:477469bb-a482-4e83-a6ab-164da45f1ba2",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "2093-3",
              "display": "Cholesterin"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:d3cdd806-19c4-4406-83c1-2768ca2eb115"}
        ],
        "valueQuantity": {
          "value": 171,
          "unit": "mg/dL",
          "system": "http://unitsofmeasure.org",
          "code": "mg/dL"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "high": {
              "value": 201,
              "unit": "mg/dL",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:d3cdd806-19c4-4406-83c1-2768ca2eb115",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:c4f3de97-85b5-44f7-aa1c-91dbbcc536d7",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "2085-9",
              "display": "HDL-Cholesterin"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:d0819f02-6b5d-42fd-8bdb-2a14eee2618b"}
        ],
        "valueQuantity": {
          "value": 36,
          "unit": "mg/dL",
          "system": "http://unitsofmeasure.org",
          "code": "mg/dL"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "L",
                "display": "Low"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 65,
              "unit": "mg/dL",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:d0819f02-6b5d-42fd-8bdb-2a14eee2618b",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:a50793e6-7cf2-4f1e-844e-ddc99c9428e5",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "2089-1",
              "display": "LDL-Cholesterin"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:8f871045-bb83-4442-ba2c-d10985946161"}
        ],
        "valueQuantity": {
          "value": 116,
          "unit": "mg/dL",
          "system": "http://unitsofmeasure.org",
          "code": "mg/dL"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "high": {
              "value": 155,
              "unit": "mg/dL",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:8f871045-bb83-4442-ba2c-d10985946161",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:42f3b4f0-533a-4cac-8eee-6cbd92c7c3b2",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "2571-8",
              "display": "Triglyceride"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:faa24735-938d-456f-a693-5cf9c3dab79c"}
        ],
        "valueQuantity": {
          "value": 98,
          "unit": "mg/dL",
          "system": "http://unitsofmeasure.org",
          "code": "mg/dL"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "high": {
              "value": 200,
              "unit": "mg/dL",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:faa24735-938d-456f-a693-5cf9c3dab79c",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:e53ce670-a41f-4795-a196-33d04722acee",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:5e2db3ff-55f6-42ff-a570-33ed49f19f6b",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.5.11",
              "code": "05180",
              "display": "Proteindiagnostik"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:ddfd5940-8751-426d-9fd7-b9beaa47b55a"}
        ],
        "hasMember": [
          {"reference": "urn:uuid:621a420f-870c-4f73-b0c0-13196296a64e"},
          {"reference": "urn:uuid:b883390c-5ad2-47aa-aecc-f4386a503479"},
          {"reference": "urn:uuid:f34b5b6d-8a44-476f-846d-a2793500fca7"},
          {"reference": "urn:uuid:7102725e-7dab-4bb3-afa7-46c24c827b66"},
          {"reference": "urn:uuid:ac11149c-5528-430b-8d99-6b6f6d8137b1"}
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:621a420f-870c-4f73-b0c0-13196296a64e",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "1751-7",
              "display": "Albumin"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:f5b32d25-4905-4886-b14f-c90ddde4398e"}
        ],
        "valueQuantity": {
          "value": 39.7,
          "unit": "g/L",
          "system": "http://unitsofmeasure.org",
          "code": "g/L"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "L",
                "display": "Low"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 41.9,
              "unit": "g/L",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 53.5,
              "unit": "g/L",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:f5b32d25-4905-4886-b14f-c90ddde4398e",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:b883390c-5ad2-47aa-aecc-f4386a503479",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "2865-4",
              "display": "Alpha-1-Globulin"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:b6830287-2dbb-421f-8379-e524916c4f88"}
        ],
        "valueQuantity": {
          "value": 1.9,
          "unit": "g/L",
          "system": "http://unitsofmeasure.org",
          "code": "g/L"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 1.0,
              "unit": "g/L",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 2.1,
              "unit": "g/L",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:b6830287-2dbb-421f-8379-e524916c4f88",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:f34b5b6d-8a44-476f-846d-a2793500fca7",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "2868-8",
              "display": "Alpha-2-Globulin"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:a4c3f7bf-8d7f-4d8a-b0bc-8f32afbfb5ba"}
        ],
        "valueQuantity": {
          "value": 8.5,
          "unit": "g/L",
          "system": "http://unitsofmeasure.org",
          "code": "g/L"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "H",
                "display": "High"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 5.1,
              "unit": "g/L",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 8.1,
              "unit": "g/L",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:a4c3f7bf-8d7f-4d8a-b0bc-8f32afbfb5ba",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:7102725e-7dab-4bb3-afa7-46c24c827b66",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "2871-2",
              "display": "Beta-Globulin"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:f1432f97-70a4-4b7f-8ed2-93ba45a50c0c"}
        ],
        "valueQuantity": {
          "value": 7.1,
          "unit": "g/L",
          "system": "http://unitsofmeasure.org",
          "code": "g/L"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 4.7,
              "unit": "g/L",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 9.2,
              "unit": "g/L",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:f1432f97-70a4-4b7f-8ed2-93ba45a50c0c",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:ac11149c-5528-430b-8d99-6b6f6d8137b1",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "2874-6",
              "display": "Gamma-Globulin"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T07:56:06+01:00",
        "performer": [
          {"reference": "urn:uuid:1a0599e5-8e1f-41d7-9e89-2243fc3304d7"}
        ],
        "valueQuantity": {
          "value": 8.5,
          "unit": "g/L",
          "system": "http://unitsofmeasure.org",
          "code": "g/L"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 4.7,
              "unit": "g/L",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 12.2,
              "unit": "g/L",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:1a0599e5-8e1f-41d7-9e89-2243fc3304d7",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:ddfd5940-8751-426d-9fd7-b9beaa47b55a",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:47f65361-ea25-466c-a2d2-54d40c78178c",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:3202055f-c331-424f-bd37-7c16e8313323",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.5.11",
              "code": "600",
              "display": "Hormone/Vitamine/Tumormarker"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T08:14:06+01:00",
        "performer": [
          {"reference": "urn:uuid:dbf99f9b-c879-43f1-8631-c90e349bac3a"}
        ],
        "hasMember": [
          {"reference": "urn:uuid:628b6ef7-8a24-48be-9dde-a0fddf68b15c"},
          {"reference": "urn:uuid:98f2a90c-03b0-43cc-9a48-c2b33bbf44d2"}
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:628b6ef7-8a24-48be-9dde-a0fddf68b15c",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.5.11",
              "code": "06330",
              "display": "Hormone"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T08:14:06+01:00",
        "performer": [
          {"reference": "urn:uuid:d5f0be68-9410-4137-902e-dd3e89e1435c"}
        ],
        "hasMember": [
          {"reference": "urn:uuid:be3066b4-e9c3-4b8b-a8e0-9e5c36927166"},
          {"reference": "urn:uuid:8826cc2e-fb73-4833-80d1-b5a7de26fe51"},
          {"reference": "urn:uuid:3ecd9970-90d1-4d04-bda3-217f55c15e03"},
          {"reference": "urn:uuid:d165c145-d217-4cb7-894b-16405fd8ae19"},
          {"reference": "urn:uuid:4d2903a4-fc7f-42b3-b591-2c2837700395"}
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:be3066b4-e9c3-4b8b-a8e0-9e5c36927166",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "3016-3",
              "display": "TSH SerPl-aCnc"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T08:14:06+01:00",
        "performer": [
          {"reference": "urn:uuid:5274555a-da9e-430d-b3d7-af8a9939e114"}
        ],
        "valueQuantity": {
          "value": 1.00,
          "unit": "u[IU]/mL",
          "system": "http://unitsofmeasure.org",
          "code": "u[IU]/mL"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 0.49,
              "unit": "u[IU]/mL",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 4.67,
              "unit": "u[IU]/mL",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:5274555a-da9e-430d-b3d7-af8a9939e114",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:8826cc2e-fb73-4833-80d1-b5a7de26fe51",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "3026-2",
              "display": "T4 SerPl-mCnc"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T08:14:06+01:00",
        "performer": [
          {"reference": "urn:uuid:7b635129-7e67-4f62-8f9e-f296404ad2bb"}
        ],
        "valueQuantity": {
          "value": 1.00,
          "unit": "ng/mL",
          "system": "http://unitsofmeasure.org",
          "code": "ng/mL"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "LL",
                "display": "Critical low"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 57.92,
              "unit": "ng/mL",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 154.44,
              "unit": "ng/mL",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:7b635129-7e67-4f62-8f9e-f296404ad2bb",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:3ecd9970-90d1-4d04-bda3-217f55c15e03",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "3024-7",
              "display": "Freies T4"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T08:14:06+01:00",
        "performer": [
          {"reference": "urn:uuid:d8698d18-7acb-43fc-8d32-0d127db6a6cd"}
        ],
        "valueQuantity": {
          "value": 1.00,
          "unit": "ng/dL",
          "system": "http://unitsofmeasure.org",
          "code": "ng/dL"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 0.71,
              "unit": "ng/dL",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 1.85,
              "unit": "ng/dL",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:d8698d18-7acb-43fc-8d32-0d127db6a6cd",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:d165c145-d217-4cb7-894b-16405fd8ae19",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "3053-6",
              "display": "T3 SerPl-mCnc"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T08:14:06+01:00",
        "performer": [
          {"reference": "urn:uuid:f572d862-8eaf-43a4-b0a7-f7241ad7397b"}
        ],
        "valueQuantity": {
          "value": 1.00,
          "unit": "ng/mL",
          "system": "http://unitsofmeasure.org",
          "code": "ng/mL"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 0.45,
              "unit": "ng/mL",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 1.37,
              "unit": "ng/mL",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:f572d862-8eaf-43a4-b0a7-f7241ad7397b",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:4d2903a4-fc7f-42b3-b591-2c2837700395",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "3051-0",
              "display": "Freies T3"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T08:14:06+01:00",
        "performer": [
          {"reference": "urn:uuid:6c6a6b6a-63d3-4c8a-a6e5-cac6b6a4ba6e"}
        ],
        "valueQuantity": {
          "value": 1.00,
          "unit": "pg/mL",
          "system": "http://unitsofmeasure.org",
          "code": "pg/mL"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "L",
                "display": "Low"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 1.45,
              "unit": "pg/mL",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 3.48,
              "unit": "pg/mL",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:6c6a6b6a-63d3-4c8a-a6e5-cac6b6a4ba6e",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:d5f0be68-9410-4137-902e-dd3e89e1435c",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:98f2a90c-03b0-43cc-9a48-c2b33bbf44d2",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.5.11",
              "code": "06340",
              "display": "Vitamine"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T08:14:06+01:00",
        "performer": [
          {"reference": "urn:uuid:ca409de4-ed63-4053-a158-75baf66986fc"}
        ],
        "hasMember": [
          {"reference": "urn:uuid:9d0d223d-327c-4f7d-87cd-6fa79790b200"},
          {"reference": "urn:uuid:000317d8-71cd-45a9-ab4f-274d1b808d51"},
          {"reference": "urn:uuid:d4143036-fc28-4fd9-baf3-ba57454959cd"}
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:9d0d223d-327c-4f7d-87cd-6fa79790b200",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "2284-8",
              "display": "Folsäure"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T08:14:06+01:00",
        "performer": [
          {"reference": "urn:uuid:0042ad0c-ca12-4552-9468-7b712e88252e"}
        ],
        "valueQuantity": {
          "value": 7.3,
          "unit": "ng/mL",
          "system": "http://unitsofmeasure.org",
          "code": "ng/mL"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 4.6,
              "unit": "ng/mL",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 18.7,
              "unit": "ng/mL",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:0042ad0c-ca12-4552-9468-7b712e88252e",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:000317d8-71cd-45a9-ab4f-274d1b808d51",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "2132-9",
              "display": "Vit B12 SerPl-mCnc"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T08:14:06+01:00",
        "performer": [
          {"reference": "urn:uuid:7d9ee126-e09c-4c35-9143-2b0786fbf161"}
        ],
        "valueQuantity": {
          "value": 366,
          "unit": "pmol/L",
          "system": "http://unitsofmeasure.org",
          "code": "pmol/L"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 141,
              "unit": "pmol/L",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 489,
              "unit": "pmol/L",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:7d9ee126-e09c-4c35-9143-2b0786fbf161",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:d4143036-fc28-4fd9-baf3-ba57454959cd",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.99.107",
              "code": "VB15",
              "display": "Vitamin B15"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-12-01T08:14:06+01:00",
        "performer": [
          {"reference": "urn:uuid:427d54b1-69b6-422f-9108-b990425747ff"}
        ],
        "valueQuantity": {
          "value": 390,
          "unit": "pmol/L",
          "system": "http://unitsofmeasure.org",
          "code": "pmol/L"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "N",
                "display": "normal"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 290,
              "unit": "pmol/L",
              "system": "http://unitsofmeasure.org"
            },
            "high": {
              "value": 490,
              "unit": "pmol/L",
              "system": "http://unitsofmeasure.org"
            },
            "type": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                  "code": "normal",
                  "display": "Normal Range"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:427d54b1-69b6-422f-9108-b990425747ff",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:ca409de4-ed63-4053-a158-75baf66986fc",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:dbf99f9b-c879-43f1-8631-c90e349bac3a",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Amadeus Spital - Labor",
        "telecom": [
          {"system": "phone", "value": "+43.1.3453446.0"},
          {"system": "fax", "value": "+43.1.3453446.4674"},
          {"system": "email", "value": "info@amadeusspital.at"},
          {"system": "url", "value": "//www.amadeusspital.at"}
        ],
        "address": [
          {
            "line": ["Währinger Gürtel 18-20"],
            "city": "Wien",
            "postalCode": "1090",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:cf953066-ed0a-48d5-895f-2ef3172d9f2c",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "urn:oid:2.16.840.1.113883.6.1",
              "code": "26436-6",
              "display": "LABORATORY STUDIES"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-06-16T10:20:00+02:00",
        "hasMember": [
          {"reference": "urn:uuid:2e8b4ecb-3e10-4c24-9559-f8d6da53bb93"}
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:2e8b4ecb-3e10-4c24-9559-f8d6da53bb93",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "urn:oid:2.16.840.1.113883.6.96",
              "code": "836382004",
              "display": "Masern Impfstoff: Serologie"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-06-16T10:20:00+02:00",
        "hasMember": [
          {"reference": "urn:uuid:cfd7ff67-cfa7-40ee-9c7a-ed02228864b3"}
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:cfd7ff67-cfa7-40ee-9c7a-ed02228864b3",
      "resource": {
        "resourceType": "Observation",
        "language": "de",
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "7961-6",
              "display": "Masern AK qn."
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "effectiveDateTime": "2016-06-16T10:20:00+02:00",
        "valueQuantity": {
          "value": 0.07,
          "unit": "[IU]/mL",
          "system": "http://unitsofmeasure.org",
          "code": "[IU]/mL"
        },
        "interpretation": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code": "NEG",
                "display": "negative"
              }
            ]
          }
        ],
        "referenceRange": [
          {
            "low": {
              "value": 0.16,
              "unit": "[IU]/mL",
              "system": "http://unitsofmeasure.org"
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:768eb9cb-00f3-4ab1-bfc2-ff835cb3b89b",
      "resource": {
        "resourceType": "AllergyIntolerance",
        "language": "de",
        "clinicalStatus": {
          "coding": [
            {
              "system":
                  "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
              "code": "active",
              "display": "Active"
            }
          ]
        },
        "verificationStatus": {
          "coding": [
            {
              "system":
                  "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
              "code": "confirmed",
              "display": "Confirmed"
            }
          ]
        },
        "type": "allergy",
        "code": {
          "coding": [
            {"display": "Medikamentenunverträglichkeit: Penicillin"}
          ]
        },
        "patient": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "_onsetDateTime": {
          "extension": [
            {
              "url":
                  "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
              "valueCode": "unknown"
            }
          ]
        }
      }
    },
    {
      "fullUrl": "urn:uuid:a3cc0d2f-55b7-4354-840a-4738e395ae2e",
      "resource": {
        "resourceType": "Immunization",
        "language": "de",
        "status": "completed",
        "vaccineCode": {
          "coding": [
            {"system": "http://www.whocc.no/atc", "code": "J07BA01"},
            {
              "system": "urn:oid:1.2.40.0.34.4.16.1",
              "code": "2427872",
              "display": "ENCEPUR FSPR 0,25ML KIND"
            },
            {"system": "http://snomed.info/sct", "code": "836403007"}
          ]
        },
        "patient": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "occurrenceDateTime": "2016-06-17T12:15:00+02:00",
        "lotNumber": "6232165-5687",
        "performer": [
          {
            "actor": {
              "reference": "urn:uuid:3090df71-4321-45e3-b6b3-429203ae8cd8"
            }
          }
        ],
        "protocolApplied": [
          {
            "targetDisease": [
              {
                "coding": [
                  {"display": "Frühsommer-Meningoencephalitis"}
                ]
              }
            ],
            "doseNumberPositiveInt": 1
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:3090df71-4321-45e3-b6b3-429203ae8cd8",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Praxis Dr. Hummel",
        "telecom": [
          {"system": "phone", "value": "+43.6138.3453446.0", "use": "work"},
          {"system": "fax", "value": "+43.6138.3453446.4674", "use": "work"}
        ],
        "address": [
          {
            "line": ["Mozartgasse 1-7"],
            "city": "St.Wolfgang",
            "postalCode": "5350",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:a9660d56-6c4a-42fe-a661-1842e5449dfe",
      "resource": {
        "resourceType": "Immunization",
        "language": "de",
        "status": "completed",
        "vaccineCode": {
          "coding": [
            {"system": "http://www.whocc.no/atc", "code": "J07BA01"},
            {
              "system": "urn:oid:1.2.40.0.34.4.16.1",
              "code": "2427872",
              "display": "ENCEPUR FSPR 0,25ML KIND"
            },
            {"system": "http://snomed.info/sct", "code": "836403007"}
          ]
        },
        "patient": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "occurrenceDateTime": "2016-09-17T15:15:00+02:00",
        "performer": [
          {
            "actor": {
              "reference": "urn:uuid:1976551f-5a45-4049-a2f8-50db488eb574"
            }
          }
        ],
        "protocolApplied": [
          {
            "targetDisease": [
              {
                "coding": [
                  {"display": "Frühsommer-Meningoencephalitis"}
                ]
              }
            ],
            "doseNumberPositiveInt": 2
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:1976551f-5a45-4049-a2f8-50db488eb574",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Praxis Dr. Hummel",
        "telecom": [
          {"system": "phone", "value": "+43.6138.3453446.0", "use": "work"},
          {"system": "fax", "value": "+43.6138.3453446.4674", "use": "work"}
        ],
        "address": [
          {
            "line": ["Mozartgasse 1-7"],
            "city": "St.Wolfgang",
            "postalCode": "5350",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:d1f9b76c-5e99-41cb-a304-5d49ed94f829",
      "resource": {
        "resourceType": "Immunization",
        "language": "de",
        "status": "completed",
        "vaccineCode": {
          "coding": [
            {"system": "http://www.whocc.no/atc", "code": "J07BA01"},
            {
              "system": "urn:oid:1.2.40.0.34.4.16.1",
              "code": "2427872",
              "display": "ENCEPUR FSPR 0,25ML KIND"
            },
            {"system": "http://snomed.info/sct", "code": "836403007"}
          ]
        },
        "patient": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "occurrenceDateTime": "2017-09-17T10:15:00+02:00",
        "performer": [
          {
            "actor": {
              "reference": "urn:uuid:dec01d56-18fd-43f5-a489-fff965bedf86"
            }
          }
        ],
        "protocolApplied": [
          {
            "targetDisease": [
              {
                "coding": [
                  {"display": "Frühsommer-Meningoencephalitis"}
                ]
              }
            ],
            "doseNumberPositiveInt": 3
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:dec01d56-18fd-43f5-a489-fff965bedf86",
      "resource": {
        "resourceType": "Organization",
        "identifier": [
          {
            "value": "urn:oid:1.2.40.0.34.99.4613",
            "assigner": {"display": "GDA Index"}
          }
        ],
        "name": "Praxis Dr. Hummel",
        "telecom": [
          {"system": "phone", "value": "+43.6138.3453446.0", "use": "work"},
          {"system": "fax", "value": "+43.6138.3453446.4674", "use": "work"}
        ],
        "address": [
          {
            "line": ["Mozartgasse 1-7"],
            "city": "St.Wolfgang",
            "postalCode": "5350",
            "country": "AUT"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:80579ab0-45f9-45e2-bc38-90341f06229d",
      "resource": {
        "resourceType": "Condition",
        "clinicalStatus": {
          "coding": [
            {
              "system":
                  "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code": "resolved"
            }
          ]
        },
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/condition-category",
                "code": "problem-list-item",
                "display": "Problem List Item"
              },
              {
                "system": "http://loinc.org",
                "code": "75326-9",
                "display": "Problem"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.3.1.2.99.8888",
              "code": "50052",
              "display": "Körperliche Mobilität, beeinträchtigt"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "onsetDateTime": "2013-01-11"
      }
    },
    {
      "fullUrl": "urn:uuid:5c6fece7-c553-41e0-a69f-4d22e2769547",
      "resource": {
        "resourceType": "Condition",
        "clinicalStatus": {
          "coding": [
            {
              "system":
                  "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code": "resolved"
            }
          ]
        },
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/condition-category",
                "code": "problem-list-item",
                "display": "Problem List Item"
              },
              {
                "system": "http://loinc.org",
                "code": "75326-9",
                "display": "Problem"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.5.171",
              "code": "M25.46",
              "display": "Gelenkerguss: Unterschenkel"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "onsetDateTime": "2016-07-30",
        "abatementDateTime": "2016-08-17"
      }
    },
    {
      "fullUrl": "urn:uuid:c6ec9665-6162-495f-b9f7-e013aa387040",
      "resource": {
        "resourceType": "Condition",
        "clinicalStatus": {
          "coding": [
            {
              "system":
                  "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code": "resolved"
            }
          ]
        },
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/condition-category",
                "code": "problem-list-item",
                "display": "Problem List Item"
              },
              {
                "system": "http://loinc.org",
                "code": "75326-9",
                "display": "Problem"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "urn:oid:1.2.40.0.34.5.171",
              "code": "M54.9",
              "display": "Rückenschmerzen, nicht näher bezeichnet"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
        },
        "onsetDateTime": "2014-01-01"
      }
    }
  ]
});

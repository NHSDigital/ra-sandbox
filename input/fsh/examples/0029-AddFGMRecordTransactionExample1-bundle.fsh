Instance: AddFGMRecordTransactionExample1
InstanceOf: Bundle
Title: "FGM Example of adding a record with a Transaction"
Usage: #example
* type = #transaction
* entry[0].fullUrl = "urn:uuid:9580a1de-f418-432b-85da-eba186b7cfa5"
* entry[=].resource = PatientExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient?identifier=9912003888"
* entry[+].fullUrl = "urn:uuid:cd1de51b-2007-4409-8a96-cfcc1e0a0b6b"
* entry[=].resource = FGMConsentExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Consent?patient=urn:uuid:9580a1de-f418-432b-85da-eba186b7cfa5"
* entry[+].fullUrl = "urn:uuid:7dd8fe1e-e782-42c6-9ef4-1bebce3a43cc"
* entry[=].resource = FGMConditionExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Condition?patient=urn:uuid:9580a1de-f418-432b-85da-eba186b7cfa5"
* entry[+].fullUrl = "urn:uuid:97c6d9be-1431-4112-b99c-5cecd318ede0"
* entry[=].resource = FGMPatientFlagExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Flag/97c6d9be-1431-4112-b99c-5cecd318ede0"
* entry[+].fullUrl = "urn:uuid:38f67aa3-5ea8-4a29-9cd5-54ba7acf79a8"
* entry[=].resource = FGMFlagExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Flag/38f67aa3-5ea8-4a29-9cd5-54ba7acf79a8"

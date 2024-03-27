Instance: AddRARecordTransactionExample2
InstanceOf: Bundle
Title: "RA Example of idempotent update of a record with a Transaction"
Usage: #example
* type = #transaction
* entry[0].fullUrl = "urn:uuid:6253c43b-5cc8-4645-93b1-38e41be82a77"
* entry[=].resource = PatientExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient?identifier=9912003888"
* entry[+].fullUrl = "urn:uuid:959fbc3c-0907-419e-aa3d-ab88f2d90c5e"
* entry[=].resource = RAConsentExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Consent?patient=urn:uuid:6253c43b-5cc8-4645-93b1-38e41be82a77"
* entry[+].fullUrl = "urn:uuid:41a84a93-1c95-4162-b13c-1c617509e6e2"
* entry[=].resource = RAConditionExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Condition?patient=urn:uuid:6253c43b-5cc8-4645-93b1-38e41be82a77"
* entry[+].fullUrl = "Flag/RAPatientFlagExample1"
* entry[=].resource = RAPatientFlagExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Flag/RAPatientFlagExample1"
* entry[+].fullUrl = "Flag/RAFlagExample1"
* entry[=].resource = RAFlagExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Flag/RAFlagExample1"
* entry[+].fullUrl = "Condition/RAConditionExample2"
* entry[=].resource = RAConditionExample2
* entry[=].request.method = #PUT
* entry[=].request.url = "Condition/RAConditionExample2"
* entry[+].fullUrl = "Flag/RAFlagExample2"
* entry[=].resource = RAFlagExample2
* entry[=].request.method = #PUT
* entry[=].request.url = "Flag/RAFlagExample2"
